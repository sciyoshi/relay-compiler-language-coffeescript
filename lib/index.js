"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = _default;

var _index = _interopRequireDefault(require("relay-compiler-language-typescript/lib/index"));

var _RelayLanguagePluginJavaScript = _interopRequireDefault(require("relay-compiler/lib/RelayLanguagePluginJavaScript"));

var _FindGraphQLTags = require("./FindGraphQLTags");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; var ownKeys = Object.keys(source); if (typeof Object.getOwnPropertySymbols === 'function') { ownKeys = ownKeys.concat(Object.getOwnPropertySymbols(source).filter(function (sym) { return Object.getOwnPropertyDescriptor(source, sym).enumerable; })); } ownKeys.forEach(function (key) { _defineProperty(target, key, source[key]); }); } return target; }

function _defineProperty(obj, key, value) { if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }

function _default() {
  return _objectSpread({}, (0, _index.default)(), {
    inputExtensions: ["js", "jsx", "coffee", "cjsx", "ts", "tsx"],
    findGraphQLTags: _FindGraphQLTags.find
  });
}

;