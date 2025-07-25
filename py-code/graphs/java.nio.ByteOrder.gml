graph [
  directed 1
  node [
    id 0
    label "java.nio.ByteOrder"
    type "class"
    comment ""
  ]
  node [
    id 1
    label "public static ByteOrder nativeOrder()"
    type "method"
    comment "&#10;     * Retrieves the native byte order of the underlying platform.&#10;     *&#10;     * <p> This method is defined so that performance-sensitive Java code can&#10;     * allocate direct buffers with the same byte order as the hardware.&#10;     * Native code libraries are often more efficient when such buffers are&#10;     * used.  </p>&#10;     *&#10;     * @return  The native byte order of the hardware upon which this Java&#10;     *          virtual machine is running&#10;     "
  ]
  node [
    id 2
    label "public String toString()"
    type "method"
    comment "&#10;     * Constructs a string describing this object.&#10;     *&#10;     * <p> This method returns the string&#10;     * {@code &#34;BIG_ENDIAN&#34;} for {@link #BIG_ENDIAN} and&#10;     * {@code &#34;LITTLE_ENDIAN&#34;} for {@link #LITTLE_ENDIAN}.&#10;     *&#10;     * @return  The specified string&#10;     "
  ]
  node [
    id 3
    label "LITTLE_ENDIAN"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "BIG_ENDIAN"
    type "link-shadow"
    comment "No comment available"
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
    source 2
    target 3
    type "link"
  ]
  edge [
    source 2
    target 4
    type "link"
  ]
]
