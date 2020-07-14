const $ = require( "jquery" )
require("slick-carousel")





// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
//const images = require.context('../images', true)
//const imagePath = (name) => images(name, true)

const init_slick = () => {
  $('.slick-modal').slick({
    infinite: false,
  });
}

export { init_slick };
