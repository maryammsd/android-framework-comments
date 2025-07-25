graph [
  directed 1
  node [
    id 0
    label "android.content.ComponentName"
    type "class"
    comment "&#10; * Identifier for a specific application component&#10; * ({@link android.app.Activity}, {@link android.app.Service},&#10; * {@link android.content.BroadcastReceiver}, or&#10; * {@link android.content.ContentProvider}) that is available.  Two&#10; * pieces of information, encapsulated here, are required to identify&#10; * a component: the package (a String) it exists in, and the class (a String)&#10; * name inside of that package.&#10; *&#10; "
  ]
  node [
    id 1
    label "public static ComponentName createRelative(@NonNull String pkg, @NonNull String cls)"
    type "method"
    comment "&#10;     * Create a new component identifier where the class name may be specified&#10;     * as either absolute or relative to the containing package.&#10;     *&#10;     * <p>Relative package names begin with a <code>'.'</code> character. For a package&#10;     * <code>&#34;com.example&#34;</code> and class name <code>&#34;.app.MyActivity&#34;</code> this method&#10;     * will return a ComponentName with the package <code>&#34;com.example&#34;</code>and class name&#10;     * <code>&#34;com.example.app.MyActivity&#34;</code>. Fully qualified class names are also&#10;     * permitted.</p>&#10;     *&#10;     * @param pkg the name of the package the component exists in&#10;     * @param cls the name of the class inside of <var>pkg</var> that implements&#10;     *            the component&#10;     * @return the new ComponentName&#10;     "
  ]
  node [
    id 2
    label "public static ComponentName createRelative(@NonNull Context pkg, @NonNull String cls)"
    type "method"
    comment "&#10;     * Create a new component identifier where the class name may be specified&#10;     * as either absolute or relative to the containing package.&#10;     *&#10;     * <p>Relative package names begin with a <code>'.'</code> character. For a package&#10;     * <code>&#34;com.example&#34;</code> and class name <code>&#34;.app.MyActivity&#34;</code> this method&#10;     * will return a ComponentName with the package <code>&#34;com.example&#34;</code>and class name&#10;     * <code>&#34;com.example.app.MyActivity&#34;</code>. Fully qualified class names are also&#10;     * permitted.</p>&#10;     *&#10;     * @param pkg a Context for the package implementing the component&#10;     * @param cls the name of the class inside of <var>pkg</var> that implements&#10;     *            the component&#10;     * @return the new ComponentName&#10;     "
  ]
  node [
    id 3
    label "public String getPackageName()"
    type "method"
    comment "&#10;     * Return the package name of this component.&#10;     "
  ]
  node [
    id 4
    label "public String getClassName()"
    type "method"
    comment "&#10;     * Return the class name of this component.&#10;     "
  ]
  node [
    id 5
    label "public String getShortClassName()"
    type "method"
    comment "&#10;     * Return the class name, either fully qualified or in a shortened form&#10;     * (with a leading '.') if it is a suffix of the package.&#10;     "
  ]
  node [
    id 6
    label "public String flattenToString()"
    type "method"
    comment "&#10;     * Return a String that unambiguously describes both the package and&#10;     * class names contained in the ComponentName.  You can later recover&#10;     * the ComponentName from this string through&#10;     * {@link #unflattenFromString(String)}.&#10;     *&#10;     * @return Returns a new String holding the package and class names.  This&#10;     * is represented as the package name, concatenated with a '/' and then the&#10;     * class name.&#10;     *&#10;     * @see #unflattenFromString(String)&#10;     "
  ]
  node [
    id 7
    label "unflattenFromString(String)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label "public String flattenToShortString()"
    type "method"
    comment "&#10;     * The same as {@link #flattenToString()}, but abbreviates the class&#10;     * name if it is a suffix of the package.  The result can still be used&#10;     * with {@link #unflattenFromString(String)}.&#10;     *&#10;     * @return Returns a new String holding the package and class names.  This&#10;     * is represented as the package name, concatenated with a '/' and then the&#10;     * class name.&#10;     *&#10;     * @see #unflattenFromString(String)&#10;     "
  ]
  node [
    id 9
    label "flattenToString()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 10
    label "public static ComponentName unflattenFromString(@NonNull String str)"
    type "method"
    comment "&#10;     * Recover a ComponentName from a String that was previously created with&#10;     * {@link #flattenToString()}.  It splits the string at the first '/',&#10;     * taking the part before as the package name and the part after as the&#10;     * class name.  As a special convenience (to use, for example, when&#10;     * parsing component names on the command line), if the '/' is immediately&#10;     * followed by a '.' then the final class name will be the concatenation&#10;     * of the package name with the string following the '/'.  Thus&#10;     * &#34;com.foo/.Blah&#34; becomes package=&#34;com.foo&#34; class=&#34;com.foo.Blah&#34;.&#10;     *&#10;     * @param str The String that was returned by flattenToString().&#10;     * @return Returns a new ComponentName containing the package and class&#10;     * names that were encoded in <var>str</var>&#10;     *&#10;     * @see #flattenToString()&#10;     "
  ]
  node [
    id 11
    label "public String toShortString()"
    type "method"
    comment "&#10;     * Return string representation of this class without the class's name&#10;     * as a prefix.&#10;     "
  ]
  node [
    id 12
    label "public boolean equals(@Nullable Object obj)"
    type "method"
    comment "&#10;     * {@inheritDoc}&#10;     *&#10;     * <p>Two components are considered to be equal if the packages in which they reside have the&#10;     * same name, and if the classes that implement each component also have the same name.&#10;     "
  ]
  node [
    id 13
    label "public static void writeToParcel(ComponentName c, Parcel out)"
    type "method"
    comment "&#10;     * Write a ComponentName to a Parcel, handling null pointers.  Must be&#10;     * read with {@link #readFromParcel(Parcel)}.&#10;     *&#10;     * @param c The ComponentName to be written.&#10;     * @param out The Parcel in which the ComponentName will be placed.&#10;     *&#10;     * @see #readFromParcel(Parcel)&#10;     "
  ]
  node [
    id 14
    label "readFromParcel(Parcel)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public static ComponentName readFromParcel(Parcel in)"
    type "method"
    comment "&#10;     * Read a ComponentName from a Parcel that was previously written&#10;     * with {@link #writeToParcel(ComponentName, Parcel)}, returning either&#10;     * a null or new object as appropriate.&#10;     *&#10;     * @param in The Parcel from which to read the ComponentName&#10;     * @return Returns a new ComponentName matching the previously written&#10;     * object, or null if a null had been written.&#10;     *&#10;     * @see #writeToParcel(ComponentName, Parcel)&#10;     "
  ]
  node [
    id 16
    label "writeToParcel(ComponentName"
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
    target 8
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
    target 15
    type "child"
  ]
  edge [
    source 6
    target 7
    type "link"
  ]
  edge [
    source 8
    target 7
    type "link"
  ]
  edge [
    source 8
    target 9
    type "link"
  ]
  edge [
    source 10
    target 9
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
]
