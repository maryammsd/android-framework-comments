graph [
  directed 1
  node [
    id 0
    label "org.json.JSONObject"
    type "class"
    comment "&#10; * A modifiable set of name/value mappings. Names are unique, non-null strings.&#10; * Values may be any mix of {@link JSONObject JSONObjects}, {@link JSONArray&#10; * JSONArrays}, Strings, Booleans, Integers, Longs, Doubles or {@link #NULL}.&#10; * Values may not be {@code null}, {@link Double#isNaN() NaNs}, {@link&#10; * Double#isInfinite() infinities}, or of any type not listed here.&#10; *&#10; * <p>This class can coerce values to another type when requested.&#10; * <ul>&#10; *   <li>When the requested type is a boolean, strings will be coerced using a&#10; *       case-insensitive comparison to &#34;true&#34; and &#34;false&#34;.&#10; *   <li>When the requested type is a double, other {@link Number} types will&#10; *       be coerced using {@link Number#doubleValue() doubleValue}. Strings&#10; *       that can be coerced using {@link Double#valueOf(String)} will be.&#10; *   <li>When the requested type is an int, other {@link Number} types will&#10; *       be coerced using {@link Number#intValue() intValue}. Strings&#10; *       that can be coerced using {@link Double#valueOf(String)} will be,&#10; *       and then cast to int.&#10; *   <li><a name=&#34;lossy&#34;>When the requested type is a long, other {@link Number} types will&#10; *       be coerced using {@link Number#longValue() longValue}. Strings&#10; *       that can be coerced using {@link Double#valueOf(String)} will be,&#10; *       and then cast to long. This two-step conversion is lossy for very&#10; *       large values. For example, the string &#34;9223372036854775806&#34; yields the&#10; *       long 9223372036854775807.</a>&#10; *   <li>When the requested type is a String, other non-null values will be&#10; *       coerced using {@link String#valueOf(Object)}. Although null cannot be&#10; *       coerced, the sentinel value {@link JSONObject#NULL} is coerced to the&#10; *       string &#34;null&#34;.&#10; * </ul>&#10; *&#10; * <p>This class can look up both mandatory and optional values:&#10; * <ul>&#10; *   <li>Use <code>get<i>Type</i>()</code> to retrieve a mandatory value. This&#10; *       fails with a {@code JSONException} if the requested name has no value&#10; *       or if the value cannot be coerced to the requested type.&#10; *   <li>Use <code>opt<i>Type</i>()</code> to retrieve an optional value. This&#10; *       returns a system- or user-supplied default if the requested name has no&#10; *       value or if the value cannot be coerced to the requested type.&#10; * </ul>&#10; *&#10; * <p><strong>Warning:</strong> this class represents null in two incompatible&#10; * ways: the standard Java {@code null} reference, and the sentinel value {@link&#10; * JSONObject#NULL}. In particular, calling {@code put(name, null)} removes the&#10; * named entry from the object but {@code put(name, JSONObject.NULL)} stores an&#10; * entry whose value is {@code JSONObject.NULL}.&#10; *&#10; * <p>Instances of this class are not thread safe. Although this class is&#10; * nonfinal, it was not designed for inheritance and should not be subclassed.&#10; * In particular, self-use by overrideable methods is not specified. See&#10; * <i>Effective Java, 3rd edition</i> Item 19, &#34;Design and Document for&#10; * inheritance or else prohibit it&#34; for further information.&#10; "
  ]
  node [
    id 1
    label "public int length()"
    type "method"
    comment "&#10;     * Returns the number of name/value mappings in this object.&#10;     "
  ]
  node [
    id 2
    label "public JSONObject put(@NonNull String name, boolean value) throws JSONException"
    type "method"
    comment "&#10;     * Maps {@code name} to {@code value}, clobbering any existing name/value&#10;     * mapping with the same name.&#10;     *&#10;     * @return this object.&#10;     "
  ]
  node [
    id 3
    label "public JSONObject put(@NonNull String name, double value) throws JSONException"
    type "method"
    comment "&#10;     * Maps {@code name} to {@code value}, clobbering any existing name/value&#10;     * mapping with the same name.&#10;     *&#10;     * @param value a finite value. May not be {@link Double#isNaN() NaNs} or&#10;     *     {@link Double#isInfinite() infinities}.&#10;     * @return this object.&#10;     "
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
    label "public JSONObject put(@NonNull String name, int value) throws JSONException"
    type "method"
    comment "&#10;     * Maps {@code name} to {@code value}, clobbering any existing name/value&#10;     * mapping with the same name.&#10;     *&#10;     * @return this object.&#10;     "
  ]
  node [
    id 7
    label "public JSONObject put(@NonNull String name, long value) throws JSONException"
    type "method"
    comment "&#10;     * Maps {@code name} to {@code value}, clobbering any existing name/value&#10;     * mapping with the same name.&#10;     *&#10;     * @return this object.&#10;     "
  ]
  node [
    id 8
    label "public JSONObject put(@NonNull String name, @Nullable Object value) throws JSONException"
    type "method"
    comment "&#10;     * Maps {@code name} to {@code value}, clobbering any existing name/value&#10;     * mapping with the same name. If the value is {@code null}, any existing&#10;     * mapping for {@code name} is removed.&#10;     *&#10;     * @param value a {@link JSONObject}, {@link JSONArray}, String, Boolean,&#10;     *     Integer, Long, Double, {@link #NULL}, or {@code null}. May not be&#10;     *     {@link Double#isNaN() NaNs} or {@link Double#isInfinite()&#10;     *     infinities}.&#10;     * @return this object.&#10;     "
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
    label "public JSONObject putOpt(@Nullable String name, @Nullable Object value) throws JSONException"
    type "method"
    comment "&#10;     * Equivalent to {@code put(name, value)} when both parameters are non-null;&#10;     * does nothing otherwise.&#10;     "
  ]
  node [
    id 13
    label "public JSONObject accumulate(@NonNull String name, @Nullable Object value) throws JSONException"
    type "method"
    comment "&#10;     * Appends {@code value} to the array already mapped to {@code name}. If&#10;     * this object has no mapping for {@code name}, this inserts a new mapping.&#10;     * If the mapping exists but its value is not an array, the existing&#10;     * and new values are inserted in order into a new array which is itself&#10;     * mapped to {@code name}. In aggregate, this allows values to be added to a&#10;     * mapping one at a time.&#10;     *&#10;     * <p> Note that {@link #append(String, Object)} provides better semantics.&#10;     * In particular, the mapping for {@code name} will <b>always</b> be a&#10;     * {@link JSONArray}. Using {@code accumulate} will result in either a&#10;     * {@link JSONArray} or a mapping whose type is the type of {@code value}&#10;     * depending on the number of calls to it.&#10;     *&#10;     * @param value a {@link JSONObject}, {@link JSONArray}, String, Boolean,&#10;     *     Integer, Long, Double, {@link #NULL} or null. May not be {@link&#10;     *     Double#isNaN() NaNs} or {@link Double#isInfinite() infinities}.&#10;     "
  ]
  node [
    id 14
    label "append(String"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public JSONObject append(@NonNull String name, @Nullable Object value) throws JSONException"
    type "method"
    comment "&#10;     * Appends values to the array mapped to {@code name}. A new {@link JSONArray}&#10;     * mapping for {@code name} will be inserted if no mapping exists. If the existing&#10;     * mapping for {@code name} is not a {@link JSONArray}, a {@link JSONException}&#10;     * will be thrown.&#10;     *&#10;     * @throws JSONException if {@code name} is {@code null} or if the mapping for&#10;     *         {@code name} is non-null and is not a {@link JSONArray}.&#10;     "
  ]
  node [
    id 16
    label "JSONException"
  ]
  node [
    id 17
    label "public Object remove(@Nullable String name)"
    type "method"
    comment "&#10;     * Removes the named mapping if it exists; does nothing otherwise.&#10;     *&#10;     * @return the value previously mapped by {@code name}, or null if there was&#10;     *     no such mapping.&#10;     "
  ]
  node [
    id 18
    label "public boolean isNull(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns true if this object has no mapping for {@code name} or if it has&#10;     * a mapping whose value is {@link #NULL}.&#10;     "
  ]
  node [
    id 19
    label "public boolean has(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns true if this object has a mapping for {@code name}. The mapping&#10;     * may be {@link #NULL}.&#10;     "
  ]
  node [
    id 20
    label "public Object get(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name}, or throws if no such mapping exists.&#10;     *&#10;     * @throws JSONException if no such mapping exists.&#10;     "
  ]
  node [
    id 21
    label "public Object opt(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name}, or null if no such mapping&#10;     * exists.&#10;     "
  ]
  node [
    id 22
    label "public boolean getBoolean(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a boolean or&#10;     * can be coerced to a boolean, or throws otherwise.&#10;     *&#10;     * @throws JSONException if the mapping doesn't exist or cannot be coerced&#10;     *     to a boolean.&#10;     "
  ]
  node [
    id 23
    label "public boolean optBoolean(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a boolean or&#10;     * can be coerced to a boolean, or false otherwise.&#10;     "
  ]
  node [
    id 24
    label "public boolean optBoolean(@Nullable String name, boolean fallback)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a boolean or&#10;     * can be coerced to a boolean, or {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 25
    label "public double getDouble(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a double or&#10;     * can be coerced to a double, or throws otherwise.&#10;     *&#10;     * @throws JSONException if the mapping doesn't exist or cannot be coerced&#10;     *     to a double.&#10;     "
  ]
  node [
    id 26
    label "public double optDouble(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a double or&#10;     * can be coerced to a double, or {@code NaN} otherwise.&#10;     "
  ]
  node [
    id 27
    label "public double optDouble(@Nullable String name, double fallback)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a double or&#10;     * can be coerced to a double, or {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 28
    label "public int getInt(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is an int or&#10;     * can be coerced to an int, or throws otherwise.&#10;     *&#10;     * @throws JSONException if the mapping doesn't exist or cannot be coerced&#10;     *     to an int.&#10;     "
  ]
  node [
    id 29
    label "public int optInt(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is an int or&#10;     * can be coerced to an int, or 0 otherwise.&#10;     "
  ]
  node [
    id 30
    label "public int optInt(@Nullable String name, int fallback)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is an int or&#10;     * can be coerced to an int, or {@code fallback} otherwise.&#10;     "
  ]
  node [
    id 31
    label "public long getLong(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a long or&#10;     * can be coerced to a long, or throws otherwise.&#10;     * Note that JSON represents numbers as doubles,&#10;     * so this is <a href=&#34;#lossy&#34;>lossy</a>; use strings to transfer numbers via JSON.&#10;     *&#10;     * @throws JSONException if the mapping doesn't exist or cannot be coerced&#10;     *     to a long.&#10;     "
  ]
  node [
    id 32
    label "public long optLong(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a long or&#10;     * can be coerced to a long, or 0 otherwise. Note that JSON represents numbers as doubles,&#10;     * so this is <a href=&#34;#lossy&#34;>lossy</a>; use strings to transfer numbers via JSON.&#10;     "
  ]
  node [
    id 33
    label "public long optLong(@Nullable String name, long fallback)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a long or&#10;     * can be coerced to a long, or {@code fallback} otherwise. Note that JSON represents&#10;     * numbers as doubles, so this is <a href=&#34;#lossy&#34;>lossy</a>; use strings to transfer&#10;     * numbers via JSON.&#10;     "
  ]
  node [
    id 34
    label "public String getString(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists, coercing it if&#10;     * necessary, or throws if no such mapping exists.&#10;     *&#10;     * @throws JSONException if no such mapping exists.&#10;     "
  ]
  node [
    id 35
    label "public String optString(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists, coercing it if&#10;     * necessary, or the empty string if no such mapping exists.&#10;     "
  ]
  node [
    id 36
    label "public String optString(@Nullable String name, @NonNull String fallback)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists, coercing it if&#10;     * necessary, or {@code fallback} if no such mapping exists.&#10;     "
  ]
  node [
    id 37
    label "public JSONArray getJSONArray(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a {@code&#10;     * JSONArray}, or throws otherwise.&#10;     *&#10;     * @throws JSONException if the mapping doesn't exist or is not a {@code&#10;     *     JSONArray}.&#10;     "
  ]
  node [
    id 38
    label "public JSONArray optJSONArray(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a {@code&#10;     * JSONArray}, or null otherwise.&#10;     "
  ]
  node [
    id 39
    label "public JSONObject getJSONObject(@NonNull String name) throws JSONException"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a {@code&#10;     * JSONObject}, or throws otherwise.&#10;     *&#10;     * @throws JSONException if the mapping doesn't exist or is not a {@code&#10;     *     JSONObject}.&#10;     "
  ]
  node [
    id 40
    label "public JSONObject optJSONObject(@Nullable String name)"
    type "method"
    comment "&#10;     * Returns the value mapped by {@code name} if it exists and is a {@code&#10;     * JSONObject}, or null otherwise.&#10;     "
  ]
  node [
    id 41
    label "public JSONArray toJSONArray(@Nullable JSONArray names) throws JSONException"
    type "method"
    comment "&#10;     * Returns an array with the values corresponding to {@code names}. The&#10;     * array contains null for names that aren't mapped. This method returns&#10;     * null if {@code names} is either null or empty.&#10;     "
  ]
  node [
    id 42
    label "public Iterator<@NonNull String> keys()"
    type "method"
    comment "&#10;     * Returns an iterator of the {@code String} names in this object. The&#10;     * returned iterator supports {@link Iterator#remove() remove}, which will&#10;     * remove the corresponding mapping from this object. If this object is&#10;     * modified after the iterator is returned, the iterator's behavior is&#10;     * undefined. The order of the keys is undefined.&#10;     "
  ]
  node [
    id 43
    label "remove()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 44
    label "java.util.Iterator"
    type "class"
    comment "&#10; * An iterator over a collection.  {@code Iterator} takes the place of&#10; * {@link Enumeration} in the Java Collections Framework.  Iterators&#10; * differ from enumerations in two ways:&#10; *&#10; * <ul>&#10; *      <li> Iterators allow the caller to remove elements from the&#10; *           underlying collection during the iteration with well-defined&#10; *           semantics.&#10; *      <li> Method names have been improved.&#10; * </ul>&#10; *&#10; * <p>This interface is a member of the&#10; * <a href=&#34;{@docRoot}/java.base/java/util/package-summary.html#CollectionsFramework&#34;>&#10; * Java Collections Framework</a>.&#10; *&#10; * @apiNote&#10; * An {@link Enumeration} can be converted into an {@code Iterator} by&#10; * using the {@link Enumeration#asIterator} method.&#10; *&#10; * @param <E> the type of elements returned by this iterator&#10; *&#10; * @author  Josh Bloch&#10; * @see Collection&#10; * @see ListIterator&#10; * @see Iterable&#10; * @since 1.2&#10; "
  ]
  node [
    id 45
    label " boolean hasNext()"
    type "method"
    comment "&#10;     * Returns {@code true} if the iteration has more elements.&#10;     * (In other words, returns {@code true} if {@link #next} would&#10;     * return an element rather than throwing an exception.)&#10;     *&#10;     * @return {@code true} if the iteration has more elements&#10;     "
  ]
  node [
    id 46
    label "next"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 47
    label " E next()"
    type "method"
    comment "&#10;     * Returns the next element in the iteration.&#10;     *&#10;     * @return the next element in the iteration&#10;     * @throws NoSuchElementException if the iteration has no more elements&#10;     "
  ]
  node [
    id 48
    label " void remove()"
    type "method"
    comment "&#10;     * Removes from the underlying collection the last element returned&#10;     * by this iterator (optional operation).  This method can be called&#10;     * only once per call to {@link #next}.&#10;     * <p>&#10;     * The behavior of an iterator is unspecified if the underlying collection&#10;     * is modified while the iteration is in progress in any way other than by&#10;     * calling this method, unless an overriding class has specified a&#10;     * concurrent modification policy.&#10;     * <p>&#10;     * The behavior of an iterator is unspecified if this method is called&#10;     * after a call to the {@link #forEachRemaining forEachRemaining} method.&#10;     *&#10;     * @implSpec&#10;     * The default implementation throws an instance of&#10;     * {@link UnsupportedOperationException} and performs no other action.&#10;     *&#10;     * @throws UnsupportedOperationException if the {@code remove}&#10;     *         operation is not supported by this iterator&#10;     *&#10;     * @throws IllegalStateException if the {@code next} method has not&#10;     *         yet been called, or the {@code remove} method has already&#10;     *         been called after the last call to the {@code next}&#10;     *         method&#10;     "
  ]
  node [
    id 49
    label "forEachRemaining"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 50
    label "UnsupportedOperationException"
  ]
  node [
    id 51
    label " void forEachRemaining(Consumer<? super E> action)"
    type "method"
    comment "&#10;     * Performs the given action for each remaining element until all elements&#10;     * have been processed or the action throws an exception.  Actions are&#10;     * performed in the order of iteration, if that order is specified.&#10;     * Exceptions thrown by the action are relayed to the caller.&#10;     * <p>&#10;     * The behavior of an iterator is unspecified if the action modifies the&#10;     * collection in any way (even by calling the {@link #remove remove} method&#10;     * or other mutator methods of {@code Iterator} subtypes),&#10;     * unless an overriding class has specified a concurrent modification policy.&#10;     * <p>&#10;     * Subsequent behavior of an iterator is unspecified if the action throws an&#10;     * exception.&#10;     *&#10;     * @implSpec&#10;     * <p>The default implementation behaves as if:&#10;     * <pre>{@code&#10;     *     while (hasNext())&#10;     *         action.accept(next());&#10;     * }</pre>&#10;     *&#10;     * @param action The action to be performed for each element&#10;     * @throws NullPointerException if the specified action is null&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 52
    label "remove"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 53
    label "public JSONArray names()"
    type "method"
    comment "&#10;     * Returns an array containing the string names in this object. This method&#10;     * returns null if this object contains no mappings.&#10;     "
  ]
  node [
    id 54
    label "public String toString()"
    type "method"
    comment "&#10;     * Encodes this object as a compact JSON string, such as:&#10;     * <pre>{&#34;query&#34;:&#34;Pizza&#34;,&#34;locations&#34;:[94043,90210]}</pre>&#10;     "
  ]
  node [
    id 55
    label "public String toString(int indentSpaces) throws JSONException"
    type "method"
    comment "&#10;     * Encodes this object as a human readable JSON string for debugging, such&#10;     * as:&#10;     * <pre>&#10;     * {&#10;     *     &#34;query&#34;: &#34;Pizza&#34;,&#10;     *     &#34;locations&#34;: [&#10;     *         94043,&#10;     *         90210&#10;     *     ]&#10;     * }</pre>&#10;     *&#10;     * @param indentSpaces the number of spaces to indent for each level of&#10;     *     nesting.&#10;     "
  ]
  node [
    id 56
    label "public static String numberToString(@NonNull Number number) throws JSONException"
    type "method"
    comment "&#10;     * Encodes the number as a JSON string.&#10;     *&#10;     * @param number a finite value. May not be {@link Double#isNaN() NaNs} or&#10;     *     {@link Double#isInfinite() infinities}.&#10;     "
  ]
  node [
    id 57
    label "public static String quote(@Nullable String data)"
    type "method"
    comment "&#10;     * Encodes {@code data} as a JSON string. This applies quotes and any&#10;     * necessary character escaping.&#10;     *&#10;     * @param data the string to encode. Null will be interpreted as an empty&#10;     *     string.&#10;     "
  ]
  node [
    id 58
    label "public static Object wrap(@Nullable Object o)"
    type "method"
    comment "&#10;     * Wraps the given object if necessary.&#10;     *&#10;     * <p>If the object is null or , returns {@link #NULL}.&#10;     * If the object is a {@code JSONArray} or {@code JSONObject}, no wrapping is necessary.&#10;     * If the object is {@code NULL}, no wrapping is necessary.&#10;     * If the object is an array or {@code Collection}, returns an equivalent {@code JSONArray}.&#10;     * If the object is a {@code Map}, returns an equivalent {@code JSONObject}.&#10;     * If the object is a primitive wrapper type or {@code String}, returns the object.&#10;     * Otherwise if the object is from a {@code java} package, returns the result of {@code toString}.&#10;     * If wrapping fails, returns null.&#10;     "
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
    target 13
    type "child"
  ]
  edge [
    source 0
    target 15
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
    target 53
    type "child"
  ]
  edge [
    source 0
    target 54
    type "child"
  ]
  edge [
    source 0
    target 55
    type "child"
  ]
  edge [
    source 0
    target 56
    type "child"
  ]
  edge [
    source 0
    target 57
    type "child"
  ]
  edge [
    source 0
    target 58
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
    source 13
    target 4
    type "link"
  ]
  edge [
    source 13
    target 14
    type "link"
  ]
  edge [
    source 13
    target 9
    type "link"
  ]
  edge [
    source 13
    target 5
    type "link"
  ]
  edge [
    source 13
    target 10
    type "link"
  ]
  edge [
    source 13
    target 11
    type "link"
  ]
  edge [
    source 15
    target 10
    type "link"
  ]
  edge [
    source 15
    target 16
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
  edge [
    source 42
    target 43
    type "link"
  ]
  edge [
    source 44
    target 45
    type "child"
  ]
  edge [
    source 44
    target 47
    type "child"
  ]
  edge [
    source 44
    target 48
    type "child"
  ]
  edge [
    source 44
    target 51
    type "child"
  ]
  edge [
    source 45
    target 46
    type "link"
  ]
  edge [
    source 48
    target 46
    type "link"
  ]
  edge [
    source 48
    target 49
    type "link"
  ]
  edge [
    source 48
    target 50
    type "link"
  ]
  edge [
    source 51
    target 52
    type "link"
  ]
  edge [
    source 56
    target 4
    type "link"
  ]
  edge [
    source 56
    target 5
    type "link"
  ]
  edge [
    source 58
    target 11
    type "link"
  ]
]
