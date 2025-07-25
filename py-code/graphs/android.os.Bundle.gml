graph [
  directed 1
  node [
    id 0
    label "android.os.Bundle"
    type "class"
    comment "&#10; * A mapping from String keys to various {@link Parcelable} values.&#10; *&#10; * <p><b>Warning:</b> Note that {@link Bundle} is a lazy container and as such it does NOT implement&#10; * {@link #equals(Object)} or {@link #hashCode()}.&#10; *&#10; * @see PersistableBundle&#10; "
  ]
  node [
    id 1
    label "private void maybePrefillHasFds()"
    type "method"
    comment "&#10;     * If {@link #mParcelledData} is not null, copy the HAS FDS bit from it because it's fast.&#10;     * Otherwise (if {@link #mParcelledData} is already null), leave {@link #FLAG_HAS_FDS_KNOWN}&#10;     * unset, because scanning a map is slower.  We'll do it lazily in&#10;     * {@link #hasFileDescriptors()}.&#10;     "
  ]
  node [
    id 2
    label "FLAG_HAS_FDS_KNOWN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "hasFileDescriptors()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "mParcelledData"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label "public void setClassLoader(ClassLoader loader)"
    type "method"
    comment "&#10;     * Changes the ClassLoader this Bundle uses when instantiating objects.&#10;     *&#10;     * @param loader An explicit ClassLoader to use when instantiating objects&#10;     * inside of the Bundle.&#10;     "
  ]
  node [
    id 6
    label "public ClassLoader getClassLoader()"
    type "method"
    comment "&#10;     * Return the ClassLoader currently associated with this Bundle.&#10;     "
  ]
  node [
    id 7
    label "public Object clone()"
    type "method"
    comment "&#10;     * Clones the current Bundle. The internal map is cloned, but the keys and&#10;     * values to which it refers are copied by reference.&#10;     "
  ]
  node [
    id 8
    label "public Bundle deepCopy()"
    type "method"
    comment "&#10;     * Make a deep copy of the given bundle.  Traverses into inner containers and copies&#10;     * them as well, so they are not shared across bundles.  Will traverse in to&#10;     * {@link Bundle}, {@link PersistableBundle}, {@link ArrayList}, and all types of&#10;     * primitive arrays.  Other types of objects (such as Parcelable or Serializable)&#10;     * are referenced as-is and not copied in any way.&#10;     "
  ]
  node [
    id 9
    label "PersistableBundle"
  ]
  node [
    id 10
    label "Bundle"
  ]
  node [
    id 11
    label "java.util.ArrayList"
    type "class"
    comment "&#10;     * @serial include&#10;     "
  ]
  node [
    id 12
    label "public void clear()"
    type "method"
    comment "&#10;     * Removes all elements from the mapping of this Bundle.&#10;     "
  ]
  node [
    id 13
    label "public void remove(String key)"
    type "method"
    comment "&#10;     * Removes any entry with the given key from the mapping of this Bundle.&#10;     *&#10;     * @param key a String key&#10;     "
  ]
  node [
    id 14
    label "public void putAll(Bundle bundle)"
    type "method"
    comment "&#10;     * Inserts all mappings from the given Bundle into this Bundle.&#10;     *&#10;     * @param bundle a Bundle&#10;     "
  ]
  node [
    id 15
    label "public boolean hasFileDescriptors()"
    type "method"
    comment "&#10;     * Reports whether the bundle contains any parcelled file descriptors.&#10;     "
  ]
  node [
    id 16
    label "public void putByte(@Nullable String key, byte value)"
    type "method"
    comment "&#10;     * Inserts a byte value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a byte&#10;     "
  ]
  node [
    id 17
    label "public void putChar(@Nullable String key, char value)"
    type "method"
    comment "&#10;     * Inserts a char value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a char&#10;     "
  ]
  node [
    id 18
    label "public void putShort(@Nullable String key, short value)"
    type "method"
    comment "&#10;     * Inserts a short value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a short&#10;     "
  ]
  node [
    id 19
    label "public void putFloat(@Nullable String key, float value)"
    type "method"
    comment "&#10;     * Inserts a float value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a float&#10;     "
  ]
  node [
    id 20
    label "public void putCharSequence(@Nullable String key, @Nullable CharSequence value)"
    type "method"
    comment "&#10;     * Inserts a CharSequence value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a CharSequence, or null&#10;     "
  ]
  node [
    id 21
    label "public void putParcelable(@Nullable String key, @Nullable Parcelable value)"
    type "method"
    comment "&#10;     * Inserts a Parcelable value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a Parcelable object, or null&#10;     "
  ]
  node [
    id 22
    label "public void putSize(@Nullable String key, @Nullable Size value)"
    type "method"
    comment "&#10;     * Inserts a Size value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a Size object, or null&#10;     "
  ]
  node [
    id 23
    label "public void putSizeF(@Nullable String key, @Nullable SizeF value)"
    type "method"
    comment "&#10;     * Inserts a SizeF value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a SizeF object, or null&#10;     "
  ]
  node [
    id 24
    label "public void putParcelableArray(@Nullable String key, @Nullable Parcelable[] value)"
    type "method"
    comment "&#10;     * Inserts an array of Parcelable values into the mapping of this Bundle,&#10;     * replacing any existing value for the given key.  Either key or value may&#10;     * be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value an array of Parcelable objects, or null&#10;     "
  ]
  node [
    id 25
    label "public void putParcelableArrayList(@Nullable String key, @Nullable ArrayList<? extends Parcelable> value)"
    type "method"
    comment "&#10;     * Inserts a List of Parcelable values into the mapping of this Bundle,&#10;     * replacing any existing value for the given key.  Either key or value may&#10;     * be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value an ArrayList of Parcelable objects, or null&#10;     "
  ]
  node [
    id 26
    label "public void putSparseParcelableArray(@Nullable String key, @Nullable SparseArray<? extends Parcelable> value)"
    type "method"
    comment "&#10;     * Inserts a SparceArray of Parcelable values into the mapping of this&#10;     * Bundle, replacing any existing value for the given key.  Either key&#10;     * or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a SparseArray of Parcelable objects, or null&#10;     "
  ]
  node [
    id 27
    label "public void putIntegerArrayList(@Nullable String key, @Nullable ArrayList<Integer> value)"
    type "method"
    comment "&#10;     * Inserts an ArrayList<Integer> value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value an ArrayList<Integer> object, or null&#10;     "
  ]
  node [
    id 28
    label "public void putStringArrayList(@Nullable String key, @Nullable ArrayList<String> value)"
    type "method"
    comment "&#10;     * Inserts an ArrayList<String> value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value an ArrayList<String> object, or null&#10;     "
  ]
  node [
    id 29
    label "public void putCharSequenceArrayList(@Nullable String key, @Nullable ArrayList<CharSequence> value)"
    type "method"
    comment "&#10;     * Inserts an ArrayList<CharSequence> value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value an ArrayList<CharSequence> object, or null&#10;     "
  ]
  node [
    id 30
    label "public void putSerializable(@Nullable String key, @Nullable Serializable value)"
    type "method"
    comment "&#10;     * Inserts a Serializable value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a Serializable object, or null&#10;     "
  ]
  node [
    id 31
    label "public void putByteArray(@Nullable String key, @Nullable byte[] value)"
    type "method"
    comment "&#10;     * Inserts a byte array value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a byte array object, or null&#10;     "
  ]
  node [
    id 32
    label "public void putShortArray(@Nullable String key, @Nullable short[] value)"
    type "method"
    comment "&#10;     * Inserts a short array value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a short array object, or null&#10;     "
  ]
  node [
    id 33
    label "public void putCharArray(@Nullable String key, @Nullable char[] value)"
    type "method"
    comment "&#10;     * Inserts a char array value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a char array object, or null&#10;     "
  ]
  node [
    id 34
    label "public void putFloatArray(@Nullable String key, @Nullable float[] value)"
    type "method"
    comment "&#10;     * Inserts a float array value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a float array object, or null&#10;     "
  ]
  node [
    id 35
    label "public void putCharSequenceArray(@Nullable String key, @Nullable CharSequence[] value)"
    type "method"
    comment "&#10;     * Inserts a CharSequence array value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a CharSequence array object, or null&#10;     "
  ]
  node [
    id 36
    label "public void putBundle(@Nullable String key, @Nullable Bundle value)"
    type "method"
    comment "&#10;     * Inserts a Bundle value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * @param key a String, or null&#10;     * @param value a Bundle object, or null&#10;     "
  ]
  node [
    id 37
    label "public void putBinder(@Nullable String key, @Nullable IBinder value)"
    type "method"
    comment "&#10;     * Inserts an {@link IBinder} value into the mapping of this Bundle, replacing&#10;     * any existing value for the given key.  Either key or value may be null.&#10;     *&#10;     * <p class=&#34;note&#34;>You should be very careful when using this function.  In many&#10;     * places where Bundles are used (such as inside of Intent objects), the Bundle&#10;     * can live longer inside of another process than the process that had originally&#10;     * created it.  In that case, the IBinder you supply here will become invalid&#10;     * when your process goes away, and no longer usable, even if a new process is&#10;     * created for you later on.</p>&#10;     *&#10;     * @param key a String, or null&#10;     * @param value an IBinder object, or null&#10;     "
  ]
  node [
    id 38
    label "IBinder"
  ]
  node [
    id 39
    label "public byte getByte(String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or (byte) 0 if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @return a byte value&#10;     "
  ]
  node [
    id 40
    label "public Byte getByte(String key, byte defaultValue)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or defaultValue if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @param defaultValue Value to return if key does not exist&#10;     * @return a byte value&#10;     "
  ]
  node [
    id 41
    label "public char getChar(String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or (char) 0 if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @return a char value&#10;     "
  ]
  node [
    id 42
    label "public char getChar(String key, char defaultValue)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or defaultValue if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @param defaultValue Value to return if key does not exist&#10;     * @return a char value&#10;     "
  ]
  node [
    id 43
    label "public short getShort(String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or (short) 0 if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @return a short value&#10;     "
  ]
  node [
    id 44
    label "public short getShort(String key, short defaultValue)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or defaultValue if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @param defaultValue Value to return if key does not exist&#10;     * @return a short value&#10;     "
  ]
  node [
    id 45
    label "public float getFloat(String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or 0.0f if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @return a float value&#10;     "
  ]
  node [
    id 46
    label "public float getFloat(String key, float defaultValue)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or defaultValue if&#10;     * no mapping of the desired type exists for the given key.&#10;     *&#10;     * @param key a String&#10;     * @param defaultValue Value to return if key does not exist&#10;     * @return a float value&#10;     "
  ]
  node [
    id 47
    label "public CharSequence getCharSequence(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a CharSequence value, or null&#10;     "
  ]
  node [
    id 48
    label "public CharSequence getCharSequence(@Nullable String key, CharSequence defaultValue)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or defaultValue if&#10;     * no mapping of the desired type exists for the given key or if a null&#10;     * value is explicitly associatd with the given key.&#10;     *&#10;     * @param key a String, or null&#10;     * @param defaultValue Value to return if key does not exist or if a null&#10;     *     value is associated with the given key.&#10;     * @return the CharSequence value associated with the given key, or defaultValue&#10;     *     if no valid CharSequence object is currently mapped to that key.&#10;     "
  ]
  node [
    id 49
    label "public Size getSize(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a Size value, or null&#10;     "
  ]
  node [
    id 50
    label "public SizeF getSizeF(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a Size value, or null&#10;     "
  ]
  node [
    id 51
    label "public Bundle getBundle(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a Bundle value, or null&#10;     "
  ]
  node [
    id 52
    label "public T getParcelable(@Nullable String key, @NonNull Class<T> clazz)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key or {@code null} if:&#10;     * <ul>&#10;     *     <li>No mapping of the desired type exists for the given key.&#10;     *     <li>A {@code null} value is explicitly associated with the key.&#10;     *     <li>The object is not of type {@code clazz}.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note: </b> if the expected value is not a class provided by the Android platform,&#10;     * you must call {@link #setClassLoader(ClassLoader)} with the proper {@link ClassLoader} first.&#10;     * Otherwise, this method might throw an exception or return {@code null}.&#10;     *&#10;     * <p><b>Warning: </b> the class that implements {@link Parcelable} has to be the immediately&#10;     * enclosing class of the runtime type of its CREATOR field (that is,&#10;     * {@link Class#getEnclosingClass()} has to return the parcelable implementing class),&#10;     * otherwise this method might throw an exception. If the Parcelable class does not enclose the&#10;     * CREATOR, use the deprecated {@link #getParcelable(String)} instead.&#10;     *&#10;     * @param key a String, or {@code null}&#10;     * @param clazz The type of the object expected&#10;     * @return a Parcelable value, or {@code null}&#10;     "
  ]
  node [
    id 53
    label "getEnclosingClass()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 54
    label "getParcelable(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 55
    label "ClassLoader"
  ]
  node [
    id 56
    label "Parcelable"
  ]
  node [
    id 57
    label "setClassLoader(ClassLoader)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 58
    label "public T[] getParcelableArray(@Nullable String key, @NonNull Class<T> clazz)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or {@code null} if:&#10;     * <ul>&#10;     *     <li>No mapping of the desired type exists for the given key.&#10;     *     <li>A {@code null} value is explicitly associated with the key.&#10;     *     <li>The object is not of type {@code clazz}.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note: </b> if the expected value is not a class provided by the Android platform,&#10;     * you must call {@link #setClassLoader(ClassLoader)} with the proper {@link ClassLoader} first.&#10;     * Otherwise, this method might throw an exception or return {@code null}.&#10;     *&#10;     * <p><b>Warning: </b> if the list contains items implementing the {@link Parcelable} interface,&#10;     * the class that implements {@link Parcelable} has to be the immediately&#10;     * enclosing class of the runtime type of its CREATOR field (that is,&#10;     * {@link Class#getEnclosingClass()} has to return the parcelable implementing class),&#10;     * otherwise this method might throw an exception. If the Parcelable class does not enclose the&#10;     * CREATOR, use the deprecated {@link #getParcelableArray(String)} instead.&#10;     *&#10;     * @param key a String, or {@code null}&#10;     * @param clazz The type of the items inside the array. This is only verified when unparceling.&#10;     * @return a Parcelable[] value, or {@code null}&#10;     "
  ]
  node [
    id 59
    label "getParcelableArray(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 60
    label "public ArrayList<T> getParcelableArrayList(@Nullable String key, @NonNull Class<? extends T> clazz)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or {@code null} if:&#10;     * <ul>&#10;     *     <li>No mapping of the desired type exists for the given key.&#10;     *     <li>A {@code null} value is explicitly associated with the key.&#10;     *     <li>The object is not of type {@code clazz}.&#10;     * </ul>&#10;     *&#10;     * <p><b>Note: </b> if the expected value is not a class provided by the Android platform,&#10;     * you must call {@link #setClassLoader(ClassLoader)} with the proper {@link ClassLoader} first.&#10;     * Otherwise, this method might throw an exception or return {@code null}.&#10;     *&#10;     * <p><b>Warning: </b> if the list contains items implementing the {@link Parcelable} interface,&#10;     * the class that implements {@link Parcelable} has to be the immediately&#10;     * enclosing class of the runtime type of its CREATOR field (that is,&#10;     * {@link Class#getEnclosingClass()} has to return the parcelable implementing class),&#10;     * otherwise this method might throw an exception. If the Parcelable class does not enclose the&#10;     * CREATOR, use the deprecated {@link #getParcelableArrayList(String)} instead.&#10;     *&#10;     * @param key   a String, or {@code null}&#10;     * @param clazz The type of the items inside the array list. This is only verified when&#10;     *     unparceling.&#10;     * @return an ArrayList<T> value, or {@code null}&#10;     "
  ]
  node [
    id 61
    label "getParcelableArrayList(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 62
    label "public SparseArray<T> getSparseParcelableArray(@Nullable String key, @NonNull Class<? extends T> clazz)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or {@code null} if:&#10;     * <ul>&#10;     *     <li>No mapping of the desired type exists for the given key.&#10;     *     <li>A {@code null} value is explicitly associated with the key.&#10;     *     <li>The object is not of type {@code clazz}.&#10;     * </ul>&#10;     *&#10;     * <p><b>Warning: </b> if the list contains items implementing the {@link Parcelable} interface,&#10;     * the class that implements {@link Parcelable} has to be the immediately&#10;     * enclosing class of the runtime type of its CREATOR field (that is,&#10;     * {@link Class#getEnclosingClass()} has to return the parcelable implementing class),&#10;     * otherwise this method might throw an exception. If the Parcelable class does not enclose the&#10;     * CREATOR, use the deprecated {@link #getSparseParcelableArray(String)} instead.&#10;     *&#10;     * @param key a String, or null&#10;     * @param clazz The type of the items inside the sparse array. This is only verified when&#10;     *     unparceling.&#10;     * @return a SparseArray of T values, or null&#10;     "
  ]
  node [
    id 63
    label "getSparseParcelableArray(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 64
    label "public T getSerializable(@Nullable String key, @NonNull Class<T> clazz)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or {@code null} if:&#10;     * <ul>&#10;     *     <li>No mapping of the desired type exists for the given key.&#10;     *     <li>A {@code null} value is explicitly associated with the key.&#10;     *     <li>The object is not of type {@code clazz}.&#10;     * </ul>&#10;     *&#10;     * @param key   a String, or null&#10;     * @param clazz The expected class of the returned type&#10;     * @return a Serializable value, or null&#10;     "
  ]
  node [
    id 65
    label "public ArrayList<Integer> getIntegerArrayList(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return an ArrayList<String> value, or null&#10;     "
  ]
  node [
    id 66
    label "public ArrayList<String> getStringArrayList(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return an ArrayList<String> value, or null&#10;     "
  ]
  node [
    id 67
    label "public ArrayList<CharSequence> getCharSequenceArrayList(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return an ArrayList<CharSequence> value, or null&#10;     "
  ]
  node [
    id 68
    label "public byte[] getByteArray(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a byte[] value, or null&#10;     "
  ]
  node [
    id 69
    label "public short[] getShortArray(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a short[] value, or null&#10;     "
  ]
  node [
    id 70
    label "public char[] getCharArray(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a char[] value, or null&#10;     "
  ]
  node [
    id 71
    label "public float[] getFloatArray(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a float[] value, or null&#10;     "
  ]
  node [
    id 72
    label "public CharSequence[] getCharSequenceArray(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return a CharSequence[] value, or null&#10;     "
  ]
  node [
    id 73
    label "public IBinder getBinder(@Nullable String key)"
    type "method"
    comment "&#10;     * Returns the value associated with the given key, or null if&#10;     * no mapping of the desired type exists for the given key or a null&#10;     * value is explicitly associated with the key.&#10;     *&#10;     * @param key a String, or null&#10;     * @return an IBinder value, or null&#10;     "
  ]
  node [
    id 74
    label "public int describeContents()"
    type "method"
    comment "&#10;     * Report the nature of this Parcelable's contents&#10;     "
  ]
  node [
    id 75
    label "public void writeToParcel(Parcel parcel, int flags)"
    type "method"
    comment "&#10;     * Writes the Bundle contents to a Parcel, typically in order for&#10;     * it to be passed through an IBinder connection.&#10;     * @param parcel The parcel to copy this bundle to.&#10;     "
  ]
  node [
    id 76
    label "public void readFromParcel(Parcel parcel)"
    type "method"
    comment "&#10;     * Reads the Parcel contents into this Bundle, typically in order for&#10;     * it to be passed through an IBinder connection.&#10;     * @param parcel The parcel to overwrite this bundle from.&#10;     "
  ]
  node [
    id 77
    label "public synchronized String toString()"
    type "method"
    comment "&#10;     * Returns a string representation of the {@link Bundle} that may be suitable for debugging. It&#10;     * won't print the internal map if its content hasn't been unparcelled.&#10;     "
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 5
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
    target 46
    type "child"
  ]
  edge [
    source 0
    target 47
    type "child"
  ]
  edge [
    source 0
    target 48
    type "child"
  ]
  edge [
    source 0
    target 49
    type "child"
  ]
  edge [
    source 0
    target 50
    type "child"
  ]
  edge [
    source 0
    target 51
    type "child"
  ]
  edge [
    source 0
    target 52
    type "child"
  ]
  edge [
    source 0
    target 58
    type "child"
  ]
  edge [
    source 0
    target 60
    type "child"
  ]
  edge [
    source 0
    target 62
    type "child"
  ]
  edge [
    source 0
    target 64
    type "child"
  ]
  edge [
    source 0
    target 65
    type "child"
  ]
  edge [
    source 0
    target 66
    type "child"
  ]
  edge [
    source 0
    target 67
    type "child"
  ]
  edge [
    source 0
    target 68
    type "child"
  ]
  edge [
    source 0
    target 69
    type "child"
  ]
  edge [
    source 0
    target 70
    type "child"
  ]
  edge [
    source 0
    target 71
    type "child"
  ]
  edge [
    source 0
    target 72
    type "child"
  ]
  edge [
    source 0
    target 73
    type "child"
  ]
  edge [
    source 0
    target 74
    type "child"
  ]
  edge [
    source 0
    target 75
    type "child"
  ]
  edge [
    source 0
    target 76
    type "child"
  ]
  edge [
    source 0
    target 77
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
  edge [
    source 1
    target 3
    type "link"
  ]
  edge [
    source 1
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
    target 10
    type "link"
  ]
  edge [
    source 8
    target 11
    type "link"
  ]
  edge [
    source 37
    target 38
    type "link"
  ]
  edge [
    source 52
    target 53
    type "link"
  ]
  edge [
    source 52
    target 54
    type "link"
  ]
  edge [
    source 52
    target 55
    type "link"
  ]
  edge [
    source 52
    target 56
    type "link"
  ]
  edge [
    source 52
    target 57
    type "link"
  ]
  edge [
    source 58
    target 59
    type "link"
  ]
  edge [
    source 58
    target 53
    type "link"
  ]
  edge [
    source 58
    target 55
    type "link"
  ]
  edge [
    source 58
    target 56
    type "link"
  ]
  edge [
    source 58
    target 57
    type "link"
  ]
  edge [
    source 60
    target 61
    type "link"
  ]
  edge [
    source 60
    target 53
    type "link"
  ]
  edge [
    source 60
    target 55
    type "link"
  ]
  edge [
    source 60
    target 56
    type "link"
  ]
  edge [
    source 60
    target 57
    type "link"
  ]
  edge [
    source 62
    target 63
    type "link"
  ]
  edge [
    source 62
    target 53
    type "link"
  ]
  edge [
    source 62
    target 56
    type "link"
  ]
  edge [
    source 77
    target 10
    type "link"
  ]
]
