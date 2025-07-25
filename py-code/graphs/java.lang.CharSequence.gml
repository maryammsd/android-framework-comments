graph [
  directed 1
  node [
    id 0
    label "java.lang.CharSequence"
    type "class"
    comment ""
  ]
  node [
    id 1
    label " int length()"
    type "method"
    comment "&#10;     * Returns the length of this character sequence.  The length is the number&#10;     * of 16-bit {@code char}s in the sequence.&#10;     *&#10;     * @return  the number of {@code char}s in this sequence&#10;     "
  ]
  node [
    id 2
    label " char charAt(int index)"
    type "method"
    comment "&#10;     * Returns the {@code char} value at the specified index.  An index ranges from zero&#10;     * to {@code length() - 1}.  The first {@code char} value of the sequence is at&#10;     * index zero, the next at index one, and so on, as for array&#10;     * indexing.&#10;     *&#10;     * <p>If the {@code char} value specified by the index is a&#10;     * <a href=&#34;{@docRoot}/java.base/java/lang/Character.html#unicode&#34;>surrogate</a>, the surrogate&#10;     * value is returned.&#10;     *&#10;     * @param   index   the index of the {@code char} value to be returned&#10;     *&#10;     * @return  the specified {@code char} value&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          if the {@code index} argument is negative or not less than&#10;     *          {@code length()}&#10;     "
  ]
  node [
    id 3
    label " boolean isEmpty()"
    type "method"
    comment "&#10;     * Returns {@code true} if this character sequence is empty.&#10;     *&#10;     * @implSpec&#10;     * The default implementation returns the result of calling {@code length() == 0}.&#10;     *&#10;     * @return {@code true} if {@link #length()} is {@code 0}, otherwise&#10;     * {@code false}&#10;     *&#10;     * @since 15&#10;     "
  ]
  node [
    id 4
    label "length()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label " CharSequence subSequence(int start, int end)"
    type "method"
    comment "&#10;     * Returns a {@code CharSequence} that is a subsequence of this sequence.&#10;     * The subsequence starts with the {@code char} value at the specified index and&#10;     * ends with the {@code char} value at index {@code end - 1}.  The length&#10;     * (in {@code char}s) of the&#10;     * returned sequence is {@code end - start}, so if {@code start == end}&#10;     * then an empty sequence is returned.&#10;     *&#10;     * @param   start   the start index, inclusive&#10;     * @param   end     the end index, exclusive&#10;     *&#10;     * @return  the specified subsequence&#10;     *&#10;     * @throws  IndexOutOfBoundsException&#10;     *          if {@code start} or {@code end} are negative,&#10;     *          if {@code end} is greater than {@code length()},&#10;     *          or if {@code start} is greater than {@code end}&#10;     "
  ]
  node [
    id 6
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a string containing the characters in this sequence in the same&#10;     * order as this sequence.  The length of the string will be the length of&#10;     * this sequence.&#10;     *&#10;     * @return  a string consisting of exactly this sequence of characters&#10;     "
  ]
  node [
    id 7
    label "public IntStream chars()"
    type "method"
    comment "&#10;     * Returns a stream of {@code int} zero-extending the {@code char} values&#10;     * from this sequence.  Any char which maps to a <a&#10;     * href=&#34;{@docRoot}/java.base/java/lang/Character.html#unicode&#34;>surrogate code&#10;     * point</a> is passed through uninterpreted.&#10;     *&#10;     * <p>The stream binds to this sequence when the terminal stream operation&#10;     * commences (specifically, for mutable sequences the spliterator for the&#10;     * stream is <a href=&#34;../util/Spliterator.html#binding&#34;><em>late-binding</em></a>).&#10;     * If the sequence is modified during that operation then the result is&#10;     * undefined.&#10;     *&#10;     * @return an IntStream of char values from this sequence&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 8
    label "public IntStream codePoints()"
    type "method"
    comment "&#10;     * Returns a stream of code point values from this sequence.  Any surrogate&#10;     * pairs encountered in the sequence are combined as if by {@linkplain&#10;     * Character#toCodePoint Character.toCodePoint} and the result is passed&#10;     * to the stream. Any other code units, including ordinary BMP characters,&#10;     * unpaired surrogates, and undefined code units, are zero-extended to&#10;     * {@code int} values which are then passed to the stream.&#10;     *&#10;     * <p>The stream binds to this sequence when the terminal stream operation&#10;     * commences (specifically, for mutable sequences the spliterator for the&#10;     * stream is <a href=&#34;../util/Spliterator.html#binding&#34;><em>late-binding</em></a>).&#10;     * If the sequence is modified during that operation then the result is&#10;     * undefined.&#10;     *&#10;     * @return an IntStream of Unicode code points from this sequence&#10;     * @since 1.8&#10;     "
  ]
  node [
    id 9
    label "public static int compare(CharSequence cs1, CharSequence cs2)"
    type "method"
    comment "&#10;     * Compares two {@code CharSequence} instances lexicographically. Returns a&#10;     * negative value, zero, or a positive value if the first sequence is lexicographically&#10;     * less than, equal to, or greater than the second, respectively.&#10;     *&#10;     * <p>&#10;     * The lexicographical ordering of {@code CharSequence} is defined as follows.&#10;     * Consider a {@code CharSequence} <i>cs</i> of length <i>len</i> to be a&#10;     * sequence of char values, <i>cs[0]</i> to <i>cs[len-1]</i>. Suppose <i>k</i>&#10;     * is the lowest index at which the corresponding char values from each sequence&#10;     * differ. The lexicographic ordering of the sequences is determined by a numeric&#10;     * comparison of the char values <i>cs1[k]</i> with <i>cs2[k]</i>. If there is&#10;     * no such index <i>k</i>, the shorter sequence is considered lexicographically&#10;     * less than the other. If the sequences have the same length, the sequences are&#10;     * considered lexicographically equal.&#10;     *&#10;     *&#10;     * @param cs1 the first {@code CharSequence}&#10;     * @param cs2 the second {@code CharSequence}&#10;     *&#10;     * @return  the value {@code 0} if the two {@code CharSequence} are equal;&#10;     *          a negative integer if the first {@code CharSequence}&#10;     *          is lexicographically less than the second; or a&#10;     *          positive integer if the first {@code CharSequence} is&#10;     *          lexicographically greater than the second.&#10;     *&#10;     * @since 11&#10;     "
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
  edge [
    source 0
    target 9
    type "child"
  ]
  edge [
    source 3
    target 4
    type "link"
  ]
]
