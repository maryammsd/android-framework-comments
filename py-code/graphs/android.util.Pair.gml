graph [
  directed 1
  node [
    id 0
    label "android.util.Pair"
    type "class"
    comment " @android.ravenwood.annotation.RavenwoodKeepWholeClass"
  ]
  node [
    id 1
    label "public boolean equals(@Nullable Object o)"
    type "method"
    comment "&#10;     * Checks the two objects for equality by delegating to their respective&#10;     * {@link Object#equals(Object)} methods.&#10;     *&#10;     * @param o the {@link Pair} to which this one is to be checked for equality&#10;     * @return true if the underlying objects of the Pair are both considered&#10;     *         equal&#10;     "
  ]
  node [
    id 2
    label "equals(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "Pair"
  ]
  node [
    id 4
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Compute a hash code using the hash codes of the underlying objects&#10;     *&#10;     * @return a hashcode of the Pair&#10;     "
  ]
  node [
    id 5
    label "public static Pair<A, B> create(A a, B b)"
    type "method"
    comment "&#10;     * Convenience method for creating an appropriately typed pair.&#10;     * @param a the first object in the Pair&#10;     * @param b the second object in the pair&#10;     * @return a Pair that is templatized with the types of a and b&#10;     "
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
    target 5
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
]
