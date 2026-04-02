class Solution {
    /**
     * @param {string[]} strs
     * @returns {string}
     */
    encode(strs) {
        let result = "";
        for (const str of strs) {
            result += str.length + "#" + str;
        }
        return result;
    }

    /**
     * @param {string} str
     * @returns {string[]}
     */
    decode(str) {
        const res = [];
  let i = 0;

  while (i < str.length) {
    // 1. Find the '#' delimiter to parse the length
    let j = i;
    while (str[j] !== "#") {
      j++;
    }

    // 2. Parse the length and advance the index past the delimiter
    const length = parseInt(str.slice(i, j), 10);
    i = j + 1;

    // 3. Extract the actual string and update the index
    const segment = str.slice(i, i + length);
    res.push(segment);
    i += length;
  }

  return res;
    }
}
