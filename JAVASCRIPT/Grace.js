// This is Grace exercise
(function main() {
  const fs = require("fs");
  fs.writeFile(
    "Grace_kid.js",
    "// This is Grace exercise\n(" + main.toString() + ")();\n",
    () => {}
  );
})();
