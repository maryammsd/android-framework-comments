graph [
  directed 1
  node [
    id 0
    label "org.json.JSONArray"
    type "class"
    comment "&#10; * A dense indexed sequence of values. Values may be any mix of&#10; * {@link JSONObject JSONObjects}, other {@link JSONArray JSONArrays}, Strings,&#10; * Booleans, Integers, Longs, Doubles, {@code null} or {@link JSONObject#NULL}.&#10; * Values may not be {@link Double#isNaN() NaNs}, {@link Double#isInfinite()&#10; * infinities}, or of any type not listed here.&#10; *&#10; * <p>{@code JSONArray} has the same type coercion behavior and&#10; * optional/mandatory accessors as {@link JSONObject}. See that class'&#10; * documentation for details.&#10; *&#10; * <p><strong>Warning:</strong> this class represents null in two incompatible&#10; * ways: the standard Java {@code null} reference, and the sentinel value {@link&#10; * JSONObject#NULL}. In particular, {@code get} fails if the requested index&#10; * holds the null reference, but succeeds if it holds {@code JSONObject.NULL}.&#10; *&#10; * <p>Instances of this class are not thread safe. Although this class is&#10; * nonfinal, it was not designed for inheritance and should not be subclassed.&#10; * In particular, self-use by overridable methods is not specified. See&#10; * <i>Effective Java</i> Item 17, &#34;Design and Document or inheritance or else&#10; * prohibit it&#34; for further information.&#10; "
  ]
  node [
    id 1
    label "public int length()"
    type "method"
    comment "&#10;     * Returns the number of values in this array.&#10;     "
  ]
  node [
    id 2
    label "public JSONArray put(boolean value)"
    type "method"
    comment "&#10;     * Appends {@code value} to the end of this array.&#10;     *&#10;     * @return this array.&#10;     "
  ]
  node [
    id 3
    label "public JSONArray put(double value) throws JSONException"
    type "method"
    comment "&#10;     * Appends {@code value} to the end of this array.&#10;     *&#10;     * @param value a finite value. May not be {@link Double#isNaN() NaNs} or&#10;     *     {@link Double#isInfinite() infinities}.&#10;     * @return this array.&#10;     "
  ]
  node [
    id 4
    label "isNaN()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label "isInfinite()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 6
    label "public JSONArray put(int value)"
    type "method"
    comment "&#10;     * Appends {@code value} to the end of this array.&#10;     *&#10;     * @return this array.&#10;     "
  ]
  node [
    id 7
    label "public JSONArray put(long value)"
    type "method"
    comment "&#10;     * Appends {@code value} to the end of this array.&#10;     *&#10;     * @return this array.&#10;     "
  ]
  node [
    id 8
    label "public JSONArray put(Object value)"
    type "method"
    comment "&#10;     * Appends {@code value} to the end of this array.&#10;     *&#10;     * @param value a {@link JSONObject}, {@link JSONArray}, String, Boolean,&#10;     *     Integer, Long, Double, {@link JSONObject#NULL}, or {@code null}. May&#10;     *     not be {@link Double#isNaN() NaNs} or {@link Double#isInfinite()&#10;     *     infinities}. Unsupported values are not permitted and will cause the&#10;     *     array to be in an inconsistent state.&#10;     * @return this array.&#10;     "
  ]
  node [
    id 9
    label "JSONObject"
  ]
  node [
    id 10
    label "JSONArray"
  ]
  node [
    id 11
    label "NULL"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 12
    label " void checkedPut(Object value) throws JSONException"
    type "method"
    comment "&#10;     * Same as {@link #put}, with added validity checks.&#10;     "
  ]
  node [
    id 13
    label "put"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 14
    label "public JSONArray put(int index, boolean value) throws JSONException"
    type "method"
    comment "&#10;     * Sets the value at {@code index} to {@code value}, null padding this array&#10;     * to the required length if necessary. If a value already exists at {@code&#10;     * index}, it will be replaced.&#10;     *&#10;     * @return this array.&#10;     "
  ]
  node [
    id 15
    label "public JSONArray put(int index, double value) throws JSONException"
    type "method"
    comment "&#10;     * Sets the value at {@code index} to {@code value}, null padding this array&#10;     * to the required length if necessary. If a value already exists at {@code&#10;     * index}, it will be replaced.&#10;     *&#10;     * @param value a finite value. May not be {@link Double#isNaN() NaNs} or&#10;     *     {@link Double#isInfinite() infinities}.&#10;     * @return this array.&#10;     "
  ]
  node [
    id 16
    label "public JSONArray put(int index, int value) throws JSONException"
    type "method"
    comment "&#10;     * Sets the value at {@code index} to {@code value}, null padding this array&#10;     * to the required length if necessary. If a value already exists at {@code&#10;     * index}, it will be replaced.&#10;     *&#10;     * @return this array.&#10;     "
  ]
  node [
    id 17
    label "public JSONArray put(int index, long value) throws JSONException"
    type "method"
    comment "&#10;     * Sets the value at {@code index} to {@code value}, null padding this array&#10;     * to the required length if necessary. If a value already exists at {@code&#10;     * index}, it will be replaced.&#10;     *&#10;     * @return this array.&#10;     "
  ]
  node [
    id 18
    label "public JSONArray put(int index, Object value) throws JSONException"
    type "method"
    comment "&#10;     * Sets the value at {@code index} to {@code value}, null padding this array&#10;     * to the required length if necessary. If a value already exists at {@code&#10;     * index}, it will be replaced.&#10;     *&#10;     * @param value a {@link JSONObject}, {@link JSONArray}, String, Boolean,&#10;     *     Integer, Long, Double, {@link JSONObject#NULL}, or {@code null}. May&#10;     *     not be {@link Double#isNaN() NaNs} or {@link Double#isInfinite()&#10;     *     infinities}.&#10;     * @return this array.&#10;     "
  ]
  node [
    id 19
    label "public boolean isNull(int index)"
    type "method"
    comment "&#10;     * Returns true if this array has no value at {@code index}, or if its value&#10;     * is the {@code null} reference or {@link JSONObject#NULL}.&#10;     "
  ]
  node [
    id 20
    label "public Object get(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index}.&#10;     *&#10;     * @throws JSONException if this array has no value at {@code index}, or if&#10;     *     that value is the {@code null} reference. This method returns&#10;     *     normally if the value is {@code JSONObject#NULL}.&#10;     "
  ]
  node [
    id 21
    label "public Object opt(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index}, or null if the array has no value&#10;     * at {@code index}.&#10;     "
  ]
  node [
    id 22
    label "public Object remove(int index)"
    type "method"
    comment "&#10;     * Removes and returns the value at {@code index}, or null if the array has no value&#10;     * at {@code index}.&#10;     "
  ]
  node [
    id 23
    label "public boolean getBoolean(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a boolean or can&#10;     * be coerced to a boolean.&#10;     *&#10;     * @throws JSONException if the value at {@code index} doesn't exist or&#10;     *     cannot be coerced to a boolean.&#10;     "
  ]
  node [
    id 24
    label "public boolean optBoolean(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a boolean or can&#10;     * be coerced to a boolean. Returns false otherwise.&#10;     "
  ]
  node [
    id 25
    label "public boolean optBoolean(int index, boolean fallback)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a boolean or can&#10;     * be coerced to a boolean. Returns {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 26
    label "public double getDouble(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a double or can&#10;     * be coerced to a double.&#10;     *&#10;     * @throws JSONException if the value at {@code index} doesn't exist or&#10;     *     cannot be coerced to a double.&#10;     "
  ]
  node [
    id 27
    label "public double optDouble(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a double or can&#10;     * be coerced to a double. Returns {@code NaN} otherwise.&#10;     "
  ]
  node [
    id 28
    label "public double optDouble(int index, double fallback)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a double or can&#10;     * be coerced to a double. Returns {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 29
    label "public int getInt(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is an int or&#10;     * can be coerced to an int.&#10;     *&#10;     * @throws JSONException if the value at {@code index} doesn't exist or&#10;     *     cannot be coerced to a int.&#10;     "
  ]
  node [
    id 30
    label "public int optInt(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is an int or&#10;     * can be coerced to an int. Returns 0 otherwise.&#10;     "
  ]
  node [
    id 31
    label "public int optInt(int index, int fallback)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is an int or&#10;     * can be coerced to an int. Returns {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 32
    label "public long getLong(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a long or&#10;     * can be coerced to a long.&#10;     *&#10;     * @throws JSONException if the value at {@code index} doesn't exist or&#10;     *     cannot be coerced to a long.&#10;     "
  ]
  node [
    id 33
    label "public long optLong(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a long or&#10;     * can be coerced to a long. Returns 0 otherwise.&#10;     "
  ]
  node [
    id 34
    label "public long optLong(int index, long fallback)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a long or&#10;     * can be coerced to a long. Returns {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 35
    label "public String getString(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists, coercing it if&#10;     * necessary.&#10;     *&#10;     * @throws JSONException if no such value exists.&#10;     "
  ]
  node [
    id 36
    label "public String optString(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists, coercing it if&#10;     * necessary. Returns the empty string if no such value exists.&#10;     "
  ]
  node [
    id 37
    label "public String optString(int index, String fallback)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists, coercing it if&#10;     * necessary. Returns {@code fallback} if no such value exists.&#10;     "
  ]
  node [
    id 38
    label "public JSONArray getJSONArray(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a {@code&#10;     * JSONArray}.&#10;     *&#10;     * @throws JSONException if the value doesn't exist or is not a {@code&#10;     *     JSONArray}.&#10;     "
  ]
  node [
    id 39
    label "public JSONArray optJSONArray(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a {@code&#10;     * JSONArray}. Returns null otherwise.&#10;     "
  ]
  node [
    id 40
    label "public JSONObject getJSONObject(int index) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a {@code&#10;     * JSONObject}.&#10;     *&#10;     * @throws JSONException if the value doesn't exist or is not a {@code&#10;     *     JSONObject}.&#10;     "
  ]
  node [
    id 41
    label "public JSONObject optJSONObject(int index)"
    type "method"
    comment "&#10;     * Returns the value at {@code index} if it exists and is a {@code&#10;     * JSONObject}. Returns null otherwise.&#10;     "
  ]
  node [
    id 42
    label "public JSONObject toJSONObject(JSONArray names) throws JSONException"
    type "method"
    comment "&#10;     * Returns a new object whose values are the values in this array, and whose&#10;     * names are the values in {@code names}. Names and values are paired up by&#10;     * index from 0 through to the shorter array's length. Names that are not&#10;     * strings will be coerced to strings. This method returns null if either&#10;     * array is empty.&#10;     "
  ]
  node [
    id 43
    label "public String join(String separator) throws JSONException"
    type "method"
    comment "&#10;     * Returns a new string by alternating this array's values with {@code&#10;     * separator}. This array's string values are quoted and have their special&#10;     * characters escaped. For example, the array containing the strings '12&#34;&#10;     * pizza', 'taco' and 'soda' joined on '+' returns this:&#10;     * <pre>&#34;12\&#34; pizza&#34;+&#34;taco&#34;+&#34;soda&#34;</pre>&#10;     "
  ]
  node [
    id 44
    label "public String toString()"
    type "method"
    comment "&#10;     * Encodes this array as a compact JSON string, such as:&#10;     * <pre>[94043,90210]</pre>&#10;     "
  ]
  node [
    id 45
    label "public String toString(int indentSpaces) throws JSONException"
    type "method"
    comment "&#10;     * Encodes this array as a human readable JSON string for debugging, such&#10;     * as:&#10;     * <pre>&#10;     * [&#10;     *     94043,&#10;     *     90210&#10;     * ]</pre>&#10;     *&#10;     * @param indentSpaces the number of spaces to indent for each level of&#10;     *     nesting.&#10;     "
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 2
    type "child"
  ]
  edge [
    source 0
    target 3
    type "child"
  ]
  edge [
    source 0
    target 6
    type "child"
  ]
  edge [
    source 0
    target 7
    type "child"
  ]
  edge [
    source 0
    target 8
    type "child"
  ]
  edge [
    source 0
    target 12
    type "child"
  ]
  edge [
    source 0
    target 14
    type "child"
  ]
  edge [
    source 0
    target 15
    type "child"
  ]
  edge [
    source 0
    target 16
    type "child"
  ]
  edge [
    source 0
    target 17
    type "child"
  ]
  edge [
    source 0
    target 18
    type "child"
  ]
  edge [
    source 0
    target 19
    type "child"
  ]
  edge [
    source 0
    target 20
    type "child"
  ]
  edge [
    source 0
    target 21
    type "child"
  ]
  edge [
    source 0
    target 22
    type "child"
  ]
  edge [
    source 0
    target 23
    type "child"
  ]
  edge [
    source 0
    target 24
    type "child"
  ]
  edge [
    source 0
    target 25
    type "child"
  ]
  edge [
    source 0
    target 26
    type "child"
  ]
  edge [
    source 0
    target 27
    type "child"
  ]
  edge [
    source 0
    target 28
    type "child"
  ]
  edge [
    source 0
    target 29
    type "child"
  ]
  edge [
    source 0
    target 30
    type "child"
  ]
  edge [
    source 0
    target 31
    type "child"
  ]
  edge [
    source 0
    target 32
    type "child"
  ]
  edge [
    source 0
    target 33
    type "child"
  ]
  edge [
    source 0
    target 34
    type "child"
  ]
  edge [
    source 0
    target 35
    type "child"
  ]
  edge [
    source 0
    target 36
    type "child"
  ]
  edge [
    source 0
    target 37
    type "child"
  ]
  edge [
    source 0
    target 38
    type "child"
  ]
  edge [
    source 0
    target 39
    type "child"
  ]
  edge [
    source 0
    target 40
    type "child"
  ]
  edge [
    source 0
    target 41
    type "child"
  ]
  edge [
    source 0
    target 42
    type "child"
  ]
  edge [
    source 0
    target 43
    type "child"
  ]
  edge [
    source 0
    target 44
    type "child"
  ]
  edge [
    source 0
    target 45
    type "child"
  ]
  edge [
    source 3
    target 4
    type "link"
  ]
  edge [
    source 3
    target 5
    type "link"
  ]
  edge [
    source 8
    target 4
    type "link"
  ]
  edge [
    source 8
    target 9
    type "link"
  ]
  edge [
    source 8
    target 5
    type "link"
  ]
  edge [
    source 8
    target 10
    type "link"
  ]
  edge [
    source 8
    target 11
    type "link"
  ]
  edge [
    source 12
    target 13
    type "link"
  ]
  edge [
    source 15
    target 4
    type "link"
  ]
  edge [
    source 15
    target 5
    type "link"
  ]
  edge [
    source 18
    target 4
    type "link"
  ]
  edge [
    source 18
    target 9
    type "link"
  ]
  edge [
    source 18
    target 5
    type "link"
  ]
  edge [
    source 18
    target 10
    type "link"
  ]
  edge [
    source 18
    target 11
    type "link"
  ]
  edge [
    source 19
    target 11
    type "link"
  ]
]
