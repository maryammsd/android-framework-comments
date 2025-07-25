graph [
  directed 1
  node [
    id 0
    label "java.util.Map"
    type "class"
    comment "&#10; * An object that maps keys to values.  A map cannot contain duplicate keys;&#10; * each key can map to at most one value.&#10; *&#10; * <p>This interface takes the place of the {@code Dictionary} class, which&#10; * was a totally abstract class rather than an interface.&#10; *&#10; * <p>The {@code Map} interface provides three <i>collection views</i>, which&#10; * allow a map's contents to be viewed as a set of keys, collection of values,&#10; * or set of key-value mappings.  The <i>order</i> of a map is defined as&#10; * the order in which the iterators on the map's collection views return their&#10; * elements.  Some map implementations, like the {@code TreeMap} class, make&#10; * specific guarantees as to their order; others, like the {@code HashMap}&#10; * class, do not.&#10; *&#10; * <p>Note: great care must be exercised if mutable objects are used as map&#10; * keys.  The behavior of a map is not specified if the value of an object is&#10; * changed in a manner that affects {@code equals} comparisons while the&#10; * object is a key in the map.  A special case of this prohibition is that it&#10; * is not permissible for a map to contain itself as a key.  While it is&#10; * permissible for a map to contain itself as a value, extreme caution is&#10; * advised: the {@code equals} and {@code hashCode} methods are no longer&#10; * well defined on such a map.&#10; *&#10; * <p>All general-purpose map implementation classes should provide two&#10; * &#34;standard&#34; constructors: a void (no arguments) constructor which creates an&#10; * empty map, and a constructor with a single argument of type {@code Map},&#10; * which creates a new map with the same key-value mappings as its argument.&#10; * In effect, the latter constructor allows the user to copy any map,&#10; * producing an equivalent map of the desired class.  There is no way to&#10; * enforce this recommendation (as interfaces cannot contain constructors) but&#10; * all of the general-purpose map implementations in the JDK comply.&#10; *&#10; * <p>The &#34;destructive&#34; methods contained in this interface, that is, the&#10; * methods that modify the map on which they operate, are specified to throw&#10; * {@code UnsupportedOperationException} if this map does not support the&#10; * operation.  If this is the case, these methods may, but are not required&#10; * to, throw an {@code UnsupportedOperationException} if the invocation would&#10; * have no effect on the map.  For example, invoking the {@link #putAll(Map)}&#10; * method on an unmodifiable map may, but is not required to, throw the&#10; * exception if the map whose mappings are to be &#34;superimposed&#34; is empty.&#10; *&#10; * <p>Some map implementations have restrictions on the keys and values they&#10; * may contain.  For example, some implementations prohibit null keys and&#10; * values, and some have restrictions on the types of their keys.  Attempting&#10; * to insert an ineligible key or value throws an unchecked exception,&#10; * typically {@code NullPointerException} or {@code ClassCastException}.&#10; * Attempting to query the presence of an ineligible key or value may throw an&#10; * exception, or it may simply return false; some implementations will exhibit&#10; * the former behavior and some will exhibit the latter.  More generally,&#10; * attempting an operation on an ineligible key or value whose completion&#10; * would not result in the insertion of an ineligible element into the map may&#10; * throw an exception or it may succeed, at the option of the implementation.&#10; * Such exceptions are marked as &#34;optional&#34; in the specification for this&#10; * interface.&#10; *&#10; * <p>Many methods in Collections Framework interfaces are defined&#10; * in terms of the {@link Object#equals(Object) equals} method.  For&#10; * example, the specification for the {@link #containsKey(Object)&#10; * containsKey(Object key)} method says: &#34;returns {@code true} if and&#10; * only if this map contains a mapping for a key {@code k} such that&#10; * {@code (key==null ? k==null : key.equals(k))}.&#34; This specification should&#10; * <i>not</i> be construed to imply that invoking {@code Map.containsKey}&#10; * with a non-null argument {@code key} will cause {@code key.equals(k)} to&#10; * be invoked for any key {@code k}.  Implementations are free to&#10; * implement optimizations whereby the {@code equals} invocation is avoided,&#10; * for example, by first comparing the hash codes of the two keys.  (The&#10; * {@link Object#hashCode()} specification guarantees that two objects with&#10; * unequal hash codes cannot be equal.)  More generally, implementations of&#10; * the various Collections Framework interfaces are free to take advantage of&#10; * the specified behavior of underlying {@link Object} methods wherever the&#10; * implementor deems it appropriate.&#10; *&#10; * <p>Some map operations which perform recursive traversal of the map may fail&#10; * with an exception for self-referential instances where the map directly or&#10; * indirectly contains itself. This includes the {@code clone()},&#10; * {@code equals()}, {@code hashCode()} and {@code toString()} methods.&#10; * Implementations may optionally handle the self-referential scenario, however&#10; * most current implementations do not do so.&#10; *&#10; * <h2><a id=&#34;unmodifiable&#34;>Unmodifiable Maps</a></h2>&#10; * <p>The {@link Map#of() Map.of},&#10; * {@link Map#ofEntries(Map.Entry...) Map.ofEntries}, and&#10; * {@link Map#copyOf Map.copyOf}&#10; * static factory methods provide a convenient way to create unmodifiable maps.&#10; * The {@code Map}&#10; * instances created by these methods have the following characteristics:&#10; *&#10; * <ul>&#10; * <li>They are <a href=&#34;Collection.html#unmodifiable&#34;><i>unmodifiable</i></a>. Keys and values&#10; * cannot be added, removed, or updated. Calling any mutator method on the Map&#10; * will always cause {@code UnsupportedOperationException} to be thrown.&#10; * However, if the contained keys or values are themselves mutable, this may cause the&#10; * Map to behave inconsistently or its contents to appear to change.&#10; * <li>They disallow {@code null} keys and values. Attempts to create them with&#10; * {@code null} keys or values result in {@code NullPointerException}.&#10; * <li>They are serializable if all keys and values are serializable.&#10; * <li>They reject duplicate keys at creation time. Duplicate keys&#10; * passed to a static factory method result in {@code IllegalArgumentException}.&#10; * <li>The iteration order of mappings is unspecified and is subject to change.&#10; * <li>They are <a href=&#34;../lang/doc-files/ValueBased.html&#34;>value-based</a>.&#10; * Programmers should treat instances that are {@linkplain #equals(Object) equal}&#10; * as interchangeable and should not use them for synchronization, or&#10; * unpredictable behavior may occur. For example, in a future release,&#10; * synchronization may fail. Callers should make no assumptions&#10; * about the identity of the returned instances. Factories are free to&#10; * create new instances or reuse existing ones.&#10; * <li>They are serialized as specified on the&#10; * <a href=&#34;{@docRoot}/serialized-form.html#java.util.CollSer&#34;>Serialized Form</a>&#10; * page.&#10; * </ul>&#10; *&#10; * <p>This interface is a member of the&#10; * <a href=&#34;{@docRoot}/java.base/java/util/package-summary.html#CollectionsFramework&#34;>&#10; * Java Collections Framework</a>.&#10; *&#10; * @param <K> the type of keys maintained by this map&#10; * @param <V> the type of mapped values&#10; *&#10; * @author  Josh Bloch&#10; * @see HashMap&#10; * @see TreeMap&#10; * @see Hashtable&#10; * @see SortedMap&#10; * @see Collection&#10; * @see Set&#10; * @since 1.2&#10; "
  ]
  node [
    id 1
    label " int size()"
    type "method"
    comment "&#10;     * Returns the number of key-value mappings in this map.  If the&#10;     * map contains more than {@code Integer.MAX_VALUE} elements, returns&#10;     * {@code Integer.MAX_VALUE}.&#10;     *&#10;     * @return the number of key-value mappings in this map&#10;     "
  ]
  node [
    id 2
    label " boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if this map contains no key-value mappings.&#10;     *&#10;     * @return {@code true} if this map contains no key-value mappings&#10;     "
  ]
  node [
    id 3
    label " boolean containsKey(Object key)"
    type "method"
    comment "&#10;     * Returns {@code true} if this map contains a mapping for the specified&#10;     * key.  More formally, returns {@code true} if and only if&#10;     * this map contains a mapping for a key {@code k} such that&#10;     * {@code Objects.equals(key, k)}.  (There can be&#10;     * at most one such mapping.)&#10;     *&#10;     * @param key key whose presence in this map is to be tested&#10;     * @return {@code true} if this map contains a mapping for the specified&#10;     *         key&#10;     * @throws ClassCastException if the key is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this map&#10;     *         does not permit null keys&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 4
    label " boolean containsValue(Object value)"
    type "method"
    comment "&#10;     * Returns {@code true} if this map maps one or more keys to the&#10;     * specified value.  More formally, returns {@code true} if and only if&#10;     * this map contains at least one mapping to a value {@code v} such that&#10;     * {@code Objects.equals(value, v)}.  This operation&#10;     * will probably require time linear in the map size for most&#10;     * implementations of the {@code Map} interface.&#10;     *&#10;     * @param value value whose presence in this map is to be tested&#10;     * @return {@code true} if this map maps one or more keys to the&#10;     *         specified value&#10;     * @throws ClassCastException if the value is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified value is null and this&#10;     *         map does not permit null values&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 5
    label " V get(Object key)"
    type "method"
    comment "&#10;     * Returns the value to which the specified key is mapped,&#10;     * or {@code null} if this map contains no mapping for the key.&#10;     *&#10;     * <p>More formally, if this map contains a mapping from a key&#10;     * {@code k} to a value {@code v} such that&#10;     * {@code Objects.equals(key, k)},&#10;     * then this method returns {@code v}; otherwise&#10;     * it returns {@code null}.  (There can be at most one such mapping.)&#10;     *&#10;     * <p>If this map permits null values, then a return value of&#10;     * {@code null} does not <i>necessarily</i> indicate that the map&#10;     * contains no mapping for the key; it's also possible that the map&#10;     * explicitly maps the key to {@code null}.  The {@link #containsKey&#10;     * containsKey} operation may be used to distinguish these two cases.&#10;     *&#10;     * @param key the key whose associated value is to be returned&#10;     * @return the value to which the specified key is mapped, or&#10;     *         {@code null} if this map contains no mapping for the key&#10;     * @throws ClassCastException if the key is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this map&#10;     *         does not permit null keys&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 6
    label "containsKeycontainsKey"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label " V put(K key, V value)"
    type "method"
    comment "&#10;     * Associates the specified value with the specified key in this map&#10;     * (optional operation).  If the map previously contained a mapping for&#10;     * the key, the old value is replaced by the specified value.  (A map&#10;     * {@code m} is said to contain a mapping for a key {@code k} if and only&#10;     * if {@link #containsKey(Object) m.containsKey(k)} would return&#10;     * {@code true}.)&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param value value to be associated with the specified key&#10;     * @return the previous value associated with {@code key}, or&#10;     *         {@code null} if there was no mapping for {@code key}.&#10;     *         (A {@code null} return can also indicate that the map&#10;     *         previously associated {@code null} with {@code key},&#10;     *         if the implementation supports {@code null} values.)&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified key or value is null&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 8
    label "containsKey(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 9
    label " V remove(Object key)"
    type "method"
    comment "&#10;     * Removes the mapping for a key from this map if it is present&#10;     * (optional operation).   More formally, if this map contains a mapping&#10;     * from key {@code k} to value {@code v} such that&#10;     * {@code Objects.equals(key, k)}, that mapping&#10;     * is removed.  (The map can contain at most one such mapping.)&#10;     *&#10;     * <p>Returns the value to which this map previously associated the key,&#10;     * or {@code null} if the map contained no mapping for the key.&#10;     *&#10;     * <p>If this map permits null values, then a return value of&#10;     * {@code null} does not <i>necessarily</i> indicate that the map&#10;     * contained no mapping for the key; it's also possible that the map&#10;     * explicitly mapped the key to {@code null}.&#10;     *&#10;     * <p>The map will not contain a mapping for the specified key once the&#10;     * call returns.&#10;     *&#10;     * @param key key whose mapping is to be removed from the map&#10;     * @return the previous value associated with {@code key}, or&#10;     *         {@code null} if there was no mapping for {@code key}.&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the key is of an inappropriate type for&#10;     *         this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this&#10;     *         map does not permit null keys&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 10
    label " void putAll(Map<? extends K, ? extends V> m)"
    type "method"
    comment "&#10;     * Copies all of the mappings from the specified map to this map&#10;     * (optional operation).  The effect of this call is equivalent to that&#10;     * of calling {@link #put(Object,Object) put(k, v)} on this map once&#10;     * for each mapping from key {@code k} to value {@code v} in the&#10;     * specified map.  The behavior of this operation is undefined if the&#10;     * specified map is modified while the operation is in progress.&#10;     *&#10;     * @param m mappings to be stored in this map&#10;     * @throws UnsupportedOperationException if the {@code putAll} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of a key or value in the&#10;     *         specified map prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified map is null, or if&#10;     *         this map does not permit null keys or values, and the&#10;     *         specified map contains null keys or values&#10;     * @throws IllegalArgumentException if some property of a key or value in&#10;     *         the specified map prevents it from being stored in this map&#10;     "
  ]
  node [
    id 11
    label "put(Object"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 12
    label " void clear()"
    type "method"
    comment "&#10;     * Removes all of the mappings from this map (optional operation).&#10;     * The map will be empty after this call returns.&#10;     *&#10;     * @throws UnsupportedOperationException if the {@code clear} operation&#10;     *         is not supported by this map&#10;     "
  ]
  node [
    id 13
    label " Set<K> keySet()"
    type "method"
    comment "&#10;     * Returns a {@link Set} view of the keys contained in this map.&#10;     * The set is backed by the map, so changes to the map are&#10;     * reflected in the set, and vice-versa.  If the map is modified&#10;     * while an iteration over the set is in progress (except through&#10;     * the iterator's own {@code remove} operation), the results of&#10;     * the iteration are undefined.  The set supports element removal,&#10;     * which removes the corresponding mapping from the map, via the&#10;     * {@code Iterator.remove}, {@code Set.remove},&#10;     * {@code removeAll}, {@code retainAll}, and {@code clear}&#10;     * operations.  It does not support the {@code add} or {@code addAll}&#10;     * operations.&#10;     *&#10;     * @return a set view of the keys contained in this map&#10;     "
  ]
  node [
    id 14
    label "Set"
  ]
  node [
    id 15
    label " Collection<V> values()"
    type "method"
    comment "&#10;     * Returns a {@link Collection} view of the values contained in this map.&#10;     * The collection is backed by the map, so changes to the map are&#10;     * reflected in the collection, and vice-versa.  If the map is&#10;     * modified while an iteration over the collection is in progress&#10;     * (except through the iterator's own {@code remove} operation),&#10;     * the results of the iteration are undefined.  The collection&#10;     * supports element removal, which removes the corresponding&#10;     * mapping from the map, via the {@code Iterator.remove},&#10;     * {@code Collection.remove}, {@code removeAll},&#10;     * {@code retainAll} and {@code clear} operations.  It does not&#10;     * support the {@code add} or {@code addAll} operations.&#10;     *&#10;     * @return a collection view of the values contained in this map&#10;     "
  ]
  node [
    id 16
    label "Collection"
  ]
  node [
    id 17
    label " Set<Map.Entry<K, V>> entrySet()"
    type "method"
    comment "&#10;     * Returns a {@link Set} view of the mappings contained in this map.&#10;     * The set is backed by the map, so changes to the map are&#10;     * reflected in the set, and vice-versa.  If the map is modified&#10;     * while an iteration over the set is in progress (except through&#10;     * the iterator's own {@code remove} operation, or through the&#10;     * {@code setValue} operation on a map entry returned by the&#10;     * iterator) the results of the iteration are undefined.  The set&#10;     * supports element removal, which removes the corresponding&#10;     * mapping from the map, via the {@code Iterator.remove},&#10;     * {@code Set.remove}, {@code removeAll}, {@code retainAll} and&#10;     * {@code clear} operations.  It does not support the&#10;     * {@code add} or {@code addAll} operations.&#10;     *&#10;     * @return a set view of the mappings contained in this map&#10;     "
  ]
  node [
    id 18
    label " boolean equals(Object o)"
    type "method"
    comment "&#10;     * Compares the specified object with this map for equality.  Returns&#10;     * {@code true} if the given object is also a map and the two maps&#10;     * represent the same mappings.  More formally, two maps {@code m1} and&#10;     * {@code m2} represent the same mappings if&#10;     * {@code m1.entrySet().equals(m2.entrySet())}.  This ensures that the&#10;     * {@code equals} method works properly across different implementations&#10;     * of the {@code Map} interface.&#10;     *&#10;     * @param o object to be compared for equality with this map&#10;     * @return {@code true} if the specified object is equal to this map&#10;     "
  ]
  node [
    id 19
    label " int hashCode()"
    type "method"
    comment "&#10;     * Returns the hash code value for this map.  The hash code of a map is&#10;     * defined to be the sum of the hash codes of each entry in the map's&#10;     * {@code entrySet()} view.  This ensures that {@code m1.equals(m2)}&#10;     * implies that {@code m1.hashCode()==m2.hashCode()} for any two maps&#10;     * {@code m1} and {@code m2}, as required by the general contract of&#10;     * {@link Object#hashCode}.&#10;     *&#10;     * @return the hash code value for this map&#10;     * @see Map.Entry#hashCode()&#10;     * @see Object#equals(Object)&#10;     * @see #equals(Object)&#10;     "
  ]
  node [
    id 20
    label "hashCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 21
    label " V getOrDefault(Object key, V defaultValue)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implNote This implementation assumes that the ConcurrentMap cannot&#10;     * contain null values and {@code get()} returning null unambiguously means&#10;     * the key is absent. Implementations which support null values&#10;     * <strong>must</strong> override this default implementation.&#10;     *&#10;     * @throws ClassCastException {@inheritDoc}&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 22
    label " void forEach(BiConsumer<? super K, ? super V> action)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec The default implementation is equivalent to, for this&#10;     * {@code map}:&#10;     * <pre> {@code&#10;     * for (Map.Entry<K,V> entry : map.entrySet()) {&#10;     *   action.accept(entry.getKey(), entry.getValue());&#10;     * }}</pre>&#10;     *&#10;     * @implNote The default implementation assumes that&#10;     * {@code IllegalStateException} thrown by {@code getKey()} or&#10;     * {@code getValue()} indicates that the entry has been removed and cannot&#10;     * be processed. Operation continues for subsequent entries.&#10;     *&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 23
    label " void replaceAll(BiFunction<? super K, ? super V, ? extends V> function)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * <p>The default implementation is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * for (Map.Entry<K,V> entry : map.entrySet()) {&#10;     *   K k;&#10;     *   V v;&#10;     *   do {&#10;     *     k = entry.getKey();&#10;     *     v = entry.getValue();&#10;     *   } while (!map.replace(k, v, function.apply(k, v)));&#10;     * }}</pre>&#10;     *&#10;     * The default implementation may retry these steps when multiple&#10;     * threads attempt updates including potentially calling the function&#10;     * repeatedly for a given key.&#10;     *&#10;     * <p>This implementation assumes that the ConcurrentMap cannot contain null&#10;     * values and {@code get()} returning null unambiguously means the key is&#10;     * absent. Implementations which support null values <strong>must</strong>&#10;     * override this default implementation.&#10;     *&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @throws ClassCastException {@inheritDoc}&#10;     * @throws IllegalArgumentException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 24
    label " V putIfAbsent(K key, V value)"
    type "method"
    comment "&#10;     * If the specified key is not already associated&#10;     * with a value, associates it with the given value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (!map.containsKey(key))&#10;     *   return map.put(key, value);&#10;     * else&#10;     *   return map.get(key);}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param value value to be associated with the specified key&#10;     * @return the previous value associated with the specified key, or&#10;     *         {@code null} if there was no mapping for the key.&#10;     *         (A {@code null} return can also indicate that the map&#10;     *         previously associated {@code null} with the key,&#10;     *         if the implementation supports null values.)&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 25
    label " boolean remove(Object key, Object value)"
    type "method"
    comment "&#10;     * Removes the entry for a key only if currently mapped to a given value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (map.containsKey(key)&#10;     *     &#38;&#38; Objects.equals(map.get(key), value)) {&#10;     *   map.remove(key);&#10;     *   return true;&#10;     * } else {&#10;     *   return false;&#10;     * }}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is associated&#10;     * @param value value expected to be associated with the specified key&#10;     * @return {@code true} if the value was removed&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the key or value is of an inappropriate&#10;     *         type for this map&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 26
    label " boolean replace(K key, V oldValue, V newValue)"
    type "method"
    comment "&#10;     * Replaces the entry for a key only if currently mapped to a given value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (map.containsKey(key)&#10;     *     &#38;&#38; Objects.equals(map.get(key), oldValue)) {&#10;     *   map.put(key, newValue);&#10;     *   return true;&#10;     * } else {&#10;     *   return false;&#10;     * }}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is associated&#10;     * @param oldValue value expected to be associated with the specified key&#10;     * @param newValue value to be associated with the specified key&#10;     * @return {@code true} if the value was replaced&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of a specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if a specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of a specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 27
    label " V replace(K key, V value)"
    type "method"
    comment "&#10;     * Replaces the entry for a key only if currently mapped to some value.&#10;     * This is equivalent to, for this {@code map}:&#10;     * <pre> {@code&#10;     * if (map.containsKey(key))&#10;     *   return map.put(key, value);&#10;     * else&#10;     *   return null;}</pre>&#10;     *&#10;     * except that the action is performed atomically.&#10;     *&#10;     * @implNote This implementation intentionally re-abstracts the&#10;     * inappropriate default provided in {@code Map}.&#10;     *&#10;     * @param key key with which the specified value is associated&#10;     * @param value value to be associated with the specified key&#10;     * @return the previous value associated with the specified key, or&#10;     *         {@code null} if there was no mapping for the key.&#10;     *         (A {@code null} return can also indicate that the map&#10;     *         previously associated {@code null} with the key,&#10;     *         if the implementation supports null values.)&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     * @throws NullPointerException if the specified key or value is null,&#10;     *         and this map does not permit null keys or values&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     "
  ]
  node [
    id 28
    label " V computeIfAbsent(K key, Function<? super K, ? extends V> mappingFunction)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to the following steps for this&#10;     * {@code map}:&#10;     *&#10;     * <pre> {@code&#10;     * V oldValue, newValue;&#10;     * return ((oldValue = map.get(key)) == null&#10;     *         &#38;&#38; (newValue = mappingFunction.apply(key)) != null&#10;     *         &#38;&#38; (oldValue = map.putIfAbsent(key, newValue)) == null)&#10;     *   ? newValue&#10;     *   : oldValue;}</pre>&#10;     *&#10;     * <p>This implementation assumes that the ConcurrentMap cannot contain null&#10;     * values and {@code get()} returning null unambiguously means the key is&#10;     * absent. Implementations which support null values <strong>must</strong>&#10;     * override this default implementation.&#10;     *&#10;     * @throws UnsupportedOperationException {@inheritDoc}&#10;     * @throws ClassCastException {@inheritDoc}&#10;     * @throws NullPointerException {@inheritDoc}&#10;     * @throws IllegalArgumentException {@inheritDoc}&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 29
    label "java.util.concurrent.ConcurrentMap"
    type "class"
    comment "&#10; * A {@link Map} providing thread safety and atomicity guarantees.&#10; *&#10; * <p>To maintain the specified guarantees, default implementations of&#10; * methods including {@link #putIfAbsent} inherited from {@link Map}&#10; * must be overridden by implementations of this interface. Similarly,&#10; * implementations of the collections returned by methods {@link&#10; * #keySet}, {@link #values}, and {@link #entrySet} must override&#10; * methods such as {@code removeIf} when necessary to&#10; * preserve atomicity guarantees.&#10; *&#10; * <p>Memory consistency effects: As with other concurrent&#10; * collections, actions in a thread prior to placing an object into a&#10; * {@code ConcurrentMap} as a key or value&#10; * <a href=&#34;package-summary.html#MemoryVisibility&#34;><i>happen-before</i></a>&#10; * actions subsequent to the access or removal of that object from&#10; * the {@code ConcurrentMap} in another thread.&#10; *&#10; * <p>This interface is a member of the&#10; * <a href=&#34;{@docRoot}/java.base/java/util/package-summary.html#CollectionsFramework&#34;>&#10; * Java Collections Framework</a>.&#10; *&#10; * @since 1.5&#10; * @author Doug Lea&#10; * @param <K> the type of keys maintained by this map&#10; * @param <V> the type of mapped values&#10; "
  ]
  node [
    id 30
    label " V computeIfPresent(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction)"
    type "method"
    comment "&#10;     * If the value for the specified key is present and non-null, attempts to&#10;     * compute a new mapping given the key and its current mapped value.&#10;     *&#10;     * <p>If the remapping function returns {@code null}, the mapping is removed.&#10;     * If the remapping function itself throws an (unchecked) exception, the&#10;     * exception is rethrown, and the current mapping is left unchanged.&#10;     *&#10;     * <p>The remapping function should not modify this map during computation.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to performing the following&#10;     * steps for this {@code map}, then returning the current value or&#10;     * {@code null} if now absent:&#10;     *&#10;     * <pre> {@code&#10;     * if (map.get(key) != null) {&#10;     *     V oldValue = map.get(key);&#10;     *     V newValue = remappingFunction.apply(key, oldValue);&#10;     *     if (newValue != null)&#10;     *         map.put(key, newValue);&#10;     *     else&#10;     *         map.remove(key);&#10;     * }&#10;     * }</pre>&#10;     *&#10;     * <p>The default implementation makes no guarantees about detecting if the&#10;     * remapping function modifies this map during computation and, if&#10;     * appropriate, reporting an error. Non-concurrent implementations should&#10;     * override this method and, on a best-effort basis, throw a&#10;     * {@code ConcurrentModificationException} if it is detected that the&#10;     * remapping function modifies this map during computation. Concurrent&#10;     * implementations should override this method and, on a best-effort basis,&#10;     * throw an {@code IllegalStateException} if it is detected that the&#10;     * remapping function modifies this map during computation and as a result&#10;     * computation would never complete.&#10;     *&#10;     * <p>The default implementation makes no guarantees about synchronization&#10;     * or atomicity properties of this method. Any implementation providing&#10;     * atomicity guarantees must override this method and document its&#10;     * concurrency properties. In particular, all implementations of&#10;     * subinterface {@link java.util.concurrent.ConcurrentMap} must document&#10;     * whether the remapping function is applied once atomically only if the&#10;     * value is not present.&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param remappingFunction the remapping function to compute a value&#10;     * @return the new value associated with the specified key, or null if none&#10;     * @throws NullPointerException if the specified key is null and&#10;     *         this map does not support null keys, or the&#10;     *         remappingFunction is null&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 31
    label " V compute(K key, BiFunction<? super K, ? super V, ? extends V> remappingFunction)"
    type "method"
    comment "&#10;     * Attempts to compute a mapping for the specified key and its current&#10;     * mapped value (or {@code null} if there is no current mapping). For&#10;     * example, to either create or append a {@code String} msg to a value&#10;     * mapping:&#10;     *&#10;     * <pre> {@code&#10;     * map.compute(key, (k, v) -> (v == null) ? msg : v.concat(msg))}</pre>&#10;     * (Method {@link #merge merge()} is often simpler to use for such purposes.)&#10;     *&#10;     * <p>If the remapping function returns {@code null}, the mapping is removed&#10;     * (or remains absent if initially absent).  If the remapping function&#10;     * itself throws an (unchecked) exception, the exception is rethrown, and&#10;     * the current mapping is left unchanged.&#10;     *&#10;     * <p>The remapping function should not modify this map during computation.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to performing the following&#10;     * steps for this {@code map}:&#10;     *&#10;     * <pre> {@code&#10;     * V oldValue = map.get(key);&#10;     * V newValue = remappingFunction.apply(key, oldValue);&#10;     * if (newValue != null) {&#10;     *     map.put(key, newValue);&#10;     * } else if (oldValue != null || map.containsKey(key)) {&#10;     *     map.remove(key);&#10;     * }&#10;     * return newValue;&#10;     * }</pre>&#10;     *&#10;     * <p>The default implementation makes no guarantees about detecting if the&#10;     * remapping function modifies this map during computation and, if&#10;     * appropriate, reporting an error. Non-concurrent implementations should&#10;     * override this method and, on a best-effort basis, throw a&#10;     * {@code ConcurrentModificationException} if it is detected that the&#10;     * remapping function modifies this map during computation. Concurrent&#10;     * implementations should override this method and, on a best-effort basis,&#10;     * throw an {@code IllegalStateException} if it is detected that the&#10;     * remapping function modifies this map during computation and as a result&#10;     * computation would never complete.&#10;     *&#10;     * <p>The default implementation makes no guarantees about synchronization&#10;     * or atomicity properties of this method. Any implementation providing&#10;     * atomicity guarantees must override this method and document its&#10;     * concurrency properties. In particular, all implementations of&#10;     * subinterface {@link java.util.concurrent.ConcurrentMap} must document&#10;     * whether the remapping function is applied once atomically only if the&#10;     * value is not present.&#10;     *&#10;     * @param key key with which the specified value is to be associated&#10;     * @param remappingFunction the remapping function to compute a value&#10;     * @return the new value associated with the specified key, or null if none&#10;     * @throws NullPointerException if the specified key is null and&#10;     *         this map does not support null keys, or the&#10;     *         remappingFunction is null&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 32
    label " V merge(K key, V value, BiFunction<? super V, ? super V, ? extends V> remappingFunction)"
    type "method"
    comment "&#10;     * If the specified key is not already associated with a value or is&#10;     * associated with null, associates it with the given non-null value.&#10;     * Otherwise, replaces the associated value with the results of the given&#10;     * remapping function, or removes if the result is {@code null}. This&#10;     * method may be of use when combining multiple mapped values for a key.&#10;     * For example, to either create or append a {@code String msg} to a&#10;     * value mapping:&#10;     *&#10;     * <pre> {@code&#10;     * map.merge(key, msg, String::concat)&#10;     * }</pre>&#10;     *&#10;     * <p>If the remapping function returns {@code null}, the mapping is removed.&#10;     * If the remapping function itself throws an (unchecked) exception, the&#10;     * exception is rethrown, and the current mapping is left unchanged.&#10;     *&#10;     * <p>The remapping function should not modify this map during computation.&#10;     *&#10;     * @implSpec&#10;     * The default implementation is equivalent to performing the following&#10;     * steps for this {@code map}, then returning the current value or&#10;     * {@code null} if absent:&#10;     *&#10;     * <pre> {@code&#10;     * V oldValue = map.get(key);&#10;     * V newValue = (oldValue == null) ? value :&#10;     *              remappingFunction.apply(oldValue, value);&#10;     * if (newValue == null)&#10;     *     map.remove(key);&#10;     * else&#10;     *     map.put(key, newValue);&#10;     * }</pre>&#10;     *&#10;     * <p>The default implementation makes no guarantees about detecting if the&#10;     * remapping function modifies this map during computation and, if&#10;     * appropriate, reporting an error. Non-concurrent implementations should&#10;     * override this method and, on a best-effort basis, throw a&#10;     * {@code ConcurrentModificationException} if it is detected that the&#10;     * remapping function modifies this map during computation. Concurrent&#10;     * implementations should override this method and, on a best-effort basis,&#10;     * throw an {@code IllegalStateException} if it is detected that the&#10;     * remapping function modifies this map during computation and as a result&#10;     * computation would never complete.&#10;     *&#10;     * <p>The default implementation makes no guarantees about synchronization&#10;     * or atomicity properties of this method. Any implementation providing&#10;     * atomicity guarantees must override this method and document its&#10;     * concurrency properties. In particular, all implementations of&#10;     * subinterface {@link java.util.concurrent.ConcurrentMap} must document&#10;     * whether the remapping function is applied once atomically only if the&#10;     * value is not present.&#10;     *&#10;     * @param key key with which the resulting value is to be associated&#10;     * @param value the non-null value to be merged with the existing value&#10;     *        associated with the key or, if no existing value or a null value&#10;     *        is associated with the key, to be associated with the key&#10;     * @param remappingFunction the remapping function to recompute a value if&#10;     *        present&#10;     * @return the new value associated with the specified key, or null if no&#10;     *         value is associated with the key&#10;     * @throws UnsupportedOperationException if the {@code put} operation&#10;     *         is not supported by this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws ClassCastException if the class of the specified key or value&#10;     *         prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws IllegalArgumentException if some property of the specified key&#10;     *         or value prevents it from being stored in this map&#10;     *         (<a href=&#34;{@docRoot}/java.base/java/util/Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified key is null and this map&#10;     *         does not support null keys or the value or remappingFunction is&#10;     *         null&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 33
    label "merge"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 34
    label " static Map<K, V> of()"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing zero mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @return an empty {@code Map}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 35
    label " static Map<K, V> of(K k1, V v1)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing a single mapping.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the mapping's key&#10;     * @param v1 the mapping's value&#10;     * @return a {@code Map} containing the specified mapping&#10;     * @throws NullPointerException if the key or the value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 36
    label " static Map<K, V> of(K k1, V v1, K k2, V v2)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing two mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if the keys are duplicates&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 37
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing three mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 38
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing four mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 39
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing five mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 40
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing six mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 41
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing seven mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 42
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing eight mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @param k8 the eighth mapping's key&#10;     * @param v8 the eighth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 43
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing nine mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @param k8 the eighth mapping's key&#10;     * @param v8 the eighth mapping's value&#10;     * @param k9 the ninth mapping's key&#10;     * @param v9 the ninth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 44
    label " static Map<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9, K k10, V v10)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing ten mappings.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param k1 the first mapping's key&#10;     * @param v1 the first mapping's value&#10;     * @param k2 the second mapping's key&#10;     * @param v2 the second mapping's value&#10;     * @param k3 the third mapping's key&#10;     * @param v3 the third mapping's value&#10;     * @param k4 the fourth mapping's key&#10;     * @param v4 the fourth mapping's value&#10;     * @param k5 the fifth mapping's key&#10;     * @param v5 the fifth mapping's value&#10;     * @param k6 the sixth mapping's key&#10;     * @param v6 the sixth mapping's value&#10;     * @param k7 the seventh mapping's key&#10;     * @param v7 the seventh mapping's value&#10;     * @param k8 the eighth mapping's key&#10;     * @param v8 the eighth mapping's value&#10;     * @param k9 the ninth mapping's key&#10;     * @param v9 the ninth mapping's value&#10;     * @param k10 the tenth mapping's key&#10;     * @param v10 the tenth mapping's value&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any key or value is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 45
    label " static Map<K, V> ofEntries(Entry<? extends K, ? extends V>... entries)"
    type "method"
    comment "&#10;     * Returns an unmodifiable map containing keys and values extracted from the given entries.&#10;     * The entries themselves are not stored in the map.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Maps</a> for details.&#10;     *&#10;     * @apiNote&#10;     * It is convenient to create the map entries using the {@link Map#entry Map.entry()} method.&#10;     * For example,&#10;     *&#10;     * <pre>{@code&#10;     *     import static java.util.Map.entry;&#10;     *&#10;     *     Map<Integer,String> map = Map.ofEntries(&#10;     *         entry(1, &#34;a&#34;),&#10;     *         entry(2, &#34;b&#34;),&#10;     *         entry(3, &#34;c&#34;),&#10;     *         ...&#10;     *         entry(26, &#34;z&#34;));&#10;     * }</pre>&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param entries {@code Map.Entry}s containing the keys and values from which the map is populated&#10;     * @return a {@code Map} containing the specified mappings&#10;     * @throws IllegalArgumentException if there are any duplicate keys&#10;     * @throws NullPointerException if any entry, key, or value is {@code null}, or if&#10;     *         the {@code entries} array is {@code null}&#10;     *&#10;     * @see Map#entry Map.entry()&#10;     * @since 9&#10;     "
  ]
  node [
    id 46
    label "entry"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 47
    label " static Entry<K, V> entry(K k, V v)"
    type "method"
    comment "&#10;     * Returns an unmodifiable {@link Entry} containing the given key and value.&#10;     * These entries are suitable for populating {@code Map} instances using the&#10;     * {@link Map#ofEntries Map.ofEntries()} method.&#10;     * The {@code Entry} instances created by this method have the following characteristics:&#10;     *&#10;     * <ul>&#10;     * <li>They disallow {@code null} keys and values. Attempts to create them using a {@code null}&#10;     * key or value result in {@code NullPointerException}.&#10;     * <li>They are unmodifiable. Calls to {@link Entry#setValue Entry.setValue()}&#10;     * on a returned {@code Entry} result in {@code UnsupportedOperationException}.&#10;     * <li>They are not serializable.&#10;     * <li>They are <a href=&#34;../lang/doc-files/ValueBased.html&#34;>value-based</a>.&#10;     * Programmers should treat instances that are {@linkplain #equals(Object) equal}&#10;     * as interchangeable and should not use them for synchronization, or&#10;     * unpredictable behavior may occur. For example, in a future release,&#10;     * synchronization may fail. Callers should make no assumptions&#10;     * about the identity of the returned instances. This method is free to&#10;     * create new instances or reuse existing ones.&#10;     * </ul>&#10;     *&#10;     * @apiNote&#10;     * For a serializable {@code Entry}, see {@link AbstractMap.SimpleEntry} or&#10;     * {@link AbstractMap.SimpleImmutableEntry}.&#10;     *&#10;     * @param <K> the key's type&#10;     * @param <V> the value's type&#10;     * @param k the key&#10;     * @param v the value&#10;     * @return an {@code Entry} containing the specified key and value&#10;     * @throws NullPointerException if the key or value is {@code null}&#10;     *&#10;     * @see Map#ofEntries Map.ofEntries()&#10;     * @since 9&#10;     "
  ]
  node [
    id 48
    label "setValue"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 49
    label "Entry"
  ]
  node [
    id 50
    label "AbstractMap.SimpleImmutableEntry"
  ]
  node [
    id 51
    label "AbstractMap.SimpleEntry"
  ]
  node [
    id 52
    label "ofEntries"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 53
    label " static Map<K, V> copyOf(Map<? extends K, ? extends V> map)"
    type "method"
    comment "&#10;     * Returns an <a href=&#34;#unmodifiable&#34;>unmodifiable Map</a> containing the entries&#10;     * of the given Map. The given Map must not be null, and it must not contain any&#10;     * null keys or values. If the given Map is subsequently modified, the returned&#10;     * Map will not reflect such modifications.&#10;     *&#10;     * @implNote&#10;     * If the given Map is an <a href=&#34;#unmodifiable&#34;>unmodifiable Map</a>,&#10;     * calling copyOf will generally not create a copy.&#10;     *&#10;     * @param <K> the {@code Map}'s key type&#10;     * @param <V> the {@code Map}'s value type&#10;     * @param map a {@code Map} from which entries are drawn, must be non-null&#10;     * @return a {@code Map} containing the entries of the given {@code Map}&#10;     * @throws NullPointerException if map is null, or if it contains any null keys or values&#10;     * @since 10&#10;     "
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
    target 4
    type "child"
  ]
  edge [
    source 0
    target 5
    type "child"
  ]
  edge [
    source 0
    target 7
    type "child"
  ]
  edge [
    source 0
    target 9
    type "child"
  ]
  edge [
    source 0
    target 10
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
    source 0
    target 47
    type "child"
  ]
  edge [
    source 0
    target 53
    type "child"
  ]
  edge [
    source 5
    target 6
    type "link"
  ]
  edge [
    source 7
    target 8
    type "link"
  ]
  edge [
    source 10
    target 11
    type "link"
  ]
  edge [
    source 13
    target 14
    type "link"
  ]
  edge [
    source 15
    target 16
    type "link"
  ]
  edge [
    source 17
    target 14
    type "link"
  ]
  edge [
    source 19
    target 20
    type "link"
  ]
  edge [
    source 28
    target 29
    type "link"
  ]
  edge [
    source 29
    target 21
    type "child"
  ]
  edge [
    source 29
    target 22
    type "child"
  ]
  edge [
    source 29
    target 24
    type "child"
  ]
  edge [
    source 29
    target 25
    type "child"
  ]
  edge [
    source 29
    target 26
    type "child"
  ]
  edge [
    source 29
    target 27
    type "child"
  ]
  edge [
    source 29
    target 23
    type "child"
  ]
  edge [
    source 29
    target 28
    type "child"
  ]
  edge [
    source 29
    target 30
    type "child"
  ]
  edge [
    source 29
    target 31
    type "child"
  ]
  edge [
    source 29
    target 32
    type "child"
  ]
  edge [
    source 30
    target 29
    type "link"
  ]
  edge [
    source 31
    target 33
    type "link"
  ]
  edge [
    source 31
    target 29
    type "link"
  ]
  edge [
    source 32
    target 29
    type "link"
  ]
  edge [
    source 45
    target 46
    type "link"
  ]
  edge [
    source 47
    target 48
    type "link"
  ]
  edge [
    source 47
    target 49
    type "link"
  ]
  edge [
    source 47
    target 50
    type "link"
  ]
  edge [
    source 47
    target 51
    type "link"
  ]
  edge [
    source 47
    target 52
    type "link"
  ]
]
