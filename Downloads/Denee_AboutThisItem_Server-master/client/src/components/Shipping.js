import React from 'react';
import moment from 'moment';

const Shipping = () => {
  return (
    <div className="innerMargins">
      <div className="innerBox">
        <div className="shippingHeader">
          Shipping options
          <p className="shippingDetails">
            Get it by {moment().add(2, 'days').calendar()} with free 2-day shipping
          </p>
        </div>
        <div className="shippingHeader">
          Shipping details
          <p className="shippingDetails">
          Estimated ship dimensions: 15.0 inches length x 15.0 inches width x 15.0 inches height
          Estimated ship weight: 5 pounds
          </p>
        </div>
        <div className="shippingHeader">
          Return details
          <p className="shippingDetails">
          This item can NOT be returned to Purrget stores.  All sales are final.
          </p>
        </div>
      </div>
    </div>
  )
}

export default Shipping;
