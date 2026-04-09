const fs = require("node:fs");
const path = require("node:path");

module.exports = () => {
  const reviewsDir = path.join(__dirname, "..", "images", "reviews");

  return fs
    .readdirSync(reviewsDir)
    .filter((file) => /\.(jpg|jpeg|png|webp)$/i.test(file))
    .sort((left, right) => Number.parseInt(left, 10) - Number.parseInt(right, 10))
    .map((file) => `/images/reviews/${file}`);
};
