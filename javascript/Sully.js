let i = 5;

(function main() {
  const fs = require("fs");
  const { exec } = require("child_process");

  if (fs.existsSync("Sully_5.js")) {
    i--;
  }

  fs.writeFile(
    `Sully_${i}.js`,
    `let i = ${i};\n\n(${main.toString()})();\n`,
    () => {}
  );

  if (i > 0) {
    console.log(`execution of Sully ${i}`);
    exec(`node Sully_${i}.js`);
  }
})();
