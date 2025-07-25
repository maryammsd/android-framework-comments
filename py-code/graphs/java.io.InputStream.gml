graph [
  directed 1
  node [
    id 0
    label "java.io.InputStream"
    type "class"
    comment "&#10; * This abstract class is the superclass of all classes representing&#10; * an input stream of bytes.&#10; *&#10; * <p> Applications that need to define a subclass of {@code InputStream}&#10; * must always provide a method that returns the next byte of input.&#10; *&#10; * @author  Arthur van Hoff&#10; * @see     java.io.BufferedInputStream&#10; * @see     java.io.ByteArrayInputStream&#10; * @see     java.io.DataInputStream&#10; * @see     java.io.FilterInputStream&#10; * @see     java.io.InputStream#read()&#10; * @see     java.io.OutputStream&#10; * @see     java.io.PushbackInputStream&#10; * @since   1.0&#10; "
  ]
  node [
    id 1
    label "public static InputStream nullInputStream()"
    type "method"
    comment "&#10;     * Returns a new {@code InputStream} that reads no bytes. The returned&#10;     * stream is initially open.  The stream is closed by calling the&#10;     * {@code close()} method.  Subsequent calls to {@code close()} have no&#10;     * effect.&#10;     *&#10;     * <p> While the stream is open, the {@code available()}, {@code read()},&#10;     * {@code read(byte[])}, {@code read(byte[], int, int)},&#10;     * {@code readAllBytes()}, {@code readNBytes(byte[], int, int)},&#10;     * {@code readNBytes(int)}, {@code skip(long)}, {@code skipNBytes(long)},&#10;     * and {@code transferTo()} methods all behave as if end of stream has been&#10;     * reached.  After the stream has been closed, these methods all throw&#10;     * {@code IOException}.&#10;     *&#10;     * <p> The {@code markSupported()} method returns {@code false}.  The&#10;     * {@code mark()} method does nothing, and the {@code reset()} method&#10;     * throws {@code IOException}.&#10;     *&#10;     * @return an {@code InputStream} which contains no bytes&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 2
    label "public abstract int read() throws IOException"
    type "method"
    comment "&#10;     * Reads the next byte of data from the input stream. The value byte is&#10;     * returned as an {@code int} in the range {@code 0} to&#10;     * {@code 255}. If no byte is available because the end of the stream&#10;     * has been reached, the value {@code -1} is returned. This method&#10;     * blocks until input data is available, the end of the stream is detected,&#10;     * or an exception is thrown.&#10;     *&#10;     * <p> A subclass must provide an implementation of this method.&#10;     *&#10;     * @return     the next byte of data, or {@code -1} if the end of the&#10;     *             stream is reached.&#10;     * @throws     IOException  if an I/O error occurs.&#10;     "
  ]
  node [
    id 3
    label "public int read(byte[] b) throws IOException"
    type "method"
    comment "&#10;     * Reads some number of bytes from the input stream and stores them into&#10;     * the buffer array {@code b}. The number of bytes actually read is&#10;     * returned as an integer.  This method blocks until input data is&#10;     * available, end of file is detected, or an exception is thrown.&#10;     *&#10;     * <p> If the length of {@code b} is zero, then no bytes are read and&#10;     * {@code 0} is returned; otherwise, there is an attempt to read at&#10;     * least one byte. If no byte is available because the stream is at the&#10;     * end of the file, the value {@code -1} is returned; otherwise, at&#10;     * least one byte is read and stored into {@code b}.&#10;     *&#10;     * <p> The first byte read is stored into element {@code b[0]}, the&#10;     * next one into {@code b[1]}, and so on. The number of bytes read is,&#10;     * at most, equal to the length of {@code b}. Let <i>k</i> be the&#10;     * number of bytes actually read; these bytes will be stored in elements&#10;     * {@code b[0]} through {@code b[}<i>k</i>{@code -1]},&#10;     * leaving elements {@code b[}<i>k</i>{@code ]} through&#10;     * {@code b[b.length-1]} unaffected.&#10;     *&#10;     * <p> The {@code read(b)} method for class {@code InputStream}&#10;     * has the same effect as: <pre>{@code  read(b, 0, b.length) }</pre>&#10;     *&#10;     * @param      b   the buffer into which the data is read.&#10;     * @return     the total number of bytes read into the buffer, or&#10;     *             {@code -1} if there is no more data because the end of&#10;     *             the stream has been reached.&#10;     * @throws     IOException  If the first byte cannot be read for any reason&#10;     *             other than the end of the file, if the input stream has been&#10;     *             closed, or if some other I/O error occurs.&#10;     * @throws     NullPointerException  if {@code b} is {@code null}.&#10;     * @see        java.io.InputStream#read(byte[], int, int)&#10;     "
  ]
  node [
    id 4
    label "public int read(byte[] b, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Reads up to {@code len} bytes of data from the input stream into&#10;     * an array of bytes.  An attempt is made to read as many as&#10;     * {@code len} bytes, but a smaller number may be read.&#10;     * The number of bytes actually read is returned as an integer.&#10;     *&#10;     * <p> This method blocks until input data is available, end of file is&#10;     * detected, or an exception is thrown.&#10;     *&#10;     * <p> If {@code len} is zero, then no bytes are read and&#10;     * {@code 0} is returned; otherwise, there is an attempt to read at&#10;     * least one byte. If no byte is available because the stream is at end of&#10;     * file, the value {@code -1} is returned; otherwise, at least one&#10;     * byte is read and stored into {@code b}.&#10;     *&#10;     * <p> The first byte read is stored into element {@code b[off]}, the&#10;     * next one into {@code b[off+1]}, and so on. The number of bytes read&#10;     * is, at most, equal to {@code len}. Let <i>k</i> be the number of&#10;     * bytes actually read; these bytes will be stored in elements&#10;     * {@code b[off]} through {@code b[off+}<i>k</i>{@code -1]},&#10;     * leaving elements {@code b[off+}<i>k</i>{@code ]} through&#10;     * {@code b[off+len-1]} unaffected.&#10;     *&#10;     * <p> In every case, elements {@code b[0]} through&#10;     * {@code b[off-1]} and elements {@code b[off+len]} through&#10;     * {@code b[b.length-1]} are unaffected.&#10;     *&#10;     * <p> The {@code read(b, off, len)} method&#10;     * for class {@code InputStream} simply calls the method&#10;     * {@code read()} repeatedly. If the first such call results in an&#10;     * {@code IOException}, that exception is returned from the call to&#10;     * the {@code read(b,} {@code off,} {@code len)} method.  If&#10;     * any subsequent call to {@code read()} results in a&#10;     * {@code IOException}, the exception is caught and treated as if it&#10;     * were end of file; the bytes read up to that point are stored into&#10;     * {@code b} and the number of bytes read before the exception&#10;     * occurred is returned. The default implementation of this method blocks&#10;     * until the requested amount of input data {@code len} has been read,&#10;     * end of file is detected, or an exception is thrown. Subclasses are&#10;     * encouraged to provide a more efficient implementation of this method.&#10;     *&#10;     * @param      b     the buffer into which the data is read.&#10;     * @param      off   the start offset in array {@code b}&#10;     *                   at which the data is written.&#10;     * @param      len   the maximum number of bytes to read.&#10;     * @return     the total number of bytes read into the buffer, or&#10;     *             {@code -1} if there is no more data because the end of&#10;     *             the stream has been reached.&#10;     * @throws     IOException If the first byte cannot be read for any reason&#10;     *             other than end of file, or if the input stream has been closed,&#10;     *             or if some other I/O error occurs.&#10;     * @throws     NullPointerException If {@code b} is {@code null}.&#10;     * @throws     IndexOutOfBoundsException If {@code off} is negative,&#10;     *             {@code len} is negative, or {@code len} is greater than&#10;     *             {@code b.length - off}&#10;     * @see        java.io.InputStream#read()&#10;     "
  ]
  node [
    id 5
    label "public byte[] readAllBytes() throws IOException"
    type "method"
    comment "&#10;     * Reads all remaining bytes from the input stream. This method blocks until&#10;     * all remaining bytes have been read and end of stream is detected, or an&#10;     * exception is thrown. This method does not close the input stream.&#10;     *&#10;     * <p> When this stream reaches end of stream, further invocations of this&#10;     * method will return an empty byte array.&#10;     *&#10;     * <p> Note that this method is intended for simple cases where it is&#10;     * convenient to read all bytes into a byte array. It is not intended for&#10;     * reading input streams with large amounts of data.&#10;     *&#10;     * <p> The behavior for the case where the input stream is <i>asynchronously&#10;     * closed</i>, or the thread interrupted during the read, is highly input&#10;     * stream specific, and therefore not specified.&#10;     *&#10;     * <p> If an I/O error occurs reading from the input stream, then it may do&#10;     * so after some, but not all, bytes have been read. Consequently the input&#10;     * stream may not be at end of stream and may be in an inconsistent state.&#10;     * It is strongly recommended that the stream be promptly closed if an I/O&#10;     * error occurs.&#10;     *&#10;     * @implSpec&#10;     * This method invokes {@link #readNBytes(int)} with a length of&#10;     * {@link Integer#MAX_VALUE}.&#10;     *&#10;     * @return a byte array containing the bytes read from this input stream&#10;     * @throws IOException if an I/O error occurs&#10;     * @throws OutOfMemoryError if an array of the required size cannot be&#10;     *         allocated.&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 6
    label "MAX_VALUE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "readNBytes(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label "public byte[] readNBytes(int len) throws IOException"
    type "method"
    comment "&#10;     * Reads up to a specified number of bytes from the input stream. This&#10;     * method blocks until the requested number of bytes has been read, end&#10;     * of stream is detected, or an exception is thrown. This method does not&#10;     * close the input stream.&#10;     *&#10;     * <p> The length of the returned array equals the number of bytes read&#10;     * from the stream. If {@code len} is zero, then no bytes are read and&#10;     * an empty byte array is returned. Otherwise, up to {@code len} bytes&#10;     * are read from the stream. Fewer than {@code len} bytes may be read if&#10;     * end of stream is encountered.&#10;     *&#10;     * <p> When this stream reaches end of stream, further invocations of this&#10;     * method will return an empty byte array.&#10;     *&#10;     * <p> Note that this method is intended for simple cases where it is&#10;     * convenient to read the specified number of bytes into a byte array. The&#10;     * total amount of memory allocated by this method is proportional to the&#10;     * number of bytes read from the stream which is bounded by {@code len}.&#10;     * Therefore, the method may be safely called with very large values of&#10;     * {@code len} provided sufficient memory is available.&#10;     *&#10;     * <p> The behavior for the case where the input stream is <i>asynchronously&#10;     * closed</i>, or the thread interrupted during the read, is highly input&#10;     * stream specific, and therefore not specified.&#10;     *&#10;     * <p> If an I/O error occurs reading from the input stream, then it may do&#10;     * so after some, but not all, bytes have been read. Consequently the input&#10;     * stream may not be at end of stream and may be in an inconsistent state.&#10;     * It is strongly recommended that the stream be promptly closed if an I/O&#10;     * error occurs.&#10;     *&#10;     * @implNote&#10;     * The number of bytes allocated to read data from this stream and return&#10;     * the result is bounded by {@code 2*(long)len}, inclusive.&#10;     *&#10;     * @param len the maximum number of bytes to read&#10;     * @return a byte array containing the bytes read from this input stream&#10;     * @throws IllegalArgumentException if {@code length} is negative&#10;     * @throws IOException if an I/O error occurs&#10;     * @throws OutOfMemoryError if an array of the required size cannot be&#10;     *         allocated.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 9
    label "public int readNBytes(byte[] b, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Reads the requested number of bytes from the input stream into the given&#10;     * byte array. This method blocks until {@code len} bytes of input data have&#10;     * been read, end of stream is detected, or an exception is thrown. The&#10;     * number of bytes actually read, possibly zero, is returned. This method&#10;     * does not close the input stream.&#10;     *&#10;     * <p> In the case where end of stream is reached before {@code len} bytes&#10;     * have been read, then the actual number of bytes read will be returned.&#10;     * When this stream reaches end of stream, further invocations of this&#10;     * method will return zero.&#10;     *&#10;     * <p> If {@code len} is zero, then no bytes are read and {@code 0} is&#10;     * returned; otherwise, there is an attempt to read up to {@code len} bytes.&#10;     *&#10;     * <p> The first byte read is stored into element {@code b[off]}, the next&#10;     * one in to {@code b[off+1]}, and so on. The number of bytes read is, at&#10;     * most, equal to {@code len}. Let <i>k</i> be the number of bytes actually&#10;     * read; these bytes will be stored in elements {@code b[off]} through&#10;     * {@code b[off+}<i>k</i>{@code -1]}, leaving elements {@code b[off+}<i>k</i>&#10;     * {@code ]} through {@code b[off+len-1]} unaffected.&#10;     *&#10;     * <p> The behavior for the case where the input stream is <i>asynchronously&#10;     * closed</i>, or the thread interrupted during the read, is highly input&#10;     * stream specific, and therefore not specified.&#10;     *&#10;     * <p> If an I/O error occurs reading from the input stream, then it may do&#10;     * so after some, but not all, bytes of {@code b} have been updated with&#10;     * data from the input stream. Consequently the input stream and {@code b}&#10;     * may be in an inconsistent state. It is strongly recommended that the&#10;     * stream be promptly closed if an I/O error occurs.&#10;     *&#10;     * @param  b the byte array into which the data is read&#10;     * @param  off the start offset in {@code b} at which the data is written&#10;     * @param  len the maximum number of bytes to read&#10;     * @return the actual number of bytes read into the buffer&#10;     * @throws IOException if an I/O error occurs&#10;     * @throws NullPointerException if {@code b} is {@code null}&#10;     * @throws IndexOutOfBoundsException If {@code off} is negative, {@code len}&#10;     *         is negative, or {@code len} is greater than {@code b.length - off}&#10;     *&#10;     * @since 9&#10;     "
  ]
  node [
    id 10
    label "public long skip(long n) throws IOException"
    type "method"
    comment "&#10;     * Skips over and discards {@code n} bytes of data from this input&#10;     * stream. The {@code skip} method may, for a variety of reasons, end&#10;     * up skipping over some smaller number of bytes, possibly {@code 0}.&#10;     * This may result from any of a number of conditions; reaching end of file&#10;     * before {@code n} bytes have been skipped is only one possibility.&#10;     * The actual number of bytes skipped is returned. If {@code n} is&#10;     * negative, the {@code skip} method for class {@code InputStream} always&#10;     * returns 0, and no bytes are skipped. Subclasses may handle the negative&#10;     * value differently.&#10;     *&#10;     * <p> The {@code skip} method implementation of this class creates a&#10;     * byte array and then repeatedly reads into it until {@code n} bytes&#10;     * have been read or the end of the stream has been reached. Subclasses are&#10;     * encouraged to provide a more efficient implementation of this method.&#10;     * For instance, the implementation may depend on the ability to seek.&#10;     *&#10;     * @param      n   the number of bytes to be skipped.&#10;     * @return     the actual number of bytes skipped which might be zero.&#10;     * @throws     IOException  if an I/O error occurs.&#10;     * @see        java.io.InputStream#skipNBytes(long)&#10;     "
  ]
  node [
    id 11
    label "public void skipNBytes(long n) throws IOException"
    type "method"
    comment "&#10;     * Skips over and discards exactly {@code n} bytes of data from this input&#10;     * stream.  If {@code n} is zero, then no bytes are skipped.&#10;     * If {@code n} is negative, then no bytes are skipped.&#10;     * Subclasses may handle the negative value differently.&#10;     *&#10;     * <p> This method blocks until the requested number of bytes has been&#10;     * skipped, end of file is reached, or an exception is thrown.&#10;     *&#10;     * <p> If end of stream is reached before the stream is at the desired&#10;     * position, then an {@code EOFException} is thrown.&#10;     *&#10;     * <p> If an I/O error occurs, then the input stream may be&#10;     * in an inconsistent state. It is strongly recommended that the&#10;     * stream be promptly closed if an I/O error occurs.&#10;     *&#10;     * @implNote&#10;     * Subclasses are encouraged to provide a more efficient implementation&#10;     * of this method.&#10;     *&#10;     * @implSpec&#10;     * If {@code n} is zero or negative, then no bytes are skipped.&#10;     * If {@code n} is positive, the default implementation of this method&#10;     * invokes {@link #skip(long) skip()} repeatedly with its parameter equal&#10;     * to the remaining number of bytes to skip until the requested number&#10;     * of bytes has been skipped or an error condition occurs.  If at any&#10;     * point the return value of {@code skip()} is negative or greater than the&#10;     * remaining number of bytes to be skipped, then an {@code IOException} is&#10;     * thrown.  If {@code skip()} ever returns zero, then {@link #read()} is&#10;     * invoked to read a single byte, and if it returns {@code -1}, then an&#10;     * {@code EOFException} is thrown.  Any exception thrown by {@code skip()}&#10;     * or {@code read()} will be propagated.&#10;     *&#10;     * @param      n   the number of bytes to be skipped.&#10;     * @throws     EOFException if end of stream is encountered before the&#10;     *             stream can be positioned {@code n} bytes beyond its position&#10;     *             when this method was invoked.&#10;     * @throws     IOException  if the stream cannot be positioned properly or&#10;     *             if an I/O error occurs.&#10;     * @see        java.io.InputStream#skip(long)&#10;     *&#10;     * @since 12&#10;     "
  ]
  node [
    id 12
    label "read()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 13
    label "skip(long)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 14
    label "public int available() throws IOException"
    type "method"
    comment "&#10;     * Returns an estimate of the number of bytes that can be read (or skipped&#10;     * over) from this input stream without blocking, which may be 0, or 0 when&#10;     * end of stream is detected.  The read might be on the same thread or&#10;     * another thread.  A single read or skip of this many bytes will not block,&#10;     * but may read or skip fewer bytes.&#10;     *&#10;     * <p> Note that while some implementations of {@code InputStream} will&#10;     * return the total number of bytes in the stream, many will not.  It is&#10;     * never correct to use the return value of this method to allocate&#10;     * a buffer intended to hold all data in this stream.&#10;     *&#10;     * <p> A subclass's implementation of this method may choose to throw an&#10;     * {@link IOException} if this input stream has been closed by invoking the&#10;     * {@link #close()} method.&#10;     *&#10;     * <p> The {@code available} method of {@code InputStream} always returns&#10;     * {@code 0}.&#10;     *&#10;     * <p> This method should be overridden by subclasses.&#10;     *&#10;     * @return     an estimate of the number of bytes that can be read (or&#10;     *             skipped over) from this input stream without blocking or&#10;     *             {@code 0} when it reaches the end of the input stream.&#10;     * @throws     IOException if an I/O error occurs.&#10;     "
  ]
  node [
    id 15
    label "close()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 16
    label "IOException"
  ]
  node [
    id 17
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closes this input stream and releases any system resources associated&#10;     * with the stream.&#10;     *&#10;     * <p> The {@code close} method of {@code InputStream} does&#10;     * nothing.&#10;     *&#10;     * @throws     IOException  if an I/O error occurs.&#10;     "
  ]
  node [
    id 18
    label "public synchronized void mark(int readlimit)"
    type "method"
    comment "&#10;     * Marks the current position in this input stream. A subsequent call to&#10;     * the {@code reset} method repositions this stream at the last marked&#10;     * position so that subsequent reads re-read the same bytes.&#10;     *&#10;     * <p> The {@code readlimit} arguments tells this input stream to&#10;     * allow that many bytes to be read before the mark position gets&#10;     * invalidated.&#10;     *&#10;     * <p> The general contract of {@code mark} is that, if the method&#10;     * {@code markSupported} returns {@code true}, the stream somehow&#10;     * remembers all the bytes read after the call to {@code mark} and&#10;     * stands ready to supply those same bytes again if and whenever the method&#10;     * {@code reset} is called.  However, the stream is not required to&#10;     * remember any data at all if more than {@code readlimit} bytes are&#10;     * read from the stream before {@code reset} is called.&#10;     *&#10;     * <p> Marking a closed stream should not have any effect on the stream.&#10;     *&#10;     * <p> The {@code mark} method of {@code InputStream} does&#10;     * nothing.&#10;     *&#10;     * @param   readlimit   the maximum limit of bytes that can be read before&#10;     *                      the mark position becomes invalid.&#10;     * @see     java.io.InputStream#reset()&#10;     "
  ]
  node [
    id 19
    label "public synchronized void reset() throws IOException"
    type "method"
    comment "&#10;     * Repositions this stream to the position at the time the&#10;     * {@code mark} method was last called on this input stream.&#10;     *&#10;     * <p> The general contract of {@code reset} is:&#10;     *&#10;     * <ul>&#10;     * <li> If the method {@code markSupported} returns&#10;     * {@code true}, then:&#10;     *&#10;     *     <ul><li> If the method {@code mark} has not been called since&#10;     *     the stream was created, or the number of bytes read from the stream&#10;     *     since {@code mark} was last called is larger than the argument&#10;     *     to {@code mark} at that last call, then an&#10;     *     {@code IOException} might be thrown.&#10;     *&#10;     *     <li> If such an {@code IOException} is not thrown, then the&#10;     *     stream is reset to a state such that all the bytes read since the&#10;     *     most recent call to {@code mark} (or since the start of the&#10;     *     file, if {@code mark} has not been called) will be resupplied&#10;     *     to subsequent callers of the {@code read} method, followed by&#10;     *     any bytes that otherwise would have been the next input data as of&#10;     *     the time of the call to {@code reset}. </ul>&#10;     *&#10;     * <li> If the method {@code markSupported} returns&#10;     * {@code false}, then:&#10;     *&#10;     *     <ul><li> The call to {@code reset} may throw an&#10;     *     {@code IOException}.&#10;     *&#10;     *     <li> If an {@code IOException} is not thrown, then the stream&#10;     *     is reset to a fixed state that depends on the particular type of the&#10;     *     input stream and how it was created. The bytes that will be supplied&#10;     *     to subsequent callers of the {@code read} method depend on the&#10;     *     particular type of the input stream. </ul></ul>&#10;     *&#10;     * <p>The method {@code reset} for class {@code InputStream}&#10;     * does nothing except throw an {@code IOException}.&#10;     *&#10;     * @throws  IOException  if this stream has not been marked or if the&#10;     *          mark has been invalidated.&#10;     * @see     java.io.InputStream#mark(int)&#10;     * @see     java.io.IOException&#10;     "
  ]
  node [
    id 20
    label "public boolean markSupported()"
    type "method"
    comment "&#10;     * Tests if this input stream supports the {@code mark} and&#10;     * {@code reset} methods. Whether or not {@code mark} and&#10;     * {@code reset} are supported is an invariant property of a&#10;     * particular input stream instance. The {@code markSupported} method&#10;     * of {@code InputStream} returns {@code false}.&#10;     *&#10;     * @return  {@code true} if this stream instance supports the mark&#10;     *          and reset methods; {@code false} otherwise.&#10;     * @see     java.io.InputStream#mark(int)&#10;     * @see     java.io.InputStream#reset()&#10;     "
  ]
  node [
    id 21
    label "public long transferTo(OutputStream out) throws IOException"
    type "method"
    comment "&#10;     * Reads all bytes from this input stream and writes the bytes to the&#10;     * given output stream in the order that they are read. On return, this&#10;     * input stream will be at end of stream. This method does not close either&#10;     * stream.&#10;     * <p>&#10;     * This method may block indefinitely reading from the input stream, or&#10;     * writing to the output stream. The behavior for the case where the input&#10;     * and/or output stream is <i>asynchronously closed</i>, or the thread&#10;     * interrupted during the transfer, is highly input and output stream&#10;     * specific, and therefore not specified.&#10;     * <p>&#10;     * If an I/O error occurs reading from the input stream or writing to the&#10;     * output stream, then it may do so after some bytes have been read or&#10;     * written. Consequently the input stream may not be at end of stream and&#10;     * one, or both, streams may be in an inconsistent state. It is strongly&#10;     * recommended that both streams be promptly closed if an I/O error occurs.&#10;     *&#10;     * @param  out the output stream, non-null&#10;     * @return the number of bytes transferred&#10;     * @throws IOException if an I/O error occurs when reading or writing&#10;     * @throws NullPointerException if {@code out} is {@code null}&#10;     *&#10;     * @since 9&#10;     "
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
    target 14
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
    source 5
    target 6
    type "link"
  ]
  edge [
    source 5
    target 7
    type "link"
  ]
  edge [
    source 11
    target 12
    type "link"
  ]
  edge [
    source 11
    target 13
    type "link"
  ]
  edge [
    source 14
    target 15
    type "link"
  ]
  edge [
    source 14
    target 16
    type "link"
  ]
]
