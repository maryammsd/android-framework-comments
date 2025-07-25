graph [
  directed 1
  node [
    id 0
    label "java.io.Closeable"
    type "class"
    comment "&#10; * A {@code Closeable} is a source or destination of data that can be closed.&#10; * The close method is invoked to release resources that the object is&#10; * holding (such as open files).&#10; *&#10; * @since 1.5&#10; "
  ]
  node [
    id 1
    label "public void close() throws IOException"
    type "method"
    comment "&#10;     * Closes this stream and releases any system resources associated&#10;     * with it. If the stream is already closed then invoking this&#10;     * method has no effect.&#10;     *&#10;     * <p> As noted in {@link AutoCloseable#close()}, cases where the&#10;     * close may fail require careful attention. It is strongly advised&#10;     * to relinquish the underlying resources and to internally&#10;     * <em>mark</em> the {@code Closeable} as closed, prior to throwing&#10;     * the {@code IOException}.&#10;     *&#10;     * @throws IOException if an I/O error occurs&#10;     "
  ]
  node [
    id 2
    label "close()"
    type "link-shadow"
    comment "No comment available"
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
]
