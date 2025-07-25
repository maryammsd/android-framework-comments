graph [
  directed 1
  node [
    id 0
    label "org.json.JSONException"
    type "class"
    comment "&#10; * Thrown to indicate a problem with the JSON API. Such problems include:&#10; * <ul>&#10; *   <li>Attempts to parse or construct malformed documents&#10; *   <li>Use of null as a name&#10; *   <li>Use of numeric types not available to JSON, such as {@link&#10; *       Double#isNaN() NaNs} or {@link Double#isInfinite() infinities}.&#10; *   <li>Lookups using an out of range index or nonexistent name&#10; *   <li>Type mismatches on lookups&#10; * </ul>&#10; *&#10; * <p>Although this is a checked exception, it is rarely recoverable. Most&#10; * callers should simply wrap this exception in an unchecked exception and&#10; * rethrow:&#10; * <pre>  public JSONArray toJSONObject() {&#10; *     try {&#10; *         JSONObject result = new JSONObject();&#10; *         ...&#10; *     } catch (JSONException e) {&#10; *         throw new RuntimeException(e);&#10; *     }&#10; * }</pre>&#10; "
  ]
]
