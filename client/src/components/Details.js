import React from 'react';

const Details = ({cat}) => {

// Item Details tab- Highlights, Specifications, Description
  return (
    <>
      <div className="innerMargins">
        <div className="innerBox">
          <div className="highlightsHeader">Highlights</div>
          <ul className="highlightsList">
            <li className="highlightsListItem">
              Type: {cat.category}
            </li>
            <li className="highlightsListItem">
              Age: {cat.age}
            </li>
            <li className="highlightsListItem">
              Lives left: {cat.livesLeft}
            </li>
            <li className="highlightsListItem">
              Sex: {cat.sex}
            </li>
          </ul>
        </div>
      </div>
      <div className="specifications">
        <div className="specFlex">
          <div className="spec">Specifications
            <li className="specDetail">
              Size: {cat.size}
            </li>
            <li className="specDetail">
              Indoor or Outdoor: {cat.in_out}
            </li>
            <li className="specDetail">
              Dog friendly: {cat.dogFriend}
            </li>
            <li className="specDetail">
              Item Number: {cat.itemNum}
            </li>
          </div>
          <div className="descript">Description
            <div className="descriptDetail">Buy a cat today! Our cats come fully trained and house broken.  We only offer the highest quality pets with the most prestigious breeding.  Add to cart now to have your new cat shipped straight to you!</div>
          </div>
        </div>
        <div className="showMore">
          <button className="showMoreButton">Show more</button>
        </div>
      </div>

    </>
  )

};

export default Details;