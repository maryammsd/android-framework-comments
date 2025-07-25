graph [
  directed 1
  node [
    id 0
    label "java.lang.StringBuilder"
    type "class"
    comment "&#10; * A mutable sequence of characters.  This class provides an API compatible&#10; * with {@code StringBuffer}, but with no guarantee of synchronization.&#10; * This class is designed for use as a drop-in replacement for&#10; * {@code StringBuffer} in places where the string buffer was being&#10; * used by a single thread (as is generally the case).   Where possible,&#10; * it is recommended that this class be used in preference to&#10; * {@code StringBuffer} as it will be faster under most implementations.&#10; *&#10; * <p>The principal operations on a {@code StringBuilder} are the&#10; * {@code append} and {@code insert} methods, which are&#10; * overloaded so as to accept data of any type. Each effectively&#10; * converts a given datum to a string and then appends or inserts the&#10; * characters of that string to the string builder. The&#10; * {@code append} method always adds these characters at the end&#10; * of the builder; the {@code insert} method adds the characters at&#10; * a specified point.&#10; * <p>&#10; * For example, if {@code z} refers to a string builder object&#10; * whose current contents are &#34;{@code start}&#34;, then&#10; * the method call {@code z.append(&#34;le&#34;)} would cause the string&#10; * builder to contain &#34;{@code startle}&#34;, whereas&#10; * {@code z.insert(4, &#34;le&#34;)} would alter the string builder to&#10; * contain &#34;{@code starlet}&#34;.&#10; * <p>&#10; * In general, if sb refers to an instance of a {@code StringBuilder},&#10; * then {@code sb.append(x)} has the same effect as&#10; * {@code sb.insert(sb.length(), x)}.&#10; * <p>&#10; * Every string builder has a capacity. As long as the length of the&#10; * character sequence contained in the string builder does not exceed&#10; * the capacity, it is not necessary to allocate a new internal&#10; * buffer. If the internal buffer overflows, it is automatically made larger.&#10; *&#10; * <p>Instances of {@code StringBuilder} are not safe for&#10; * use by multiple threads. If such synchronization is required then it is&#10; * recommended that {@link java.lang.StringBuffer} be used.&#10; *&#10; * <p>Unless otherwise noted, passing a {@code null} argument to a constructor&#10; * or method in this class will cause a {@link NullPointerException} to be&#10; * thrown.&#10; *&#10; * @apiNote&#10; * {@code StringBuilder} implements {@code Comparable} but does not override&#10; * {@link Object#equals equals}. Thus, the natural ordering of {@code StringBuilder}&#10; * is inconsistent with equals. Care should be exercised if {@code StringBuilder}&#10; * objects are used as keys in a {@code SortedMap} or elements in a {@code SortedSet}.&#10; * See {@link Comparable}, {@link java.util.SortedMap SortedMap}, or&#10; * {@link java.util.SortedSet SortedSet} for more information.&#10; *&#10; * @author      Michael McCloskey&#10; * @see         java.lang.StringBuffer&#10; * @see         java.lang.String&#10; * @since       1.5&#10; "
  ]
  node [
    id 1
    label "public int compareTo(StringBuilder another)"
    type "method"
    comment "&#10;     * Compares two {@code StringBuilder} instances lexicographically. This method&#10;     * follows the same rules for lexicographical comparison as defined in the&#10;     * {@linkplain java.lang.CharSequence#compare(java.lang.CharSequence,&#10;     * java.lang.CharSequence)  CharSequence.compare(this, another)} method.&#10;     *&#10;     * <p>&#10;     * For finer-grained, locale-sensitive String comparison, refer to&#10;     * {@link java.text.Collator}.&#10;     *&#10;     * @param another the {@code StringBuilder} to be compared with&#10;     *&#10;     * @return  the value {@code 0} if this {@code StringBuilder} contains the same&#10;     * character sequence as that of the argument {@code StringBuilder}; a negative integer&#10;     * if this {@code StringBuilder} is lexicographically less than the&#10;     * {@code StringBuilder} argument; or a positive integer if this {@code StringBuilder}&#10;     * is lexicographically greater than the {@code StringBuilder} argument.&#10;     *&#10;     * @since 11&#10;     "
  ]
  node [
    id 2
    label "java.text.Collator"
    type "class"
    comment ""
  ]
  node [
    id 3
    label "public static synchronized Collator getInstance()"
    type "method"
    comment "&#10;     * Gets the Collator for the current default locale.&#10;     * The default locale is determined by java.util.Locale.getDefault.&#10;     * @return the Collator for the default locale.(for example, en_US)&#10;     * @see java.util.Locale#getDefault&#10;     "
  ]
  node [
    id 4
    label "public static Collator getInstance(Locale desiredLocale)"
    type "method"
    comment "&#10;     * Gets the Collator for the desired locale.&#10;     * @param desiredLocale the desired locale.&#10;     * @return the Collator for the desired locale.&#10;     * @see java.util.Locale&#10;     * @see java.util.ResourceBundle&#10;     "
  ]
  node [
    id 5
    label "public abstract int compare(String source, String target)"
    type "method"
    comment "&#10;     * Compares the source string to the target string according to the&#10;     * collation rules for this Collator.  Returns an integer less than,&#10;     * equal to or greater than zero depending on whether the source String is&#10;     * less than, equal to or greater than the target string.  See the Collator&#10;     * class description for an example of use.&#10;     * <p>&#10;     * For a one time comparison, this method has the best performance. If a&#10;     * given String will be involved in multiple comparisons, CollationKey.compareTo&#10;     * has the best performance. See the Collator class description for an example&#10;     * using CollationKeys.&#10;     * @param source the source string.&#10;     * @param target the target string.&#10;     * @return Returns an integer value. Value is less than zero if source is less than&#10;     * target, value is zero if source and target are equal, value is greater than zero&#10;     * if source is greater than target.&#10;     * @see java.text.CollationKey&#10;     * @see java.text.Collator#getCollationKey&#10;     "
  ]
  node [
    id 6
    label "public int compare(Object o1, Object o2)"
    type "method"
    comment "&#10;     * Compares its two arguments for order.  Returns a negative integer,&#10;     * zero, or a positive integer as the first argument is less than, equal&#10;     * to, or greater than the second.&#10;     * <p>&#10;     * This implementation merely returns&#10;     *  {@code  compare((String)o1, (String)o2) }.&#10;     *&#10;     * @return a negative integer, zero, or a positive integer as the&#10;     *         first argument is less than, equal to, or greater than the&#10;     *         second.&#10;     * @throws    ClassCastException the arguments cannot be cast to Strings.&#10;     * @see java.util.Comparator&#10;     * @since   1.2&#10;     "
  ]
  node [
    id 7
    label "public abstract CollationKey getCollationKey(String source)"
    type "method"
    comment "&#10;     * Transforms the String into a series of bits that can be compared bitwise&#10;     * to other CollationKeys. CollationKeys provide better performance than&#10;     * Collator.compare when Strings are involved in multiple comparisons.&#10;     * See the Collator class description for an example using CollationKeys.&#10;     * @param source the string to be transformed into a collation key.&#10;     * @return the CollationKey for the given String based on this Collator's collation&#10;     * rules. If the source String is null, a null CollationKey is returned.&#10;     * @see java.text.CollationKey&#10;     * @see java.text.Collator#compare&#10;     "
  ]
  node [
    id 8
    label "public boolean equals(String source, String target)"
    type "method"
    comment "&#10;     * Convenience method for comparing the equality of two strings based on&#10;     * this Collator's collation rules.&#10;     * @param source the source string to be compared with.&#10;     * @param target the target string to be compared with.&#10;     * @return true if the strings are equal according to the collation&#10;     * rules.  false, otherwise.&#10;     * @see java.text.Collator#compare&#10;     "
  ]
  node [
    id 9
    label "public synchronized int getStrength()"
    type "method"
    comment "&#10;     * Returns this Collator's strength property.  The strength property determines&#10;     * the minimum level of difference considered significant during comparison.&#10;     * See the Collator class description for an example of use.&#10;     * @return this Collator's current strength property.&#10;     * @see java.text.Collator#setStrength&#10;     * @see java.text.Collator#PRIMARY&#10;     * @see java.text.Collator#SECONDARY&#10;     * @see java.text.Collator#TERTIARY&#10;     * @see java.text.Collator#IDENTICAL&#10;     "
  ]
  node [
    id 10
    label "public synchronized void setStrength(int newStrength)"
    type "method"
    comment "&#10;     * Sets this Collator's strength property.  The strength property determines&#10;     * the minimum level of difference considered significant during comparison.&#10;     * See the Collator class description for an example of use.&#10;     * @param newStrength  the new strength value.&#10;     * @see java.text.Collator#getStrength&#10;     * @see java.text.Collator#PRIMARY&#10;     * @see java.text.Collator#SECONDARY&#10;     * @see java.text.Collator#TERTIARY&#10;     * @see java.text.Collator#IDENTICAL&#10;     * @throws     IllegalArgumentException If the new strength value is not one of&#10;     * PRIMARY, SECONDARY, TERTIARY or IDENTICAL.&#10;     "
  ]
  node [
    id 11
    label "public synchronized int getDecomposition()"
    type "method"
    comment "&#10;     * Get the decomposition mode of this Collator. Decomposition mode&#10;     * determines how Unicode composed characters are handled. Adjusting&#10;     * decomposition mode allows the user to select between faster and more&#10;     * complete collation behavior.&#10;     * <p>The three values for decomposition mode are:&#10;     * <UL>&#10;     * <LI>NO_DECOMPOSITION,&#10;     * <LI>CANONICAL_DECOMPOSITION&#10;     * <LI>FULL_DECOMPOSITION.&#10;     * </UL>&#10;     * See the documentation for these three constants for a description&#10;     * of their meaning.&#10;     * @return the decomposition mode&#10;     * @see java.text.Collator#setDecomposition&#10;     * @see java.text.Collator#NO_DECOMPOSITION&#10;     * @see java.text.Collator#CANONICAL_DECOMPOSITION&#10;     * @see java.text.Collator#FULL_DECOMPOSITION&#10;     "
  ]
  node [
    id 12
    label "public synchronized void setDecomposition(int decompositionMode)"
    type "method"
    comment "&#10;     * Set the decomposition mode of this Collator. See getDecomposition&#10;     * for a description of decomposition mode.&#10;     * @param decompositionMode  the new decomposition mode.&#10;     * @see java.text.Collator#getDecomposition&#10;     * @see java.text.Collator#NO_DECOMPOSITION&#10;     * @see java.text.Collator#CANONICAL_DECOMPOSITION&#10;     * @see java.text.Collator#FULL_DECOMPOSITION&#10;     * @throws    IllegalArgumentException If the given value is not a valid decomposition&#10;     * mode.&#10;     "
  ]
  node [
    id 13
    label "public static synchronized Locale[] getAvailableLocales()"
    type "method"
    comment "&#10;     * Returns an array of all locales for which the&#10;     * {@code getInstance} methods of this class can return&#10;     * localized instances.&#10;     *&#10;     * @return An array of locales for which localized&#10;     *         {@code Collator} instances are available.&#10;     "
  ]
  node [
    id 14
    label "private int decompositionMode_Java_ICU(int mode)"
    type "method"
    comment " BEGIN Android-added: conversion method for decompositionMode constants."
  ]
  node [
    id 15
    label "public Object clone()"
    type "method"
    comment "&#10;     * Returns a new collator with the same decomposition mode and&#10;     * strength value as this collator.&#10;     *&#10;     * @return a shallow copy of this collator.&#10;     * @see java.lang.Cloneable&#10;     "
  ]
  node [
    id 16
    label "public boolean equals(Object that)"
    type "method"
    comment "&#10;     * Compares the equality of two Collators.&#10;     * @param that the Collator to be compared with this.&#10;     * @return true if this Collator is the same as that Collator;&#10;     * false otherwise.&#10;     "
  ]
  node [
    id 17
    label "public abstract int hashCode()"
    type "method"
    comment "&#10;     * Generates the hash code for this Collator.&#10;     "
  ]
  node [
    id 18
    label "public StringBuilder append(StringBuffer sb)"
    type "method"
    comment "&#10;     * Appends the specified {@code StringBuffer} to this sequence.&#10;     * <p>&#10;     * The characters of the {@code StringBuffer} argument are appended,&#10;     * in order, to this sequence, increasing the&#10;     * length of this sequence by the length of the argument.&#10;     * If {@code sb} is {@code null}, then the four characters&#10;     * {@code &#34;null&#34;} are appended to this sequence.&#10;     * <p>&#10;     * Let <i>n</i> be the length of this character sequence just prior to&#10;     * execution of the {@code append} method. Then the character at index&#10;     * <i>k</i> in the new character sequence is equal to the character at&#10;     * index <i>k</i> in the old character sequence, if <i>k</i> is less than&#10;     * <i>n</i>; otherwise, it is equal to the character at index <i>k-n</i>&#10;     * in the argument {@code sb}.&#10;     *&#10;     * @param   sb   the {@code StringBuffer} to append.&#10;     * @return  a reference to this object.&#10;     "
  ]
  node [
    id 19
    label "public StringBuilder append(CharSequence s, int start, int end)"
    type "method"
    comment "&#10;     * @throws     IndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 20
    label "public StringBuilder append(char[] str, int offset, int len)"
    type "method"
    comment "&#10;     * @throws IndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 21
    label "public StringBuilder appendCodePoint(int codePoint)"
    type "method"
    comment "&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 22
    label "public StringBuilder delete(int start, int end)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 23
    label "public StringBuilder deleteCharAt(int index)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 24
    label "public StringBuilder replace(int start, int end, String str)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 25
    label "public StringBuilder insert(int index, char[] str, int offset, int len)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 26
    label "public StringBuilder insert(int offset, Object obj)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 27
    label "public StringBuilder insert(int offset, String str)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 28
    label "public StringBuilder insert(int offset, char[] str)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 29
    label "public StringBuilder insert(int dstOffset, CharSequence s)"
    type "method"
    comment "&#10;     * @throws IndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 30
    label "public StringBuilder insert(int dstOffset, CharSequence s, int start, int end)"
    type "method"
    comment "&#10;     * @throws IndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 31
    label "public StringBuilder insert(int offset, boolean b)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 32
    label "public StringBuilder insert(int offset, char c)"
    type "method"
    comment "&#10;     * @throws IndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 33
    label "public StringBuilder insert(int offset, int i)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 34
    label "public StringBuilder insert(int offset, long l)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 35
    label "public StringBuilder insert(int offset, float f)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 36
    label "public StringBuilder insert(int offset, double d)"
    type "method"
    comment "&#10;     * @throws StringIndexOutOfBoundsException {@inheritDoc}&#10;     "
  ]
  node [
    id 37
    label "private void writeObject(java.io.ObjectOutputStream s) throws java.io.IOException"
    type "method"
    comment "&#10;     * Save the state of the {@code StringBuilder} instance to a stream&#10;     * (that is, serialize it).&#10;     *&#10;     * @serialData the number of characters currently stored in the string&#10;     *             builder ({@code int}), followed by the characters in the&#10;     *             string builder ({@code char[]}).   The length of the&#10;     *             {@code char} array may be greater than the number of&#10;     *             characters currently stored in the string builder, in which&#10;     *             case extra characters are ignored.&#10;     "
  ]
  node [
    id 38
    label "private void readObject(java.io.ObjectInputStream s) throws java.io.IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * readObject is called to restore the state of the StringBuffer from&#10;     * a stream.&#10;     "
  ]
  edge [
    source 0
    target 1
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
    source 0
    target 22
    type "child"
  ]
  edge [
    source 0
    target 23
    type "child"
  ]
  edge [
    source 0
    target 24
    type "child"
  ]
  edge [
    source 0
    target 25
    type "child"
  ]
  edge [
    source 0
    target 26
    type "child"
  ]
  edge [
    source 0
    target 27
    type "child"
  ]
  edge [
    source 0
    target 28
    type "child"
  ]
  edge [
    source 0
    target 29
    type "child"
  ]
  edge [
    source 0
    target 30
    type "child"
  ]
  edge [
    source 0
    target 31
    type "child"
  ]
  edge [
    source 0
    target 32
    type "child"
  ]
  edge [
    source 0
    target 33
    type "child"
  ]
  edge [
    source 0
    target 34
    type "child"
  ]
  edge [
    source 0
    target 35
    type "child"
  ]
  edge [
    source 0
    target 36
    type "child"
  ]
  edge [
    source 0
    target 37
    type "child"
  ]
  edge [
    source 0
    target 38
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
  edge [
    source 2
    target 3
    type "child"
  ]
  edge [
    source 2
    target 4
    type "child"
  ]
  edge [
    source 2
    target 5
    type "child"
  ]
  edge [
    source 2
    target 6
    type "child"
  ]
  edge [
    source 2
    target 7
    type "child"
  ]
  edge [
    source 2
    target 8
    type "child"
  ]
  edge [
    source 2
    target 9
    type "child"
  ]
  edge [
    source 2
    target 10
    type "child"
  ]
  edge [
    source 2
    target 11
    type "child"
  ]
  edge [
    source 2
    target 12
    type "child"
  ]
  edge [
    source 2
    target 13
    type "child"
  ]
  edge [
    source 2
    target 14
    type "child"
  ]
  edge [
    source 2
    target 15
    type "child"
  ]
  edge [
    source 2
    target 16
    type "child"
  ]
  edge [
    source 2
    target 17
    type "child"
  ]
]
