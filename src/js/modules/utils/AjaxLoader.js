export class AjaxLoader {
  constructor({ url, params, beforeSend, onSuccess, onError }) {
    this.url = url;
    this.params = params || {};
    this.data = {};
    this.beforeSend = beforeSend || async function () { };
    this.onSuccess = onSuccess || function () { };
    this.onError = onError || function () { };
    this.isFetching = false;

    // Explicitly bind this for methods that require it
    this.load = this.load.bind(this);
    this.handleError = this.handleError.bind(this);
    this.callBeforeSend = this.callBeforeSend.bind(this);
    this.fetchData = this.fetchData.bind(this);
  }

  static create({ url, params, beforeSend, onSuccess, onError }) {
    return new AjaxLoader({ url, params, beforeSend, onSuccess, onError });
  }

  _getData(data = []) {

    const formdata = new FormData();
    const preparedData = { ...data, ...this.params };

    // Checking each key and stringifying it if it's an object
    for (let key in preparedData) {
      if (preparedData[key] !== null && typeof preparedData[key] === 'object') {
        preparedData[key] = JSON.stringify(preparedData[key]);
      }
    }

    // Adding data
    Object.keys(preparedData).forEach((key) => {
      formdata.append(key, preparedData[key]);
    });

    return formdata;
  }

  async callBeforeSend() {
    try {
      await this.beforeSend();
    } catch (error) {
      this.handleError(error);
    }
  }

  handleError(error) {
    this.onError(error);
  }

  handleSuccess(data) {
    this.onSuccess(data);
  }

  fetchData(formData) {
    fetch(this.url, {
      method: "POST",
      credentials: "same-origin",
      body: formData,
    })
      .then((response) => {
        if (!response.ok) {
          this.handleError(response);
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then((data) => {
        if (data.success) {
          this.handleSuccess(data);
        } else {
          this.handleError(data);
        }
      })
      .catch((error) => {
        this.handleError(error);
      })
      .finally(() => {
        this.isFetching = false;
      });
  }

  async load(data = []) {
    try {
      if (this.isFetching) return;
      this.isFetching = true;

      const formdata = this._getData(data);
      await this.callBeforeSend();
      this.fetchData(formdata);
    } catch (error) {
      this.handleError(error);
    }
  }

}
