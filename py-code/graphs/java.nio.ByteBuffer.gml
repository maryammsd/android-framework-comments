graph [
  directed 1
  node [
    id 0
    label "java.nio.ByteBuffer"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "public static ByteBuffer allocateDirect(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new direct byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.  Whether or not it has a&#10;     * {@link #hasArray backing array} is unspecified.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 2
    label "BIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "hasArray"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public static ByteBuffer allocate(int capacity)"
    type "method"
    comment "&#10;     * Allocates a new byte buffer.&#10;     *&#10;     * <p> The new buffer's position will be zero, its limit will be its&#10;     * capacity, its mark will be undefined, each of its elements will be&#10;     * initialized to zero, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * It will have a {@link #array backing array}, and its&#10;     * {@link #arrayOffset array offset} will be zero.&#10;     *&#10;     * @param  capacity&#10;     *         The new buffer's capacity, in bytes&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the {@code capacity} is a negative integer&#10;     "
  ]
  node [
    id 5
    label "array"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 6
    label "arrayOffset"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "public static ByteBuffer wrap(byte[] array, int offset, int length)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity will be&#10;     * {@code array.length}, its position will be {@code offset}, its limit&#10;     * will be {@code offset + length}, its mark will be undefined, and its&#10;     * byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and&#10;     * its {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back the new buffer&#10;     *&#10;     * @param  offset&#10;     *         The offset of the subarray to be used; must be non-negative and&#10;     *         no larger than {@code array.length}.  The new buffer's position&#10;     *         will be set to this value.&#10;     *&#10;     * @param  length&#10;     *         The length of the subarray to be used;&#10;     *         must be non-negative and no larger than&#10;     *         {@code array.length - offset}.&#10;     *         The new buffer's limit will be set to {@code offset + length}.&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 8
    label "public static ByteBuffer wrap(byte[] array)"
    type "method"
    comment "&#10;     * Wraps a byte array into a buffer.&#10;     *&#10;     * <p> The new buffer will be backed by the given byte array;&#10;     * that is, modifications to the buffer will cause the array to be modified&#10;     * and vice versa.  The new buffer's capacity and limit will be&#10;     * {@code array.length}, its position will be zero, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;&#10;     * Its {@link #array backing array} will be the given array, and its&#10;     * {@link #arrayOffset array offset} will be zero.  </p>&#10;     *&#10;     * @param  array&#10;     *         The array that will back this buffer&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 9
    label "public abstract ByteBuffer slice()"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer, its mark will be&#10;     * undefined, and its byte order will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;&#10;     *&#10;     * @see #alignedSlice(int)&#10;&#10;     "
  ]
  node [
    id 10
    label "public abstract ByteBuffer slice(int index, int length)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared subsequence of&#10;     * this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at position {@code index}&#10;     * in this buffer, and will contain {@code length} elements. Changes to&#10;     * this buffer's content will be visible in the new buffer, and vice versa;&#10;     * the two buffers' position, limit, and mark values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be {@code length}, its mark will be undefined, and its byte order&#10;     * will be&#10;&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct,&#10;     * and it will be read-only if, and only if, this buffer is read-only. </p>&#10;     *&#10;     * @param   index&#10;     *          The position in this buffer at which the content of the new&#10;     *          buffer will start; must be non-negative and no larger than&#10;     *          {@link #limit() limit()}&#10;     *&#10;     * @param   length&#10;     *          The number of elements the new buffer will contain; must be&#10;     *          non-negative and no larger than {@code limit() - index}&#10;     *&#10;     * @return  The new buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative or greater than {@code limit()},&#10;     *          {@code length} is negative, or {@code length > limit() - index}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 11
    label "limit()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 12
    label "public abstract ByteBuffer duplicate()"
    type "method"
    comment "&#10;     * Creates a new byte buffer that shares this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer, and vice&#10;     * versa; the two buffers' position, limit, and mark values will be&#10;     * independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  The new byte buffer&#10;     "
  ]
  node [
    id 13
    label "public abstract ByteBuffer asReadOnlyBuffer()"
    type "method"
    comment "&#10;     * Creates a new, read-only byte buffer that shares this buffer's&#10;     * content.&#10;     *&#10;     * <p> The content of the new buffer will be that of this buffer.  Changes&#10;     * to this buffer's content will be visible in the new buffer; the new&#10;     * buffer itself, however, will be read-only and will not allow the shared&#10;     * content to be modified.  The two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's capacity, limit, position,&#10;&#10;     * and mark values will be identical to those of this buffer, and its byte&#10;     * order will be {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;&#10;&#10;&#10;     *&#10;     * <p> If this buffer is itself read-only then this method behaves in&#10;     * exactly the same way as the {@link #duplicate duplicate} method.  </p>&#10;     *&#10;     * @return  The new, read-only byte buffer&#10;     "
  ]
  node [
    id 14
    label "duplicate"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public abstract byte get()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method.  Reads the byte at this buffer's&#10;     * current position, and then increments the position.&#10;     *&#10;     * @return  The byte at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If the buffer's current position is not smaller than its limit&#10;     "
  ]
  node [
    id 16
    label "public abstract ByteBuffer put(byte b)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the current&#10;     * position, and then increments the position. </p>&#10;     *&#10;     * @param  b&#10;     *         The byte to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If this buffer's current position is not smaller than its limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 17
    label "public abstract byte get(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method.  Reads the byte at the given&#10;     * index.&#10;     *&#10;     * @param  index&#10;     *         The index from which the byte will be read&#10;     *&#10;     * @return  The byte at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     "
  ]
  node [
    id 18
    label "public abstract ByteBuffer put(int index, byte b)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes the given byte into this buffer at the given&#10;     * index. </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the byte will be written&#10;     *&#10;     * @param  b&#10;     *         The byte value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 19
    label "public ByteBuffer get(byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  If there are fewer bytes remaining in the&#10;     * buffer than are required to satisfy the request, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferUnderflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from this&#10;     * buffer into the given array, starting at the current position of this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>src.get(dst,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst[i] = src.get();&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there are sufficient bytes in&#10;     * this buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  dst&#10;     *         The array into which bytes are to be written&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and no larger than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The maximum number of bytes to be written to the given&#10;     *         array; must be non-negative and no larger than&#10;     *         {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     "
  ]
  node [
    id 20
    label "BufferUnderflowException"
  ]
  node [
    id 21
    label "public ByteBuffer get(byte[] dst)"
    type "method"
    comment "&#10;     * Relative bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  An invocation of this method of the form&#10;     * {@code src.get(a)} behaves in exactly the same way as the invocation&#10;     *&#10;     * <pre>&#10;     *     src.get(a, 0, a.length) </pre>&#10;     *&#10;     * @param   dst&#10;     *          The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than {@code length} bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 22
    label "public ByteBuffer get(int index, byte[] dst, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from this&#10;     * buffer into the given array, starting at the given index in this&#10;     * buffer and at the given offset in the array.  The position of this&#10;     * buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst[i] = src.get(j);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be&#10;     *         written; must be non-negative and less than&#10;     *         {@code dst.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be written to the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code dst.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 23
    label "public ByteBuffer get(int index, byte[] dst)"
    type "method"
    comment "&#10;     * Absolute bulk <i>get</i> method.&#10;     *&#10;     * <p> This method transfers bytes from this buffer into the given&#10;     * destination array.  The position of this buffer is unchanged.  An&#10;     * invocation of this method of the form&#10;     * <code>src.get(index,&#38;nbsp;dst)</code> behaves in exactly the same&#10;     * way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     src.get(index, dst, 0, dst.length) </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer from which the first byte will be&#10;     *         read; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  dst&#10;     *         The destination array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < dst.length}&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 24
    label "public ByteBuffer put(ByteBuffer src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the bytes remaining in the given source&#10;     * buffer into this buffer.  If there are more bytes remaining in the&#10;     * source buffer than in this buffer, that is, if&#10;     * {@code src.remaining()}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()},&#10;     * then no bytes are transferred and a {@link&#10;     * BufferOverflowException} is thrown.&#10;     *&#10;     * <p> Otherwise, this method copies&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code src.remaining()} bytes from the given&#10;     * buffer into this buffer, starting at each buffer's current position.&#10;     * The positions of both buffers are then incremented by <i>n</i>.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * {@code dst.put(src)} has exactly the same effect as the loop&#10;     *&#10;     * <pre>&#10;     *     while (src.hasRemaining())&#10;     *         dst.put(src.get()); </pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param  src&#10;     *         The source buffer from which bytes are to be read;&#10;     *         must not be this buffer&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *          for the remaining bytes in the source buffer&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          If the source buffer is this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 25
    label "BufferOverflowException"
  ]
  node [
    id 26
    label "public ByteBuffer put(int index, ByteBuffer src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes into this buffer from&#10;     * the given source buffer, starting at the given {@code offset} in the&#10;     * source buffer and the given {@code index} in this buffer. The positions&#10;     * of both buffers are unchanged.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the loop&#10;     *&#10;     * <pre>{@code&#10;     * for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *     dst.put(j, src.get(i));&#10;     * }</pre>&#10;     *&#10;     * except that it first checks the consistency of the supplied parameters&#10;     * and it is potentially much more efficient.  If this buffer and&#10;     * the source buffer share the same backing array or memory, then the&#10;     * result will be as if the source elements were first copied to an&#10;     * intermediate location before being written into this buffer.&#10;     *&#10;     * @param index&#10;     *        The index in this buffer at which the first byte will be&#10;     *        written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param src&#10;     *        The buffer from which bytes are to be read&#10;     *&#10;     * @param offset&#10;     *        The index within the source buffer of the first byte to be&#10;     *        read; must be non-negative and less than {@code src.limit()}&#10;     *&#10;     * @param length&#10;     *        The number of bytes to be read from the given buffer;&#10;     *        must be non-negative and no larger than the smaller of&#10;     *        {@code limit() - index} and {@code src.limit() - offset}&#10;     *&#10;     * @return This buffer&#10;     *&#10;     * @throws IndexOutOfBoundsException&#10;     *         If the preconditions on the {@code index}, {@code offset}, and&#10;     *         {@code length} parameters do not hold&#10;     *&#10;     * @throws ReadOnlyBufferException&#10;     *         If this buffer is read-only&#10;     *&#10;     * @since 16&#10;     "
  ]
  node [
    id 27
    label "public ByteBuffer put(byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers bytes into this buffer from the given&#10;     * source array.  If there are more bytes to be copied from the array&#10;     * than remain in this buffer, that is, if&#10;     * {@code length}&#38;nbsp;{@code >}&#38;nbsp;{@code remaining()}, then no&#10;     * bytes are transferred and a {@link BufferOverflowException} is&#10;     * thrown.&#10;     *&#10;     * <p> Otherwise, this method copies {@code length} bytes from the&#10;     * given array into this buffer, starting at the given offset in the array&#10;     * and at the current position of this buffer.  The position of this buffer&#10;     * is then incremented by {@code length}.&#10;     *&#10;     * <p> In other words, an invocation of this method of the form&#10;     * <code>dst.put(src,&#38;nbsp;off,&#38;nbsp;len)</code> has exactly the same effect as&#10;     * the loop&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = off; i < off + len; i++)&#10;     *         dst.put(src[i]);&#10;     * }</pre>&#10;     *&#10;     * except that it first checks that there is sufficient space in this&#10;     * buffer and it is potentially much more efficient.&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and no larger than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than&#10;     *         {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code offset} and {@code length}&#10;     *          parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 28
    label "public final ByteBuffer put(byte[] src)"
    type "method"
    comment "&#10;     * Relative bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers the entire content of the given source&#10;     * byte array into this buffer.  An invocation of this method of the&#10;     * form {@code dst.put(a)} behaves in exactly the same way as the&#10;     * invocation&#10;     *&#10;     * <pre>&#10;     *     dst.put(a, 0, a.length) </pre>&#10;     *&#10;     * @param   src&#10;     *          The source array&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there is insufficient space in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 29
    label "public ByteBuffer put(int index, byte[] src, int offset, int length)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method transfers {@code length} bytes from the given&#10;     * array, starting at the given offset in the array and at the given index&#10;     * in this buffer.  The position of this buffer is unchanged.&#10;     *&#10;     * <p> An invocation of this method of the form&#10;     * <code>dst.put(index,&#38;nbsp;src,&#38;nbsp;offset,&#38;nbsp;length)</code>&#10;     * has exactly the same effect as the following loop except that it first&#10;     * checks the consistency of the supplied parameters and it is potentially&#10;     * much more efficient:&#10;     *&#10;     * <pre>{@code&#10;     *     for (int i = offset, j = index; i < offset + length; i++, j++)&#10;     *         dst.put(j, src[i]);&#10;     * }</pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @param  offset&#10;     *         The offset within the array of the first byte to be read;&#10;     *         must be non-negative and less than {@code src.length}&#10;     *&#10;     * @param  length&#10;     *         The number of bytes to be read from the given array;&#10;     *         must be non-negative and no larger than the smaller of&#10;     *         {@code limit() - index} and {@code src.length - offset}&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If the preconditions on the {@code index}, {@code offset}, and&#10;     *          {@code length} parameters do not hold&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 30
    label "public ByteBuffer put(int index, byte[] src)"
    type "method"
    comment "&#10;     * Absolute bulk <i>put</i> method&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> This method copies bytes into this buffer from the given source&#10;     * array.  The position of this buffer is unchanged.  An invocation of this&#10;     * method of the form <code>dst.put(index,&#38;nbsp;src)</code>&#10;     * behaves in exactly the same way as the invocation:&#10;     *&#10;     * <pre>&#10;     *     dst.put(index, src, 0, src.length); </pre>&#10;     *&#10;     * @param  index&#10;     *         The index in this buffer at which the first byte will be&#10;     *         written; must be non-negative and less than {@code limit()}&#10;     *&#10;     * @param  src&#10;     *         The array from which bytes are to be read&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative, not smaller than {@code limit()},&#10;     *          or {@code limit() - index < src.length}&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     *&#10;     * @since 13&#10;     "
  ]
  node [
    id 31
    label "public final boolean hasArray()"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is backed by an accessible byte&#10;     * array.&#10;     *&#10;     * <p> If this method returns {@code true} then the {@link #array() array}&#10;     * and {@link #arrayOffset() arrayOffset} methods may safely be invoked.&#10;     * </p>&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer&#10;     *          is backed by an array and is not read-only&#10;     "
  ]
  node [
    id 32
    label "array()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 33
    label "arrayOffset()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 34
    label "public final byte[] array()"
    type "method"
    comment "&#10;     * Returns the byte array that backs this&#10;     * buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Modifications to this buffer's content will cause the returned&#10;     * array's content to be modified, and vice versa.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The array that backs this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 35
    label "public final int arrayOffset()"
    type "method"
    comment "&#10;     * Returns the offset within this buffer's backing array of the first&#10;     * element of the buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> If this buffer is backed by an array then buffer position <i>p</i>&#10;     * corresponds to array index <i>p</i>&#38;nbsp;+&#38;nbsp;{@code arrayOffset()}.&#10;     *&#10;     * <p> Invoke the {@link #hasArray hasArray} method before invoking this&#10;     * method in order to ensure that this buffer has an accessible backing&#10;     * array.  </p>&#10;     *&#10;     * @return  The offset within this buffer's array&#10;     *          of the first element of the buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is backed by an array but is read-only&#10;     *&#10;     * @throws  UnsupportedOperationException&#10;     *          If this buffer is not backed by an accessible array&#10;     "
  ]
  node [
    id 36
    label "public Buffer position(int newPosition)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 37
    label "public Buffer limit(int newLimit)"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 38
    label "public Buffer mark()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 39
    label "public Buffer reset()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 40
    label "public Buffer clear()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 41
    label "public Buffer flip()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 42
    label "public Buffer rewind()"
    type "method"
    comment " Android-changed: Un-final the method until confirmation of causing no app compat."
  ]
  node [
    id 43
    label "public abstract ByteBuffer compact()"
    type "method"
    comment "&#10;     * Compacts this buffer&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> The bytes between the buffer's current position and its limit,&#10;     * if any, are copied to the beginning of the buffer.  That is, the&#10;     * byte at index <i>p</i>&#38;nbsp;=&#38;nbsp;{@code position()} is copied&#10;     * to index zero, the byte at index <i>p</i>&#38;nbsp;+&#38;nbsp;1 is copied&#10;     * to index one, and so forth until the byte at index&#10;     * {@code limit()}&#38;nbsp;-&#38;nbsp;1 is copied to index&#10;     * <i>n</i>&#38;nbsp;=&#38;nbsp;{@code limit()}&#38;nbsp;-&#38;nbsp;{@code 1}&#38;nbsp;-&#38;nbsp;<i>p</i>.&#10;     * The buffer's position is then set to <i>n+1</i> and its limit is set to&#10;     * its capacity.  The mark, if defined, is discarded.&#10;     *&#10;     * <p> The buffer's position is set to the number of bytes copied,&#10;     * rather than to zero, so that an invocation of this method can be&#10;     * followed immediately by an invocation of another relative <i>put</i>&#10;     * method. </p>&#10;     *&#10;&#10;     *&#10;     * <p> Invoke this method after writing data from a buffer in case the&#10;     * write was incomplete.  The following loop, for example, copies bytes&#10;     * from one channel to another via the buffer {@code buf}:&#10;     *&#10;     * <blockquote><pre>{@code&#10;     *   buf.clear();          // Prepare buffer for use&#10;     *   while (in.read(buf) >= 0 || buf.position != 0) {&#10;     *       buf.flip();&#10;     *       out.write(buf);&#10;     *       buf.compact();    // In case of partial write&#10;     *   }&#10;     * }</pre></blockquote>&#10;     *&#10;&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 44
    label "public abstract boolean isDirect()"
    type "method"
    comment "&#10;     * Tells whether or not this byte buffer is direct.&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is direct&#10;     "
  ]
  node [
    id 45
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a string summarizing the state of this buffer.&#10;     *&#10;     * @return  A summary string&#10;     "
  ]
  node [
    id 46
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns the current hash code of this buffer.&#10;     *&#10;     * <p> The hash code of a byte buffer depends only upon its remaining&#10;     * elements; that is, upon the elements from {@code position()} up to, and&#10;     * including, the element at {@code limit()}&#38;nbsp;-&#38;nbsp;{@code 1}.&#10;     *&#10;     * <p> Because buffer hash codes are content-dependent, it is inadvisable&#10;     * to use buffers as keys in hash maps or similar data structures unless it&#10;     * is known that their contents will not change.  </p>&#10;     *&#10;     * @return  The current hash code of this buffer&#10;     "
  ]
  node [
    id 47
    label "public boolean equals(Object ob)"
    type "method"
    comment "&#10;     * Tells whether or not this buffer is equal to another object.&#10;     *&#10;     * <p> Two byte buffers are equal if, and only if,&#10;     *&#10;     * <ol>&#10;     *&#10;     *   <li><p> They have the same element type,  </p></li>&#10;     *&#10;     *   <li><p> They have the same number of remaining elements, and&#10;     *   </p></li>&#10;     *&#10;     *   <li><p> The two sequences of remaining elements, considered&#10;     *   independently of their starting positions, are pointwise equal.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     *   </p></li>&#10;     *&#10;     * </ol>&#10;     *&#10;     * <p> A byte buffer is not equal to any other type of object.  </p>&#10;     *&#10;     * @param  ob  The object to which this buffer is to be compared&#10;     *&#10;     * @return  {@code true} if, and only if, this buffer is equal to the&#10;     *           given object&#10;     "
  ]
  node [
    id 48
    label "public int compareTo(ByteBuffer that)"
    type "method"
    comment "&#10;     * Compares this buffer to another.&#10;     *&#10;     * <p> Two byte buffers are compared by comparing their sequences of&#10;     * remaining elements lexicographically, without regard to the starting&#10;     * position of each sequence within its corresponding buffer.&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;&#10;     * Pairs of {@code byte} elements are compared as if by invoking&#10;     * {@link Byte#compare(byte,byte)}.&#10;&#10;     *&#10;     * <p> A byte buffer is not comparable to any other type of object.&#10;     *&#10;     * @return  A negative integer, zero, or a positive integer as this buffer&#10;     *          is less than, equal to, or greater than the given buffer&#10;     "
  ]
  node [
    id 49
    label "compare(byte"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 50
    label "public int mismatch(ByteBuffer that)"
    type "method"
    comment "&#10;     * Finds and returns the relative index of the first mismatch between this&#10;     * buffer and a given buffer.  The index is relative to the&#10;     * {@link #position() position} of each buffer and will be in the range of&#10;     * 0 (inclusive) up to the smaller of the {@link #remaining() remaining}&#10;     * elements in each buffer (exclusive).&#10;     *&#10;     * <p> If the two buffers share a common prefix then the returned index is&#10;     * the length of the common prefix and it follows that there is a mismatch&#10;     * between the two buffers at that index within the respective buffers.&#10;     * If one buffer is a proper prefix of the other then the returned index is&#10;     * the smaller of the remaining elements in each buffer, and it follows that&#10;     * the index is only valid for the buffer with the larger number of&#10;     * remaining elements.&#10;     * Otherwise, there is no mismatch.&#10;     *&#10;     * @param  that&#10;     *         The byte buffer to be tested for a mismatch with this buffer&#10;     *&#10;     * @return  The relative index of the first mismatch between this and the&#10;     *          given buffer, otherwise -1 if no mismatch.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 51
    label "position()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 52
    label "remaining()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 53
    label "public final ByteOrder order()"
    type "method"
    comment "&#10;     * Retrieves this buffer's byte order.&#10;     *&#10;     * <p> The byte order is used when reading or writing multibyte values, and&#10;     * when creating buffers that are views of this byte buffer.  The order of&#10;     * a newly-created byte buffer is always {@link ByteOrder#BIG_ENDIAN&#10;     * BIG_ENDIAN}.  </p>&#10;     *&#10;     * @return  This buffer's byte order&#10;     "
  ]
  node [
    id 54
    label "BIG_ENDIANBIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 55
    label "public final ByteBuffer order(ByteOrder bo)"
    type "method"
    comment "&#10;     * Modifies this buffer's byte order.&#10;     *&#10;     * @param  bo&#10;     *         The new byte order,&#10;     *         either {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}&#10;     *         or {@link ByteOrder#LITTLE_ENDIAN LITTLE_ENDIAN}&#10;     *&#10;     * @return  This buffer&#10;     "
  ]
  node [
    id 56
    label "LITTLE_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 57
    label "public final int alignmentOffset(int index, int unitSize)"
    type "method"
    comment "&#10;     * Returns the memory address, pointing to the byte at the given index,&#10;     * modulo the given unit size.&#10;     *&#10;     * <p> The return value is non-negative in the range of {@code 0}&#10;     * (inclusive) up to {@code unitSize} (exclusive), with zero indicating&#10;     * that the address of the byte at the index is aligned for the unit size,&#10;     * and a positive value that the address is misaligned for the unit size.&#10;     * If the address of the byte at the index is misaligned, the return value&#10;     * represents how much the index should be adjusted to locate a byte at an&#10;     * aligned address.  Specifically, the index should either be decremented by&#10;     * the return value if the latter is not greater than {@code index}, or be&#10;     * incremented by the unit size minus the return value.  Therefore given&#10;     * <blockquote><pre>&#10;     * int value = alignmentOffset(index, unitSize)</pre></blockquote>&#10;     * then the identities&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index - value, unitSize) == 0, value &#38;le; index</pre></blockquote>&#10;     * and&#10;     * <blockquote><pre>&#10;     * alignmentOffset(index + (unitSize - value), unitSize) == 0</pre></blockquote>&#10;     * must hold.&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to determine if unit size bytes from an&#10;     * index can be accessed atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  index&#10;     *         The index to query for alignment offset, must be non-negative, no&#10;     *         upper bounds check is performed&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The indexed byte's memory address modulo the unit size&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the index is negative or the unit size is not a power of&#10;     *         {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable alignment offset&#10;     *         values for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignedSlice(int)&#10;     * @since 9&#10;     "
  ]
  node [
    id 58
    label "public final ByteBuffer alignedSlice(int unitSize)"
    type "method"
    comment "&#10;     * Creates a new byte buffer whose content is a shared and aligned&#10;     * subsequence of this buffer's content.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position rounded up to the index of the nearest aligned byte for the&#10;     * given unit size, and end at this buffer's limit rounded down to the index&#10;     * of the nearest aligned byte for the given unit size.&#10;     * If rounding results in out-of-bound values then the new buffer's capacity&#10;     * and limit will be zero.  If rounding is within bounds the following&#10;     * expressions will be true for a new buffer {@code nb} and unit size&#10;     * {@code unitSize}:&#10;     * <pre>{@code&#10;     * nb.alignmentOffset(0, unitSize) == 0&#10;     * nb.alignmentOffset(nb.limit(), unitSize) == 0&#10;     * }</pre>&#10;     *&#10;     * <p> Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer or fewer subject to&#10;     * alignment, its mark will be undefined, and its byte order will be&#10;     * {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}.&#10;     *&#10;     * The new buffer will be direct if, and only if, this buffer is direct, and&#10;     * it will be read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @apiNote&#10;     * This method may be utilized to create a new buffer where unit size bytes&#10;     * from index, that is a multiple of the unit size, may be accessed&#10;     * atomically, if supported by the native platform.&#10;     *&#10;     * @implNote&#10;     * This implementation throws {@code UnsupportedOperationException} for&#10;     * non-direct buffers when the given unit size is greater than {@code 8}.&#10;     *&#10;     * @param  unitSize&#10;     *         The unit size in bytes, must be a power of {@code 2}&#10;     *&#10;     * @return  The new byte buffer&#10;     *&#10;     * @throws IllegalArgumentException&#10;     *         If the unit size not a power of {@code 2}&#10;     *&#10;     * @throws UnsupportedOperationException&#10;     *         If the native platform does not guarantee stable aligned slices&#10;     *         for the given unit size when managing the memory regions&#10;     *         of buffers of the same kind as this buffer (direct or&#10;     *         non-direct).  For example, if garbage collection would result&#10;     *         in the moving of a memory region covered by a non-direct buffer&#10;     *         from one location to another and both locations have different&#10;     *         alignment characteristics.&#10;     *&#10;     * @see #alignmentOffset(int, int)&#10;     * @see #slice()&#10;     * @since 9&#10;     "
  ]
  node [
    id 59
    label " abstract byte _get(int i)"
    type "method"
    comment " package-private"
  ]
  node [
    id 60
    label " abstract void _put(int i, byte b)"
    type "method"
    comment " package-private"
  ]
  node [
    id 61
    label "public abstract char getChar()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a char value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The char value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 62
    label "public abstract ByteBuffer putChar(char value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 63
    label "public abstract char getChar(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a char value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * char value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The char value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 64
    label " abstract char getCharUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 65
    label "public abstract ByteBuffer putChar(int index, char value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a char&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given char value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The char value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 66
    label " abstract void putCharUnchecked(int index, char value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 67
    label "public abstract CharBuffer asCharBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a char buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new char buffer&#10;     "
  ]
  node [
    id 68
    label "public abstract short getShort()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads the next two bytes at this buffer's current position,&#10;     * composing them into a short value according to the current byte order,&#10;     * and then increments the position by two.  </p>&#10;     *&#10;     * @return  The short value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 69
    label "public abstract ByteBuffer putShort(short value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by two.  </p>&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than two bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 70
    label "public abstract short getShort(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a short value.&#10;     *&#10;     * <p> Reads two bytes at the given index, composing them into a&#10;     * short value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The short value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     "
  ]
  node [
    id 71
    label " abstract short getShortUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 72
    label "public abstract ByteBuffer putShort(int index, short value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a short&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes two bytes containing the given short value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The short value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus one&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 73
    label " abstract void putShortUnchecked(int index, short value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 74
    label "public abstract ShortBuffer asShortBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a short buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * two, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new short buffer&#10;     "
  ]
  node [
    id 75
    label "public abstract int getInt()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into an int value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The int value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 76
    label "public abstract ByteBuffer putInt(int value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 77
    label "public abstract int getInt(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading an int value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * int value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The int value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 78
    label " abstract int getIntUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 79
    label "public abstract ByteBuffer putInt(int index, int value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing an int&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given int value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The int value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 80
    label " abstract void putIntUnchecked(int index, int value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 81
    label "public abstract IntBuffer asIntBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as an int buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new int buffer&#10;     "
  ]
  node [
    id 82
    label "public abstract long getLong()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a long value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The long value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 83
    label "public abstract ByteBuffer putLong(long value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 84
    label "public abstract long getLong(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a long value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * long value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The long value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 85
    label " abstract long getLongUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 86
    label "public abstract ByteBuffer putLong(int index, long value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a long&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given long value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The long value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 87
    label " abstract void putLongUnchecked(int index, long value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 88
    label "public abstract LongBuffer asLongBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a long buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new long buffer&#10;     "
  ]
  node [
    id 89
    label "public abstract float getFloat()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads the next four bytes at this buffer's current position,&#10;     * composing them into a float value according to the current byte order,&#10;     * and then increments the position by four.  </p>&#10;     *&#10;     * @return  The float value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 90
    label "public abstract ByteBuffer putFloat(float value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by four.  </p>&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than four bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 91
    label "public abstract float getFloat(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a float value.&#10;     *&#10;     * <p> Reads four bytes at the given index, composing them into a&#10;     * float value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The float value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     "
  ]
  node [
    id 92
    label " abstract float getFloatUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 93
    label "public abstract ByteBuffer putFloat(int index, float value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a float&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes four bytes containing the given float value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The float value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus three&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 94
    label " abstract void putFloatUnchecked(int index, float value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 95
    label "public abstract FloatBuffer asFloatBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a float buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * four, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new float buffer&#10;     "
  ]
  node [
    id 96
    label "public abstract double getDouble()"
    type "method"
    comment "&#10;     * Relative <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads the next eight bytes at this buffer's current position,&#10;     * composing them into a double value according to the current byte order,&#10;     * and then increments the position by eight.  </p>&#10;     *&#10;     * @return  The double value at the buffer's current position&#10;     *&#10;     * @throws  BufferUnderflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     "
  ]
  node [
    id 97
    label "public abstract ByteBuffer putDouble(double value)"
    type "method"
    comment "&#10;     * Relative <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the current position, and then&#10;     * increments the position by eight.  </p>&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  BufferOverflowException&#10;     *          If there are fewer than eight bytes&#10;     *          remaining in this buffer&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 98
    label "public abstract double getDouble(int index)"
    type "method"
    comment "&#10;     * Absolute <i>get</i> method for reading a double value.&#10;     *&#10;     * <p> Reads eight bytes at the given index, composing them into a&#10;     * double value according to the current byte order.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index from which the bytes will be read&#10;     *&#10;     * @return  The double value at the given index&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     "
  ]
  node [
    id 99
    label " abstract double getDoubleUnchecked(int index)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 100
    label "public abstract ByteBuffer putDouble(int index, double value)"
    type "method"
    comment "&#10;     * Absolute <i>put</i> method for writing a double&#10;     * value&#38;nbsp;&#38;nbsp;<i>(optional operation)</i>.&#10;     *&#10;     * <p> Writes eight bytes containing the given double value, in the&#10;     * current byte order, into this buffer at the given index.  </p>&#10;     *&#10;     * @param  index&#10;     *         The index at which the bytes will be written&#10;     *&#10;     * @param  value&#10;     *         The double value to be written&#10;     *&#10;     * @return  This buffer&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          If {@code index} is negative&#10;     *          or not smaller than the buffer's limit,&#10;     *          minus seven&#10;     *&#10;     * @throws  ReadOnlyBufferException&#10;     *          If this buffer is read-only&#10;     "
  ]
  node [
    id 101
    label " abstract void putDoubleUnchecked(int index, double value)"
    type "method"
    comment " BEGIN Android-added: {get,put}*Unchecked() accessors."
  ]
  node [
    id 102
    label "public abstract DoubleBuffer asDoubleBuffer()"
    type "method"
    comment "&#10;     * Creates a view of this byte buffer as a double buffer.&#10;     *&#10;     * <p> The content of the new buffer will start at this buffer's current&#10;     * position.  Changes to this buffer's content will be visible in the new&#10;     * buffer, and vice versa; the two buffers' position, limit, and mark&#10;     * values will be independent.&#10;     *&#10;     * <p> The new buffer's position will be zero, its capacity and its limit&#10;     * will be the number of bytes remaining in this buffer divided by&#10;     * eight, its mark will be undefined, and its byte order will be that&#10;     * of the byte buffer at the moment the view is created.  The new buffer&#10;     * will be direct if, and only if, this buffer is direct, and it will be&#10;     * read-only if, and only if, this buffer is read-only.  </p>&#10;     *&#10;     * @return  A new double buffer&#10;     "
  ]
  edge [
    source 0
    target 1
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
    target 50
    type "child"
  ]
  edge [
    source 0
    target 53
    type "child"
  ]
  edge [
    source 0
    target 55
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
    source 0
    target 59
    type "child"
  ]
  edge [
    source 0
    target 60
    type "child"
  ]
  edge [
    source 0
    target 61
    type "child"
  ]
  edge [
    source 0
    target 62
    type "child"
  ]
  edge [
    source 0
    target 63
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
    source 0
    target 78
    type "child"
  ]
  edge [
    source 0
    target 79
    type "child"
  ]
  edge [
    source 0
    target 80
    type "child"
  ]
  edge [
    source 0
    target 81
    type "child"
  ]
  edge [
    source 0
    target 82
    type "child"
  ]
  edge [
    source 0
    target 83
    type "child"
  ]
  edge [
    source 0
    target 84
    type "child"
  ]
  edge [
    source 0
    target 85
    type "child"
  ]
  edge [
    source 0
    target 86
    type "child"
  ]
  edge [
    source 0
    target 87
    type "child"
  ]
  edge [
    source 0
    target 88
    type "child"
  ]
  edge [
    source 0
    target 89
    type "child"
  ]
  edge [
    source 0
    target 90
    type "child"
  ]
  edge [
    source 0
    target 91
    type "child"
  ]
  edge [
    source 0
    target 92
    type "child"
  ]
  edge [
    source 0
    target 93
    type "child"
  ]
  edge [
    source 0
    target 94
    type "child"
  ]
  edge [
    source 0
    target 95
    type "child"
  ]
  edge [
    source 0
    target 96
    type "child"
  ]
  edge [
    source 0
    target 97
    type "child"
  ]
  edge [
    source 0
    target 98
    type "child"
  ]
  edge [
    source 0
    target 99
    type "child"
  ]
  edge [
    source 0
    target 100
    type "child"
  ]
  edge [
    source 0
    target 101
    type "child"
  ]
  edge [
    source 0
    target 102
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
    source 4
    target 2
    type "link"
  ]
  edge [
    source 7
    target 5
    type "link"
  ]
  edge [
    source 7
    target 6
    type "link"
  ]
  edge [
    source 7
    target 2
    type "link"
  ]
  edge [
    source 8
    target 5
    type "link"
  ]
  edge [
    source 8
    target 6
    type "link"
  ]
  edge [
    source 8
    target 2
    type "link"
  ]
  edge [
    source 9
    target 2
    type "link"
  ]
  edge [
    source 10
    target 11
    type "link"
  ]
  edge [
    source 10
    target 2
    type "link"
  ]
  edge [
    source 12
    target 2
    type "link"
  ]
  edge [
    source 13
    target 14
    type "link"
  ]
  edge [
    source 13
    target 2
    type "link"
  ]
  edge [
    source 19
    target 20
    type "link"
  ]
  edge [
    source 24
    target 25
    type "link"
  ]
  edge [
    source 27
    target 25
    type "link"
  ]
  edge [
    source 31
    target 32
    type "link"
  ]
  edge [
    source 31
    target 33
    type "link"
  ]
  edge [
    source 34
    target 3
    type "link"
  ]
  edge [
    source 35
    target 3
    type "link"
  ]
  edge [
    source 48
    target 49
    type "link"
  ]
  edge [
    source 50
    target 51
    type "link"
  ]
  edge [
    source 50
    target 52
    type "link"
  ]
  edge [
    source 53
    target 54
    type "link"
  ]
  edge [
    source 55
    target 56
    type "link"
  ]
  edge [
    source 55
    target 2
    type "link"
  ]
  edge [
    source 58
    target 2
    type "link"
  ]
]
