graph [
  directed 1
  node [
    id 0
    label "java.io.ByteArrayInputStream"
    type "class"
    comment "&#10; * A {@code ByteArrayInputStream} contains&#10; * an internal buffer that contains bytes that&#10; * may be read from the stream. An internal&#10; * counter keeps track of the next byte to&#10; * be supplied by the {@code read} method.&#10; * <p>&#10; * Closing a {@code ByteArrayInputStream} has no effect. The methods in&#10; * this class can be called after the stream has been closed without&#10; * generating an {@code IOException}.&#10; *&#10; * @author  Arthur van Hoff&#10; * @see     java.io.StringBufferInputStream&#10; * @since   1.0&#10; "
  ]
  node [
    id 1
    label "public synchronized int read()"
    type "method"
    comment "&#10;     * Reads the next byte of data from this input stream. The value&#10;     * byte is returned as an {@code int} in the range&#10;     * {@code 0} to {@code 255}. If no byte is available&#10;     * because the end of the stream has been reached, the value&#10;     * {@code -1} is returned.&#10;     * <p>&#10;     * This {@code read} method&#10;     * cannot block.&#10;     *&#10;     * @return  the next byte of data, or {@code -1} if the end of the&#10;     *          stream has been reached.&#10;     "
  ]
  node [
    id 2
    label "public synchronized int read(byte[] b, int off, int len)"
    type "method"
    comment "&#10;     * Reads up to {@code len} bytes of data into an array of bytes from this&#10;     * input stream.  If {@code pos} equals {@code count}, then {@code -1} is&#10;     * returned to indicate end of file.  Otherwise, the  number {@code k} of&#10;     * bytes read is equal to the smaller of {@code len} and {@code count-pos}.&#10;     * If {@code k} is positive, then bytes {@code buf[pos]} through&#10;     * {@code buf[pos+k-1]} are copied into {@code b[off]} through&#10;     * {@code b[off+k-1]} in the manner performed by {@code System.arraycopy}.&#10;     * The value {@code k} is added into {@code pos} and {@code k} is returned.&#10;     * <p>&#10;     * This {@code read} method cannot block.&#10;     *&#10;     * @param   b     the buffer into which the data is read.&#10;     * @param   off   the start offset in the destination array {@code b}&#10;     * @param   len   the maximum number of bytes read.&#10;     * @return  the total number of bytes read into the buffer, or&#10;     *          {@code -1} if there is no more data because the end of&#10;     *          the stream has been reached.&#10;     * @throws  NullPointerException If {@code b} is {@code null}.&#10;     * @throws  IndexOutOfBoundsException If {@code off} is negative,&#10;     * {@code len} is negative, or {@code len} is greater than&#10;     * {@code b.length - off}&#10;     "
  ]
  node [
    id 3
    label "public synchronized long skip(long n)"
    type "method"
    comment "&#10;     * Skips {@code n} bytes of input from this input stream. Fewer&#10;     * bytes might be skipped if the end of the input stream is reached.&#10;     * The actual number {@code k}&#10;     * of bytes to be skipped is equal to the smaller&#10;     * of {@code n} and  {@code count-pos}.&#10;     * The value {@code k} is added into {@code pos}&#10;     * and {@code k} is returned.&#10;     *&#10;     * @param   n   the number of bytes to be skipped.&#10;     * @return  the actual number of bytes skipped.&#10;     "
  ]
  node [
    id 4
    label "public synchronized int available()"
    type "method"
    comment "&#10;     * Returns the number of remaining bytes that can be read (or skipped over)&#10;     * from this input stream.&#10;     * <p>&#10;     * The value returned is {@code count - pos},&#10;     * which is the number of bytes remaining to be read from the input buffer.&#10;     *&#10;     * @return  the number of remaining bytes that can be read (or skipped&#10;     *          over) from this input stream without blocking.&#10;     "
  ]
  node [
    id 5
    label "public boolean markSupported()"
    type "method"
    comment "&#10;     * Tests if this {@code InputStream} supports mark/reset. The&#10;     * {@code markSupported} method of {@code ByteArrayInputStream}&#10;     * always returns {@code true}.&#10;     *&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 6
    label "public void mark(int readAheadLimit)"
    type "method"
    comment "&#10;     * Set the current marked position in the stream.&#10;     * ByteArrayInputStream objects are marked at position zero by&#10;     * default when constructed.  They may be marked at another&#10;     * position within the buffer by this method.&#10;     * <p>&#10;     * If no mark has been set, then the value of the mark is the&#10;     * offset passed to the constructor (or 0 if the offset was not&#10;     * supplied).&#10;     *&#10;     * <p> Note: The {@code readAheadLimit} for this class&#10;     *  has no meaning.&#10;     *&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 7
    label "public synchronized void reset()"
    type "method"
    comment "&#10;     * Resets the buffer to the marked position.  The marked position&#10;     * is 0 unless another position was marked or an offset was specified&#10;     * in the constructor.&#10;     "
  ]
  node [
    id 8
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closing a {@code ByteArrayInputStream} has no effect. The methods in&#10;     * this class can be called after the stream has been closed without&#10;     * generating an {@code IOException}.&#10;     "
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
]
