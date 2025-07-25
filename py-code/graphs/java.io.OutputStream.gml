graph [
  directed 1
  node [
    id 0
    label "java.io.OutputStream"
    type "class"
    comment "&#10; * This abstract class is the superclass of all classes representing&#10; * an output stream of bytes. An output stream accepts output bytes&#10; * and sends them to some sink.&#10; * <p>&#10; * Applications that need to define a subclass of&#10; * {@code OutputStream} must always provide at least a method&#10; * that writes one byte of output.&#10; *&#10; * @author  Arthur van Hoff&#10; * @see     java.io.BufferedOutputStream&#10; * @see     java.io.ByteArrayOutputStream&#10; * @see     java.io.DataOutputStream&#10; * @see     java.io.FilterOutputStream&#10; * @see     java.io.InputStream&#10; * @see     java.io.OutputStream#write(int)&#10; * @since   1.0&#10; "
  ]
  node [
    id 1
    label "public static OutputStream nullOutputStream()"
    type "method"
    comment "&#10;     * Returns a new {@code OutputStream} which discards all bytes.  The&#10;     * returned stream is initially open.  The stream is closed by calling&#10;     * the {@code close()} method.  Subsequent calls to {@code close()} have&#10;     * no effect.&#10;     *&#10;     * <p> While the stream is open, the {@code write(int)}, {@code&#10;     * write(byte[])}, and {@code write(byte[], int, int)} methods do nothing.&#10;     * After the stream has been closed, these methods all throw {@code&#10;     * IOException}.&#10;     *&#10;     * <p> The {@code flush()} method does nothing.&#10;     *&#10;     * @return an {@code OutputStream} which discards all bytes&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 2
    label "public abstract void write(int b) throws IOException"
    type "method"
    comment "&#10;     * Writes the specified byte to this output stream. The general&#10;     * contract for {@code write} is that one byte is written&#10;     * to the output stream. The byte to be written is the eight&#10;     * low-order bits of the argument {@code b}. The 24&#10;     * high-order bits of {@code b} are ignored.&#10;     * <p>&#10;     * Subclasses of {@code OutputStream} must provide an&#10;     * implementation for this method.&#10;     *&#10;     * @param      b   the {@code byte}.&#10;     * @throws     IOException  if an I/O error occurs. In particular,&#10;     *             an {@code IOException} may be thrown if the&#10;     *             output stream has been closed.&#10;     "
  ]
  node [
    id 3
    label "public void write(byte[] b) throws IOException"
    type "method"
    comment "&#10;     * Writes {@code b.length} bytes from the specified byte array&#10;     * to this output stream. The general contract for {@code write(b)}&#10;     * is that it should have exactly the same effect as the call&#10;     * {@code write(b, 0, b.length)}.&#10;     *&#10;     * @param      b   the data.&#10;     * @throws     IOException  if an I/O error occurs.&#10;     * @see        java.io.OutputStream#write(byte[], int, int)&#10;     "
  ]
  node [
    id 4
    label "public void write(byte[] b, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Writes {@code len} bytes from the specified byte array&#10;     * starting at offset {@code off} to this output stream.&#10;     * The general contract for {@code write(b, off, len)} is that&#10;     * some of the bytes in the array {@code b} are written to the&#10;     * output stream in order; element {@code b[off]} is the first&#10;     * byte written and {@code b[off+len-1]} is the last byte written&#10;     * by this operation.&#10;     * <p>&#10;     * The {@code write} method of {@code OutputStream} calls&#10;     * the write method of one argument on each of the bytes to be&#10;     * written out. Subclasses are encouraged to override this method and&#10;     * provide a more efficient implementation.&#10;     * <p>&#10;     * If {@code b} is {@code null}, a&#10;     * {@code NullPointerException} is thrown.&#10;     * <p>&#10;     * If {@code off} is negative, or {@code len} is negative, or&#10;     * {@code off+len} is greater than the length of the array&#10;     * {@code b}, then an {@code IndexOutOfBoundsException} is thrown.&#10;     *&#10;     * @param      b     the data.&#10;     * @param      off   the start offset in the data.&#10;     * @param      len   the number of bytes to write.&#10;     * @throws     IOException  if an I/O error occurs. In particular,&#10;     *             an {@code IOException} is thrown if the output&#10;     *             stream is closed.&#10;     "
  ]
  node [
    id 5
    label "public void flush() throws IOException"
    type "method"
    comment "&#10;     * Flushes this output stream and forces any buffered output bytes&#10;     * to be written out. The general contract of {@code flush} is&#10;     * that calling it is an indication that, if any bytes previously&#10;     * written have been buffered by the implementation of the output&#10;     * stream, such bytes should immediately be written to their&#10;     * intended destination.&#10;     * <p>&#10;     * If the intended destination of this stream is an abstraction provided by&#10;     * the underlying operating system, for example a file, then flushing the&#10;     * stream guarantees only that bytes previously written to the stream are&#10;     * passed to the operating system for writing; it does not guarantee that&#10;     * they are actually written to a physical device such as a disk drive.&#10;     * <p>&#10;     * The {@code flush} method of {@code OutputStream} does nothing.&#10;     *&#10;     * @throws     IOException  if an I/O error occurs.&#10;     "
  ]
  node [
    id 6
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closes this output stream and releases any system resources&#10;     * associated with this stream. The general contract of {@code close}&#10;     * is that it closes the output stream. A closed stream cannot perform&#10;     * output operations and cannot be reopened.&#10;     * <p>&#10;     * The {@code close} method of {@code OutputStream} does nothing.&#10;     *&#10;     * @throws     IOException  if an I/O error occurs.&#10;     "
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
]
