graph [
  directed 1
  node [
    id 0
    label "android.content.pm.PackageInfo"
    type "class"
    comment "&#10; * Overall information about the contents of a package.  This corresponds&#10; * to all of the information collected from AndroidManifest.xml.&#10; "
  ]
  node [
    id 1
    label "public long getLongVersionCode()"
    type "method"
    comment "&#10;     * Return {@link android.R.styleable#AndroidManifest_versionCode versionCode} and&#10;     * {@link android.R.styleable#AndroidManifest_versionCodeMajor versionCodeMajor} combined&#10;     * together as a single long value.  The&#10;     * {@link android.R.styleable#AndroidManifest_versionCodeMajor versionCodeMajor} is placed in&#10;     * the upper 32 bits.&#10;     "
  ]
  node [
    id 2
    label "AndroidManifest_versionCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "AndroidManifest_versionCodeMajor"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public void setLongVersionCode(long longVersionCode)"
    type "method"
    comment "&#10;     * Set the full version code in this PackageInfo, updating {@link #versionCode}&#10;     * with the lower bits.&#10;     * @see #getLongVersionCode()&#10;     "
  ]
  node [
    id 5
    label "versionCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 6
    label "public long getArchiveTimeMillis()"
    type "method"
    comment "&#10;     * Returns the time at which the app was archived for the user.  Units are as&#10;     * per {@link System#currentTimeMillis()}.&#10;     "
  ]
  node [
    id 7
    label "currentTimeMillis()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label "public String getApexPackageName()"
    type "method"
    comment "&#10;     * If the package is an APEX package (i.e. the value of {@link #isApex}&#10;     * is true), returns the package name of the APEX. If the package&#10;     * is one APK-in-APEX app, returns the package name of the parent&#10;     * APEX that contains the app. If the package is not one of the above&#10;     * two cases, returns {@code null}.&#10;     "
  ]
  node [
    id 9
    label "isApex"
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
    target 4
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
    source 6
    target 7
    type "link"
  ]
  edge [
    source 8
    target 9
    type "link"
  ]
]
