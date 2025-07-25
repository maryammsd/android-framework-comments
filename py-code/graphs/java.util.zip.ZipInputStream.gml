graph [
  directed 1
  node [
    id 0
    label "java.util.zip.ZipInputStream"
    type "class"
    comment "&#10; * This class implements an input stream filter for reading files in the&#10; * ZIP file format. Includes support for both compressed and uncompressed&#10; * entries.&#10; *&#10; * @author      David Connelly&#10; * @since 1.1&#10; "
  ]
  node [
    id 1
    label "private void ensureOpen() throws IOException"
    type "method"
    comment "&#10;     * Check to make sure that this stream has not been closed&#10;     "
  ]
  node [
    id 2
    label "public ZipEntry getNextEntry() throws IOException"
    type "method"
    comment "&#10;     * Reads the next ZIP file entry and positions the stream at the&#10;     * beginning of the entry data.&#10;     *&#10;     * <p>If the app targets Android U or above, zip file entry names containing&#10;     * &#34;..&#34; or starting with &#34;/&#34; passed here will throw a {@link ZipException}.&#10;     * For more details, see {@link dalvik.system.ZipPathValidator}.&#10;     *&#10;     * @return the next ZIP file entry, or null if there are no more entries&#10;     * @throws ZipException if (1) a ZIP file error has occurred or&#10;     *            (2) <code>targetSdkVersion >= BUILD.VERSION_CODES.UPSIDE_DOWN_CAKE</code>&#10;     *            and (the <code>name</code> argument contains &#34;..&#34; or starts with &#34;/&#34;).&#10;     * @throws IOException if an I/O error has occurred&#10;     "
  ]
  node [
    id 3
    label "ZipException"
  ]
  node [
    id 4
    label "dalvik.system.ZipPathValidator"
    type "class"
    comment "&#10; * Enables validation of zip file entry paths to prevent exploitation of the path traversal&#10; * vulnerability, e.g. zip path entries containing &#34;..&#34; or &#34;/&#34;. For more details, read&#10; * <a href=&#34;https://developer.android.com/topic/security/risks/zip-path-traversal&#34;>this</a>.&#10; * <p>&#10; * The default implementation accepts all zip file entry paths without raising any exceptions.&#10; * <p>&#10; * For custom validation rules, the core functionality should be implemented in a {@link Callback}&#10; * interface and that instance should be set in {@link #setCallback(Callback)}.&#10; * <p>&#10; * Existing validation could be set to a default one by calling {@link #clearCallback()}.&#10; "
  ]
  node [
    id 5
    label "public static void clearCallback()"
    type "method"
    comment "&#10;     * Clears the current validation mechanism by setting the current callback instance to a default&#10;     * validation.&#10;     "
  ]
  node [
    id 6
    label "public static void setCallback(@NonNull Callback callback)"
    type "method"
    comment "&#10;     * Sets the current callback implementation for zip paths.&#10;     * <p>&#10;     * The provided callback should not perform IO or any blocking operations, but only perform path&#10;     * validation. A typical implementation will validate String entries in a single pass and throw&#10;     * a {@link ZipException} if the path contains potentially hazardous components such as &#34;..&#34;.&#10;     *&#10;     * @param callback An instance of {@link Callback}'s implementation.&#10;     "
  ]
  node [
    id 7
    label "Callback"
  ]
  node [
    id 8
    label "java.util.zip.ZipException"
    type "class"
    comment ""
  ]
  node [
    id 9
    label "public void closeEntry() throws IOException"
    type "method"
    comment "&#10;     * Closes the current ZIP entry and positions the stream for reading the&#10;     * next entry.&#10;     * @throws    ZipException if a ZIP file error has occurred&#10;     * @throws    IOException if an I/O error has occurred&#10;     "
  ]
  node [
    id 10
    label "public int available() throws IOException"
    type "method"
    comment "&#10;     * Returns 0 after EOF has reached for the current entry data,&#10;     * otherwise always return 1.&#10;     * <p>&#10;     * Programs should not count on this method to return the actual number&#10;     * of bytes that could be read without blocking.&#10;     *&#10;     * @return     1 before EOF and 0 after EOF has reached for current entry.&#10;     * @throws     IOException  if an I/O error occurs.&#10;     *&#10;     "
  ]
  node [
    id 11
    label "public int read(byte[] b, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Reads from the current ZIP entry into an array of bytes.&#10;     * If {@code len} is not zero, the method&#10;     * blocks until some input is available; otherwise, no&#10;     * bytes are read and {@code 0} is returned.&#10;     * @param b the buffer into which the data is read&#10;     * @param off the start offset in the destination array {@code b}&#10;     * @param len the maximum number of bytes read&#10;     * @return the actual number of bytes read, or -1 if the end of the&#10;     *         entry is reached&#10;     * @throws     NullPointerException if {@code b} is {@code null}.&#10;     * @throws     IndexOutOfBoundsException if {@code off} is negative,&#10;     * {@code len} is negative, or {@code len} is greater than&#10;     * {@code b.length - off}&#10;     * @throws    ZipException if a ZIP file error has occurred&#10;     * @throws    IOException if an I/O error has occurred&#10;     "
  ]
  node [
    id 12
    label "public long skip(long n) throws IOException"
    type "method"
    comment "&#10;     * Skips specified number of bytes in the current ZIP entry.&#10;     * @param n the number of bytes to skip&#10;     * @return the actual number of bytes skipped&#10;     * @throws    ZipException if a ZIP file error has occurred&#10;     * @throws    IOException if an I/O error has occurred&#10;     * @throws    IllegalArgumentException if {@code n < 0}&#10;     "
  ]
  node [
    id 13
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closes this input stream and releases any system resources associated&#10;     * with the stream.&#10;     * @throws    IOException if an I/O error has occurred&#10;     "
  ]
  node [
    id 14
    label "private ZipEntry readLOC() throws IOException"
    type "method"
    comment "&#10;     * Reads local file (LOC) header for next entry.&#10;     "
  ]
  node [
    id 15
    label "protected ZipEntry createZipEntry(String name)"
    type "method"
    comment "&#10;     * Creates a new {@code ZipEntry} object for the specified&#10;     * entry name.&#10;     *&#10;     * @param name the ZIP file entry name&#10;     * @return the ZipEntry just created&#10;     "
  ]
  node [
    id 16
    label "private void readEnd(ZipEntry e) throws IOException"
    type "method"
    comment "&#10;     * Reads end of deflated entry as well as EXT descriptor if present.&#10;     *&#10;     * Local headers for DEFLATED entries may optionally be followed by a&#10;     * data descriptor, and that data descriptor may optionally contain a&#10;     * leading signature (EXTSIG).&#10;     *&#10;     * From the zip spec http://www.pkware.com/documents/casestudies/APPNOTE.TXT&#10;     *&#10;     * &#34;&#34;&#34;Although not originally assigned a signature, the value 0x08074b50&#10;     * has commonly been adopted as a signature value for the data descriptor&#10;     * record.  Implementers should be aware that ZIP files may be&#10;     * encountered with or without this signature marking data descriptors&#10;     * and should account for either case when reading ZIP files to ensure&#10;     * compatibility.&#34;&#34;&#34;&#10;     "
  ]
  node [
    id 17
    label "private void readFully(byte[] b, int off, int len) throws IOException"
    type "method"
    comment "&#10;     * Reads bytes, blocking until all bytes are read.&#10;     "
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
    source 2
    target 3
    type "link"
  ]
  edge [
    source 2
    target 4
    type "link"
  ]
  edge [
    source 4
    target 5
    type "child"
  ]
  edge [
    source 4
    target 6
    type "child"
  ]
  edge [
    source 6
    target 7
    type "link"
  ]
  edge [
    source 6
    target 8
    type "link"
  ]
]
