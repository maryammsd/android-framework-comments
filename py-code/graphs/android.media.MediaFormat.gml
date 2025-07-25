graph [
  directed 1
  node [
    id 0
    label "android.media.MediaFormat"
    type "class"
    comment "&#10; * Encapsulates the information describing the format of media data, be it audio or video, as&#10; * well as optional feature metadata.&#10; * <p>&#10; * The format of the media data is specified as key/value pairs. Keys are strings. Values can&#10; * be integer, long, float, String or ByteBuffer.&#10; * <p>&#10; * The feature metadata is specificed as string/boolean pairs.&#10; * <p>&#10; * Keys common to all audio/video formats, <b>all keys not marked optional are mandatory</b>:&#10; *&#10; * <table>&#10; * <tr><th>Name</th><th>Value Type</th><th>Description</th></tr>&#10; * <tr><td>{@link #KEY_MIME}</td><td>String</td><td>The type of the format.</td></tr>&#10; * <tr><td>{@link #KEY_CODECS_STRING}</td><td>String</td><td>optional, the RFC 6381 codecs string of the MediaFormat</td></tr>&#10; * <tr><td>{@link #KEY_MAX_INPUT_SIZE}</td><td>Integer</td><td>optional, maximum size of a buffer of input data</td></tr>&#10; * <tr><td>{@link #KEY_PIXEL_ASPECT_RATIO_WIDTH}</td><td>Integer</td><td>optional, the pixel aspect ratio width</td></tr>&#10; * <tr><td>{@link #KEY_PIXEL_ASPECT_RATIO_HEIGHT}</td><td>Integer</td><td>optional, the pixel aspect ratio height</td></tr>&#10; * <tr><td>{@link #KEY_BIT_RATE}</td><td>Integer</td><td><b>encoder-only</b>, desired bitrate in bits/second</td></tr>&#10; * <tr><td>{@link #KEY_DURATION}</td><td>long</td><td>the duration of the content (in microseconds)</td></tr>&#10; * </table>&#10; *&#10; * Video formats have the following keys:&#10; * <table>&#10; * <tr><th>Name</th><th>Value Type</th><th>Description</th></tr>&#10; * <tr><td>{@link #KEY_WIDTH}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_HEIGHT}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_COLOR_FORMAT}</td><td>Integer</td><td>set by the user&#10; *         for encoders, readable in the output format of decoders</b></td></tr>&#10; * <tr><td>{@link #KEY_FRAME_RATE}</td><td>Integer or Float</td><td>required for <b>encoders</b>,&#10; *         optional for <b>decoders</b></td></tr>&#10; * <tr><td>{@link #KEY_CAPTURE_RATE}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_I_FRAME_INTERVAL}</td><td>Integer (or Float)</td><td><b>encoder-only</b>,&#10; *         time-interval between key frames.&#10; *         Float support added in {@link android.os.Build.VERSION_CODES#N_MR1}</td></tr>&#10; * <tr><td>{@link #KEY_INTRA_REFRESH_PERIOD}</td><td>Integer</td><td><b>encoder-only</b>, optional</td></tr>&#10; * <tr><td>{@link #KEY_LATENCY}</td><td>Integer</td><td><b>encoder-only</b>, optional</td></tr>&#10; * <tr><td>{@link #KEY_MAX_WIDTH}</td><td>Integer</td><td><b>decoder-only</b>, optional, max-resolution width</td></tr>&#10; * <tr><td>{@link #KEY_MAX_HEIGHT}</td><td>Integer</td><td><b>decoder-only</b>, optional, max-resolution height</td></tr>&#10; * <tr><td>{@link #KEY_REPEAT_PREVIOUS_FRAME_AFTER}</td><td>Long</td><td><b>encoder in surface-mode&#10; *         only</b>, optional</td></tr>&#10; * <tr><td>{@link #KEY_PUSH_BLANK_BUFFERS_ON_STOP}</td><td>Integer(1)</td><td><b>decoder rendering&#10; *         to a surface only</b>, optional</td></tr>&#10; * <tr><td>{@link #KEY_TEMPORAL_LAYERING}</td><td>String</td><td><b>encoder only</b>, optional,&#10; *         temporal-layering schema</td></tr>&#10; * </table>&#10; * Specify both {@link #KEY_MAX_WIDTH} and {@link #KEY_MAX_HEIGHT} to enable&#10; * adaptive playback (seamless resolution change) for a video decoder that&#10; * supports it ({@link MediaCodecInfo.CodecCapabilities#FEATURE_AdaptivePlayback}).&#10; * The values are used as hints for the codec: they are the maximum expected&#10; * resolution to prepare for.  Depending on codec support, preparing for larger&#10; * maximum resolution may require more memory even if that resolution is never&#10; * reached.  These fields have no effect for codecs that do not support adaptive&#10; * playback.<br /><br />&#10; *&#10; * Audio formats have the following keys:&#10; * <table>&#10; * <tr><th>Name</th><th>Value Type</th><th>Description</th></tr>&#10; * <tr><td>{@link #KEY_CHANNEL_COUNT}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_SAMPLE_RATE}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_PCM_ENCODING}</td><td>Integer</td><td>optional</td></tr>&#10; * <tr><td>{@link #KEY_IS_ADTS}</td><td>Integer</td><td>optional, if <em>decoding</em> AAC audio content, setting this key to 1 indicates that each audio frame is prefixed by the ADTS header.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_PROFILE}</td><td>Integer</td><td><b>encoder-only</b>, optional, if content is AAC audio, specifies the desired profile.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_SBR_MODE}</td><td>Integer</td><td><b>encoder-only</b>, optional, if content is AAC audio, specifies the desired SBR mode.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_TARGET_REFERENCE_LEVEL}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the target reference level.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_ENCODED_TARGET_LEVEL}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the target reference level used at encoder.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_BOOST_FACTOR}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the DRC boost factor.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_ATTENUATION_FACTOR}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the DRC attenuation factor.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_HEAVY_COMPRESSION}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies whether to use heavy compression.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_MAX_OUTPUT_CHANNEL_COUNT}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the maximum number of channels the decoder outputs.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_EFFECT_TYPE}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the MPEG-D DRC effect type to use.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_OUTPUT_LOUDNESS}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, returns the DRC output loudness.</td></tr>&#10; * <tr><td>{@link #KEY_AAC_DRC_ALBUM_MODE}</td><td>Integer</td><td><b>decoder-only</b>, optional, if content is AAC audio, specifies the whether MPEG-D DRC Album Mode is active or not.</td></tr>&#10; * <tr><td>{@link #KEY_CHANNEL_MASK}</td><td>Integer</td><td>optional, a mask of audio channel assignments</td></tr>&#10; * <tr><td>{@link #KEY_ENCODER_DELAY}</td><td>Integer</td><td>optional, the number of frames to trim from the start of the decoded audio stream.</td></tr>&#10; * <tr><td>{@link #KEY_ENCODER_PADDING}</td><td>Integer</td><td>optional, the number of frames to trim from the end of the decoded audio stream.</td></tr>&#10; * <tr><td>{@link #KEY_FLAC_COMPRESSION_LEVEL}</td><td>Integer</td><td><b>encoder-only</b>, optional, if content is FLAC audio, specifies the desired compression level.</td></tr>&#10; * <tr><td>{@link #KEY_MPEGH_PROFILE_LEVEL_INDICATION}</td><td>Integer</td>&#10; *     <td><b>decoder-only</b>, optional, if content is MPEG-H audio,&#10; *         specifies the profile and level of the stream.</td></tr>&#10; * <tr><td>{@link #KEY_MPEGH_COMPATIBLE_SETS}</td><td>ByteBuffer</td>&#10; *     <td><b>decoder-only</b>, optional, if content is MPEG-H audio,&#10; *         specifies the compatible sets (profile and level) of the stream.</td></tr>&#10; * <tr><td>{@link #KEY_MPEGH_REFERENCE_CHANNEL_LAYOUT}</td>&#10; *     <td>Integer</td><td><b>decoder-only</b>, optional, if content is MPEG-H audio,&#10; *         specifies the preferred reference channel layout of the stream.</td></tr>&#10; * <tr><td>{@link #KEY_MAX_BUFFER_BATCH_OUTPUT_SIZE}</td><td>Integer</td><td>optional, used with&#10; *         large audio frame support, specifies max size of output buffer in bytes.</td></tr>&#10; * <tr><td>{@link #KEY_BUFFER_BATCH_THRESHOLD_OUTPUT_SIZE}</td><td>Integer</td><td>optional,&#10; *         used with large audio frame support, specifies threshold output size in bytes.</td></tr>&#10; * </table>&#10; *&#10; * Subtitle formats have the following keys:&#10; * <table>&#10; * <tr><td>{@link #KEY_MIME}</td><td>String</td><td>The type of the format.</td></tr>&#10; * <tr><td>{@link #KEY_LANGUAGE}</td><td>String</td><td>The language of the content.</td></tr>&#10; * <tr><td>{@link #KEY_CAPTION_SERVICE_NUMBER}</td><td>int</td><td>optional, the closed-caption service or channel number.</td></tr>&#10; * </table>&#10; *&#10; * Image formats have the following keys:&#10; * <table>&#10; * <tr><td>{@link #KEY_MIME}</td><td>String</td><td>The type of the format.</td></tr>&#10; * <tr><td>{@link #KEY_WIDTH}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_HEIGHT}</td><td>Integer</td><td></td></tr>&#10; * <tr><td>{@link #KEY_COLOR_FORMAT}</td><td>Integer</td><td>set by the user&#10; *         for encoders, readable in the output format of decoders</b></td></tr>&#10; * <tr><td>{@link #KEY_TILE_WIDTH}</td><td>Integer</td><td>required if the image has grid</td></tr>&#10; * <tr><td>{@link #KEY_TILE_HEIGHT}</td><td>Integer</td><td>required if the image has grid</td></tr>&#10; * <tr><td>{@link #KEY_GRID_ROWS}</td><td>Integer</td><td>required if the image has grid</td></tr>&#10; * <tr><td>{@link #KEY_GRID_COLUMNS}</td><td>Integer</td><td>required if the image has grid</td></tr>&#10; * </table>&#10; "
  ]
  node [
    id 1
    label "public final boolean containsKey(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns true iff a key of the given name exists in the format.&#10;     "
  ]
  node [
    id 2
    label "public final boolean containsFeature(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns true iff a feature of the given name exists in the format.&#10;     "
  ]
  node [
    id 3
    label "public final int getValueTypeForKey(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value type for a key. If the key does not exist, it returns TYPE_NULL.&#10;     "
  ]
  node [
    id 4
    label "public final Number getNumber(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value of a numeric key. This is provided as a convenience method for keys&#10;     * that may take multiple numeric types, such as {@link #KEY_FRAME_RATE}, or {@link&#10;     * #KEY_I_FRAME_INTERVAL}.&#10;     *&#10;     * @return null if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is ByteBuffer or String&#10;     "
  ]
  node [
    id 5
    label "KEY_FRAME_RATE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 6
    label "KEY_I_FRAME_INTERVAL"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "public final Number getNumber(@NonNull String name, @NonNull Number defaultValue)"
    type "method"
    comment "&#10;     * Returns the value of a numeric key, or the default value if the key is missing.&#10;     *&#10;     * @return defaultValue if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is ByteBuffer or String&#10;     "
  ]
  node [
    id 8
    label "public final int getInteger(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value of an integer key.&#10;     *&#10;     * @throws NullPointerException if the key does not exist or the stored value for the key is&#10;     *         null&#10;     * @throws ClassCastException if the stored value for the key is long, float, ByteBuffer or&#10;     *         String&#10;     "
  ]
  node [
    id 9
    label "public final int getInteger(@NonNull String name, int defaultValue)"
    type "method"
    comment "&#10;     * Returns the value of an integer key, or the default value if the key is missing.&#10;     *&#10;     * @return defaultValue if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is long, float, ByteBuffer or&#10;     *         String&#10;     "
  ]
  node [
    id 10
    label "public final long getLong(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value of a long key.&#10;     *&#10;     * @throws NullPointerException if the key does not exist or the stored value for the key is&#10;     *         null&#10;     * @throws ClassCastException if the stored value for the key is int, float, ByteBuffer or&#10;     *         String&#10;     "
  ]
  node [
    id 11
    label "public final long getLong(@NonNull String name, long defaultValue)"
    type "method"
    comment "&#10;     * Returns the value of a long key, or the default value if the key is missing.&#10;     *&#10;     * @return defaultValue if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is int, float, ByteBuffer or&#10;     *         String&#10;     "
  ]
  node [
    id 12
    label "public final float getFloat(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value of a float key.&#10;     *&#10;     * @throws NullPointerException if the key does not exist or the stored value for the key is&#10;     *         null&#10;     * @throws ClassCastException if the stored value for the key is int, long, ByteBuffer or&#10;     *         String&#10;     "
  ]
  node [
    id 13
    label "public final float getFloat(@NonNull String name, float defaultValue)"
    type "method"
    comment "&#10;     * Returns the value of a float key, or the default value if the key is missing.&#10;     *&#10;     * @return defaultValue if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is int, long, ByteBuffer or&#10;     *         String&#10;     "
  ]
  node [
    id 14
    label "public final String getString(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value of a string key.&#10;     *&#10;     * @return null if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is int, long, float or ByteBuffer&#10;     "
  ]
  node [
    id 15
    label "public final String getString(@NonNull String name, @NonNull String defaultValue)"
    type "method"
    comment "&#10;     * Returns the value of a string key, or the default value if the key is missing.&#10;     *&#10;     * @return defaultValue if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is int, long, float or ByteBuffer&#10;     "
  ]
  node [
    id 16
    label "public final ByteBuffer getByteBuffer(@NonNull String name)"
    type "method"
    comment "&#10;     * Returns the value of a ByteBuffer key.&#10;     *&#10;     * @return null if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is int, long, float or String&#10;     "
  ]
  node [
    id 17
    label "public final ByteBuffer getByteBuffer(@NonNull String name, @NonNull ByteBuffer defaultValue)"
    type "method"
    comment "&#10;     * Returns the value of a ByteBuffer key, or the default value if the key is missing.&#10;     *&#10;     * @return defaultValue if the key does not exist or the stored value for the key is null&#10;     * @throws ClassCastException if the stored value for the key is int, long, float or String&#10;     "
  ]
  node [
    id 18
    label "public boolean getFeatureEnabled(@NonNull String feature)"
    type "method"
    comment "&#10;     * Returns whether a feature is to be enabled ({@code true}) or disabled&#10;     * ({@code false}).&#10;     *&#10;     * @param feature the name of a {@link MediaCodecInfo.CodecCapabilities} feature.&#10;     *&#10;     * @throws IllegalArgumentException if the feature was neither set to be enabled&#10;     *         nor to be disabled.&#10;     "
  ]
  node [
    id 19
    label "MediaCodecInfo.CodecCapabilities"
  ]
  node [
    id 20
    label "public final void setInteger(@NonNull String name, int value)"
    type "method"
    comment "&#10;     * Sets the value of an integer key.&#10;     "
  ]
  node [
    id 21
    label "public final void setLong(@NonNull String name, long value)"
    type "method"
    comment "&#10;     * Sets the value of a long key.&#10;     "
  ]
  node [
    id 22
    label "public final void setFloat(@NonNull String name, float value)"
    type "method"
    comment "&#10;     * Sets the value of a float key.&#10;     "
  ]
  node [
    id 23
    label "public final void setString(@NonNull String name, @Nullable String value)"
    type "method"
    comment "&#10;     * Sets the value of a string key.&#10;     * <p>&#10;     * If value is {@code null}, it sets a null value that behaves similarly to a missing key.&#10;     * This could be used prior to API level {@link android os.Build.VERSION_CODES#Q} to effectively&#10;     * remove a key.&#10;     "
  ]
  node [
    id 24
    label "android"
  ]
  node [
    id 25
    label "public final void setByteBuffer(@NonNull String name, @Nullable ByteBuffer bytes)"
    type "method"
    comment "&#10;     * Sets the value of a ByteBuffer key.&#10;     * <p>&#10;     * If value is {@code null}, it sets a null value that behaves similarly to a missing key.&#10;     * This could be used prior to API level {@link android os.Build.VERSION_CODES#Q} to effectively&#10;     * remove a key.&#10;     "
  ]
  node [
    id 26
    label "public final void removeKey(@NonNull String name)"
    type "method"
    comment "&#10;     * Removes a value of a given key if present. Has no effect if the key is not present.&#10;     "
  ]
  node [
    id 27
    label "public final void removeFeature(@NonNull String name)"
    type "method"
    comment "&#10;     * Removes a given feature setting if present. Has no effect if the feature setting is not&#10;     * present.&#10;     "
  ]
  node [
    id 28
    label "public final java.util.Set<String> getKeys()"
    type "method"
    comment "&#10;     * Returns a {@link java.util.Set Set} view of the keys contained in this MediaFormat.&#10;     *&#10;     * The set is backed by the MediaFormat object, so changes to the format are reflected in the&#10;     * set, and vice-versa. If the format is modified while an iteration over the set is in progress&#10;     * (except through the iterator's own remove operation), the results of the iteration are&#10;     * undefined. The set supports element removal, which removes the corresponding mapping from the&#10;     * format, via the Iterator.remove, Set.remove, removeAll, retainAll, and clear operations.&#10;     * It does not support the add or addAll operations.&#10;     "
  ]
  node [
    id 29
    label "java.util.Set"
    type "class"
    comment ""
  ]
  node [
    id 30
    label " int size()"
    type "method"
    comment "&#10;     * Returns the number of elements in this set (its cardinality).  If this&#10;     * set contains more than {@code Integer.MAX_VALUE} elements, returns&#10;     * {@code Integer.MAX_VALUE}.&#10;     *&#10;     * @return the number of elements in this set (its cardinality)&#10;     "
  ]
  node [
    id 31
    label " boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if this set contains no elements.&#10;     *&#10;     * @return {@code true} if this set contains no elements&#10;     "
  ]
  node [
    id 32
    label " boolean contains(Object o)"
    type "method"
    comment "&#10;     * Returns {@code true} if this set contains the specified element.&#10;     * More formally, returns {@code true} if and only if this set&#10;     * contains an element {@code e} such that&#10;     * {@code Objects.equals(o, e)}.&#10;     *&#10;     * @param o element whose presence in this set is to be tested&#10;     * @return {@code true} if this set contains the specified element&#10;     * @throws ClassCastException if the type of the specified element&#10;     *         is incompatible with this set&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         set does not permit null elements&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     "
  ]
  node [
    id 33
    label " Iterator<E> iterator()"
    type "method"
    comment "&#10;     * Returns an iterator over the elements in this set.  The elements are&#10;     * returned in no particular order (unless this set is an instance of some&#10;     * class that provides a guarantee).&#10;     *&#10;     * @return an iterator over the elements in this set&#10;     "
  ]
  node [
    id 34
    label " Object[] toArray()"
    type "method"
    comment "&#10;     * Returns an array containing all of the elements in this set.&#10;     * If this set makes any guarantees as to what order its elements&#10;     * are returned by its iterator, this method must return the&#10;     * elements in the same order.&#10;     *&#10;     * <p>The returned array will be &#34;safe&#34; in that no references to it&#10;     * are maintained by this set.  (In other words, this method must&#10;     * allocate a new array even if this set is backed by an array).&#10;     * The caller is thus free to modify the returned array.&#10;     *&#10;     * <p>This method acts as bridge between array-based and collection-based&#10;     * APIs.&#10;     *&#10;     * @return an array containing all the elements in this set&#10;     "
  ]
  node [
    id 35
    label " T[] toArray(T[] a)"
    type "method"
    comment "&#10;     * Returns an array containing all of the elements in this set; the&#10;     * runtime type of the returned array is that of the specified array.&#10;     * If the set fits in the specified array, it is returned therein.&#10;     * Otherwise, a new array is allocated with the runtime type of the&#10;     * specified array and the size of this set.&#10;     *&#10;     * <p>If this set fits in the specified array with room to spare&#10;     * (i.e., the array has more elements than this set), the element in&#10;     * the array immediately following the end of the set is set to&#10;     * {@code null}.  (This is useful in determining the length of this&#10;     * set <i>only</i> if the caller knows that this set does not contain&#10;     * any null elements.)&#10;     *&#10;     * <p>If this set makes any guarantees as to what order its elements&#10;     * are returned by its iterator, this method must return the elements&#10;     * in the same order.&#10;     *&#10;     * <p>Like the {@link #toArray()} method, this method acts as bridge between&#10;     * array-based and collection-based APIs.  Further, this method allows&#10;     * precise control over the runtime type of the output array, and may,&#10;     * under certain circumstances, be used to save allocation costs.&#10;     *&#10;     * <p>Suppose {@code x} is a set known to contain only strings.&#10;     * The following code can be used to dump the set into a newly allocated&#10;     * array of {@code String}:&#10;     *&#10;     * <pre>&#10;     *     String[] y = x.toArray(new String[0]);</pre>&#10;     *&#10;     * Note that {@code toArray(new Object[0])} is identical in function to&#10;     * {@code toArray()}.&#10;     *&#10;     * @param a the array into which the elements of this set are to be&#10;     *        stored, if it is big enough; otherwise, a new array of the same&#10;     *        runtime type is allocated for this purpose.&#10;     * @return an array containing all the elements in this set&#10;     * @throws ArrayStoreException if the runtime type of the specified array&#10;     *         is not a supertype of the runtime type of every element in this&#10;     *         set&#10;     * @throws NullPointerException if the specified array is null&#10;     "
  ]
  node [
    id 36
    label "toArray()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 37
    label " boolean add(E e)"
    type "method"
    comment "&#10;     * Adds the specified element to this set if it is not already present&#10;     * (optional operation).  More formally, adds the specified element&#10;     * {@code e} to this set if the set contains no element {@code e2}&#10;     * such that&#10;     * {@code Objects.equals(e, e2)}.&#10;     * If this set already contains the element, the call leaves the set&#10;     * unchanged and returns {@code false}.  In combination with the&#10;     * restriction on constructors, this ensures that sets never contain&#10;     * duplicate elements.&#10;     *&#10;     * <p>The stipulation above does not imply that sets must accept all&#10;     * elements; sets may refuse to add any particular element, including&#10;     * {@code null}, and throw an exception, as described in the&#10;     * specification for {@link Collection#add Collection.add}.&#10;     * Individual set implementations should clearly document any&#10;     * restrictions on the elements that they may contain.&#10;     *&#10;     * @param e element to be added to this set&#10;     * @return {@code true} if this set did not already contain the specified&#10;     *         element&#10;     * @throws UnsupportedOperationException if the {@code add} operation&#10;     *         is not supported by this set&#10;     * @throws ClassCastException if the class of the specified element&#10;     *         prevents it from being added to this set&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         set does not permit null elements&#10;     * @throws IllegalArgumentException if some property of the specified element&#10;     *         prevents it from being added to this set&#10;     "
  ]
  node [
    id 38
    label "add"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 39
    label " boolean remove(Object o)"
    type "method"
    comment "&#10;     * Removes the specified element from this set if it is present&#10;     * (optional operation).  More formally, removes an element {@code e}&#10;     * such that&#10;     * {@code Objects.equals(o, e)}, if&#10;     * this set contains such an element.  Returns {@code true} if this set&#10;     * contained the element (or equivalently, if this set changed as a&#10;     * result of the call).  (This set will not contain the element once the&#10;     * call returns.)&#10;     *&#10;     * @param o object to be removed from this set, if present&#10;     * @return {@code true} if this set contained the specified element&#10;     * @throws ClassCastException if the type of the specified element&#10;     *         is incompatible with this set&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified element is null and this&#10;     *         set does not permit null elements&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws UnsupportedOperationException if the {@code remove} operation&#10;     *         is not supported by this set&#10;     "
  ]
  node [
    id 40
    label " boolean containsAll(Collection<?> c)"
    type "method"
    comment "&#10;     * Returns {@code true} if this set contains all of the elements of the&#10;     * specified collection.  If the specified collection is also a set, this&#10;     * method returns {@code true} if it is a <i>subset</i> of this set.&#10;     *&#10;     * @param  c collection to be checked for containment in this set&#10;     * @return {@code true} if this set contains all of the elements of the&#10;     *         specified collection&#10;     * @throws ClassCastException if the types of one or more elements&#10;     *         in the specified collection are incompatible with this&#10;     *         set&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if the specified collection contains one&#10;     *         or more null elements and this set does not permit null&#10;     *         elements&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>),&#10;     *         or if the specified collection is null&#10;     * @see    #contains(Object)&#10;     "
  ]
  node [
    id 41
    label " boolean addAll(Collection<? extends E> c)"
    type "method"
    comment "&#10;     * Adds all of the elements in the specified collection to this set if&#10;     * they're not already present (optional operation).  If the specified&#10;     * collection is also a set, the {@code addAll} operation effectively&#10;     * modifies this set so that its value is the <i>union</i> of the two&#10;     * sets.  The behavior of this operation is undefined if the specified&#10;     * collection is modified while the operation is in progress.&#10;     *&#10;     * @param  c collection containing elements to be added to this set&#10;     * @return {@code true} if this set changed as a result of the call&#10;     *&#10;     * @throws UnsupportedOperationException if the {@code addAll} operation&#10;     *         is not supported by this set&#10;     * @throws ClassCastException if the class of an element of the&#10;     *         specified collection prevents it from being added to this set&#10;     * @throws NullPointerException if the specified collection contains one&#10;     *         or more null elements and this set does not permit null&#10;     *         elements, or if the specified collection is null&#10;     * @throws IllegalArgumentException if some property of an element of the&#10;     *         specified collection prevents it from being added to this set&#10;     * @see #add(Object)&#10;     "
  ]
  node [
    id 42
    label " boolean retainAll(Collection<?> c)"
    type "method"
    comment "&#10;     * Retains only the elements in this set that are contained in the&#10;     * specified collection (optional operation).  In other words, removes&#10;     * from this set all of its elements that are not contained in the&#10;     * specified collection.  If the specified collection is also a set, this&#10;     * operation effectively modifies this set so that its value is the&#10;     * <i>intersection</i> of the two sets.&#10;     *&#10;     * @param  c collection containing elements to be retained in this set&#10;     * @return {@code true} if this set changed as a result of the call&#10;     * @throws UnsupportedOperationException if the {@code retainAll} operation&#10;     *         is not supported by this set&#10;     * @throws ClassCastException if the class of an element of this set&#10;     *         is incompatible with the specified collection&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if this set contains a null element and the&#10;     *         specified collection does not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>),&#10;     *         or if the specified collection is null&#10;     * @see #remove(Object)&#10;     "
  ]
  node [
    id 43
    label " boolean removeAll(Collection<?> c)"
    type "method"
    comment "&#10;     * Removes from this set all of its elements that are contained in the&#10;     * specified collection (optional operation).  If the specified&#10;     * collection is also a set, this operation effectively modifies this&#10;     * set so that its value is the <i>asymmetric set difference</i> of&#10;     * the two sets.&#10;     *&#10;     * @param  c collection containing elements to be removed from this set&#10;     * @return {@code true} if this set changed as a result of the call&#10;     * @throws UnsupportedOperationException if the {@code removeAll} operation&#10;     *         is not supported by this set&#10;     * @throws ClassCastException if the class of an element of this set&#10;     *         is incompatible with the specified collection&#10;     * (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>)&#10;     * @throws NullPointerException if this set contains a null element and the&#10;     *         specified collection does not permit null elements&#10;     *         (<a href=&#34;Collection.html#optional-restrictions&#34;>optional</a>),&#10;     *         or if the specified collection is null&#10;     * @see #remove(Object)&#10;     * @see #contains(Object)&#10;     "
  ]
  node [
    id 44
    label " void clear()"
    type "method"
    comment "&#10;     * Removes all of the elements from this set (optional operation).&#10;     * The set will be empty after this call returns.&#10;     *&#10;     * @throws UnsupportedOperationException if the {@code clear} method&#10;     *         is not supported by this set&#10;     "
  ]
  node [
    id 45
    label " boolean equals(Object o)"
    type "method"
    comment "&#10;     * Compares the specified object with this set for equality.  Returns&#10;     * {@code true} if the specified object is also a set, the two sets&#10;     * have the same size, and every member of the specified set is&#10;     * contained in this set (or equivalently, every member of this set is&#10;     * contained in the specified set).  This definition ensures that the&#10;     * equals method works properly across different implementations of the&#10;     * set interface.&#10;     *&#10;     * @param o object to be compared for equality with this set&#10;     * @return {@code true} if the specified object is equal to this set&#10;     "
  ]
  node [
    id 46
    label " int hashCode()"
    type "method"
    comment "&#10;     * Returns the hash code value for this set.  The hash code of a set is&#10;     * defined to be the sum of the hash codes of the elements in the set,&#10;     * where the hash code of a {@code null} element is defined to be zero.&#10;     * This ensures that {@code s1.equals(s2)} implies that&#10;     * {@code s1.hashCode()==s2.hashCode()} for any two sets {@code s1}&#10;     * and {@code s2}, as required by the general contract of&#10;     * {@link Object#hashCode}.&#10;     *&#10;     * @return the hash code value for this set&#10;     * @see Object#equals(Object)&#10;     * @see Set#equals(Object)&#10;     "
  ]
  node [
    id 47
    label "hashCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 48
    label " Spliterator<E> spliterator()"
    type "method"
    comment "&#10;     * Creates a {@code Spliterator} over the elements in this set.&#10;     *&#10;     * <p>The {@code Spliterator} reports {@link Spliterator#DISTINCT}.&#10;     * Implementations should document the reporting of additional&#10;     * characteristic values.&#10;     *&#10;     * @implSpec&#10;     * The default implementation creates a&#10;     * <em><a href=&#34;Spliterator.html#binding&#34;>late-binding</a></em> spliterator&#10;     * from the set's {@code Iterator}.  The spliterator inherits the&#10;     * <em>fail-fast</em> properties of the set's iterator.&#10;     * <p>&#10;     * The created {@code Spliterator} additionally reports&#10;     * {@link Spliterator#SIZED}.&#10;     *&#10;     * @implNote&#10;     * The created {@code Spliterator} additionally reports&#10;     * {@link Spliterator#SUBSIZED}.&#10;     *&#10;     * @return a {@code Spliterator} over the elements in this set&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 49
    label "SUBSIZED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 50
    label "DISTINCT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 51
    label "SIZED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 52
    label " static Set<E> of()"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing zero elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @return an empty {@code Set}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 53
    label " static Set<E> of(E e1)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing one element.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the single element&#10;     * @return a {@code Set} containing the specified element&#10;     * @throws NullPointerException if the element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 54
    label " static Set<E> of(E e1, E e2)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing two elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if the elements are duplicates&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 55
    label " static Set<E> of(E e1, E e2, E e3)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing three elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 56
    label " static Set<E> of(E e1, E e2, E e3, E e4)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing four elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 57
    label " static Set<E> of(E e1, E e2, E e3, E e4, E e5)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing five elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 58
    label " static Set<E> of(E e1, E e2, E e3, E e4, E e5, E e6)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing six elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 59
    label " static Set<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing seven elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 60
    label " static Set<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing eight elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @param e8 the eighth element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 61
    label " static Set<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing nine elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @param e8 the eighth element&#10;     * @param e9 the ninth element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 62
    label " static Set<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing ten elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param e1 the first element&#10;     * @param e2 the second element&#10;     * @param e3 the third element&#10;     * @param e4 the fourth element&#10;     * @param e5 the fifth element&#10;     * @param e6 the sixth element&#10;     * @param e7 the seventh element&#10;     * @param e8 the eighth element&#10;     * @param e9 the ninth element&#10;     * @param e10 the tenth element&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 63
    label " static Set<E> of(E... elements)"
    type "method"
    comment "&#10;     * Returns an unmodifiable set containing an arbitrary number of elements.&#10;     * See <a href=&#34;#unmodifiable&#34;>Unmodifiable Sets</a> for details.&#10;     *&#10;     * @apiNote&#10;     * This method also accepts a single array as an argument. The element type of&#10;     * the resulting set will be the component type of the array, and the size of&#10;     * the set will be equal to the length of the array. To create a set with&#10;     * a single element that is an array, do the following:&#10;     *&#10;     * <pre>{@code&#10;     *     String[] array = ... ;&#10;     *     Set<String[]> list = Set.<String[]>of(array);&#10;     * }</pre>&#10;     *&#10;     * This will cause the {@link Set#of(Object) Set.of(E)} method&#10;     * to be invoked instead.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param elements the elements to be contained in the set&#10;     * @return a {@code Set} containing the specified elements&#10;     * @throws IllegalArgumentException if there are any duplicate elements&#10;     * @throws NullPointerException if an element is {@code null} or if the array is {@code null}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 64
    label "of(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 65
    label " static Set<E> copyOf(Collection<? extends E> coll)"
    type "method"
    comment "&#10;     * Returns an <a href=&#34;#unmodifiable&#34;>unmodifiable Set</a> containing the elements&#10;     * of the given Collection. The given Collection must not be null, and it must not&#10;     * contain any null elements. If the given Collection contains duplicate elements,&#10;     * an arbitrary element of the duplicates is preserved. If the given Collection is&#10;     * subsequently modified, the returned Set will not reflect such modifications.&#10;     *&#10;     * @implNote&#10;     * If the given Collection is an <a href=&#34;#unmodifiable&#34;>unmodifiable Set</a>,&#10;     * calling copyOf will generally not create a copy.&#10;     *&#10;     * @param <E> the {@code Set}'s element type&#10;     * @param coll a {@code Collection} from which elements are drawn, must be non-null&#10;     * @return a {@code Set} containing the elements of the given {@code Collection}&#10;     * @throws NullPointerException if coll is null, or if it contains any nulls&#10;     * @since 10&#10;     "
  ]
  node [
    id 66
    label "public final java.util.Set<String> getFeatures()"
    type "method"
    comment "&#10;     * Returns a {@link java.util.Set Set} view of the features contained in this MediaFormat.&#10;     *&#10;     * The set is backed by the MediaFormat object, so changes to the format are reflected in the&#10;     * set, and vice-versa. If the format is modified while an iteration over the set is in progress&#10;     * (except through the iterator's own remove operation), the results of the iteration are&#10;     * undefined. The set supports element removal, which removes the corresponding mapping from the&#10;     * format, via the Iterator.remove, Set.remove, removeAll, retainAll, and clear operations.&#10;     * It does not support the add or addAll operations.&#10;     "
  ]
  node [
    id 67
    label "public void setFeatureEnabled(@NonNull String feature, boolean enabled)"
    type "method"
    comment "&#10;     * Sets whether a feature is to be enabled ({@code true}) or disabled&#10;     * ({@code false}).&#10;     *&#10;     * If {@code enabled} is {@code true}, the feature is requested to be present.&#10;     * Otherwise, the feature is requested to be not present.&#10;     *&#10;     * @param feature the name of a {@link MediaCodecInfo.CodecCapabilities} feature.&#10;     *&#10;     * @see MediaCodecList#findDecoderForFormat&#10;     * @see MediaCodecList#findEncoderForFormat&#10;     * @see MediaCodecInfo.CodecCapabilities#isFormatSupported&#10;     "
  ]
  node [
    id 68
    label "public static final MediaFormat createAudioFormat(@NonNull String mime, int sampleRate, int channelCount)"
    type "method"
    comment "&#10;     * Creates a minimal audio format.&#10;     * @param mime The mime type of the content.&#10;     * @param sampleRate The sampling rate of the content.&#10;     * @param channelCount The number of audio channels in the content.&#10;     "
  ]
  node [
    id 69
    label "public static final MediaFormat createSubtitleFormat(@NonNull String mime, String language)"
    type "method"
    comment "&#10;     * Creates a minimal subtitle format.&#10;     * @param mime The mime type of the content.&#10;     * @param language The language of the content, using either ISO 639-1 or 639-2/T&#10;     *        codes.  Specify null or &#34;und&#34; if language information is only included&#10;     *        in the content.  (This will also work if there are multiple language&#10;     *        tracks in the content.)&#10;     "
  ]
  node [
    id 70
    label "public static final MediaFormat createVideoFormat(@NonNull String mime, int width, int height)"
    type "method"
    comment "&#10;     * Creates a minimal video format.&#10;     * @param mime The mime type of the content.&#10;     * @param width The width of the content (in pixels)&#10;     * @param height The height of the content (in pixels)&#10;     "
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
    target 11
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
    source 4
    target 5
    type "link"
  ]
  edge [
    source 4
    target 6
    type "link"
  ]
  edge [
    source 18
    target 19
    type "link"
  ]
  edge [
    source 23
    target 24
    type "link"
  ]
  edge [
    source 25
    target 24
    type "link"
  ]
  edge [
    source 28
    target 29
    type "link"
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
    source 29
    target 33
    type "child"
  ]
  edge [
    source 29
    target 34
    type "child"
  ]
  edge [
    source 29
    target 35
    type "child"
  ]
  edge [
    source 29
    target 37
    type "child"
  ]
  edge [
    source 29
    target 39
    type "child"
  ]
  edge [
    source 29
    target 40
    type "child"
  ]
  edge [
    source 29
    target 41
    type "child"
  ]
  edge [
    source 29
    target 42
    type "child"
  ]
  edge [
    source 29
    target 43
    type "child"
  ]
  edge [
    source 29
    target 44
    type "child"
  ]
  edge [
    source 29
    target 45
    type "child"
  ]
  edge [
    source 29
    target 46
    type "child"
  ]
  edge [
    source 29
    target 48
    type "child"
  ]
  edge [
    source 29
    target 52
    type "child"
  ]
  edge [
    source 29
    target 53
    type "child"
  ]
  edge [
    source 29
    target 54
    type "child"
  ]
  edge [
    source 29
    target 55
    type "child"
  ]
  edge [
    source 29
    target 56
    type "child"
  ]
  edge [
    source 29
    target 57
    type "child"
  ]
  edge [
    source 29
    target 58
    type "child"
  ]
  edge [
    source 29
    target 59
    type "child"
  ]
  edge [
    source 29
    target 60
    type "child"
  ]
  edge [
    source 29
    target 61
    type "child"
  ]
  edge [
    source 29
    target 62
    type "child"
  ]
  edge [
    source 29
    target 63
    type "child"
  ]
  edge [
    source 29
    target 65
    type "child"
  ]
  edge [
    source 35
    target 36
    type "link"
  ]
  edge [
    source 37
    target 38
    type "link"
  ]
  edge [
    source 46
    target 47
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
    source 48
    target 51
    type "link"
  ]
  edge [
    source 63
    target 64
    type "link"
  ]
  edge [
    source 66
    target 29
    type "link"
  ]
  edge [
    source 67
    target 19
    type "link"
  ]
]
