graph [
  directed 1
  node [
    id 0
    label "android.text.Editable"
    type "class"
    comment "&#10; * This is the interface for text whose content and markup&#10; * can be changed (as opposed&#10; * to immutable text like Strings).  If you make a {@link DynamicLayout}&#10; * of an Editable, the layout will be reflowed as the text is changed.&#10; "
  ]
  node [
    id 1
    label "public Editable replace(int st, int en, CharSequence source, int start, int end)"
    type "method"
    comment "&#10;     * Replaces the specified range (<code>st&#38;hellip;en</code>) of text in this&#10;     * Editable with a copy of the slice <code>start&#38;hellip;end</code> from&#10;     * <code>source</code>.  The destination slice may be empty, in which case&#10;     * the operation is an insertion, or the source slice may be empty,&#10;     * in which case the operation is a deletion.&#10;     * <p>&#10;     * Before the change is committed, each filter that was set with&#10;     * {@link #setFilters} is given the opportunity to modify the&#10;     * <code>source</code> text.&#10;     * <p>&#10;     * If <code>source</code>&#10;     * is Spanned, the spans from it are preserved into the Editable.&#10;     * Existing spans within the Editable that entirely cover the replaced&#10;     * range are retained, but any that were strictly within the range&#10;     * that was replaced are removed. If the <code>source</code> contains a span&#10;     * with {@link Spanned#SPAN_PARAGRAPH} flag, and it does not satisfy the&#10;     * paragraph boundary constraint, it is not retained. As a special case, the&#10;     * cursor position is preserved even when the entire range where it is located&#10;     * is replaced.&#10;     * @return  a reference to this object.&#10;     *&#10;     * @see Spanned#SPAN_PARAGRAPH&#10;     "
  ]
  node [
    id 2
    label "SPAN_PARAGRAPH"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "setFilters"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public Editable replace(int st, int en, CharSequence text)"
    type "method"
    comment "&#10;     * Convenience for replace(st, en, text, 0, text.length())&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 5
    label "public Editable insert(int where, CharSequence text, int start, int end)"
    type "method"
    comment "&#10;     * Convenience for replace(where, where, text, start, end)&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 6
    label "public Editable insert(int where, CharSequence text)"
    type "method"
    comment "&#10;     * Convenience for replace(where, where, text, 0, text.length());&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 7
    label "public Editable delete(int st, int en)"
    type "method"
    comment "&#10;     * Convenience for replace(st, en, &#34;&#34;, 0, 0)&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 8
    label "public Editable append(CharSequence text)"
    type "method"
    comment "&#10;     * Convenience for replace(length(), length(), text, 0, text.length())&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 9
    label "public Editable append(CharSequence text, int start, int end)"
    type "method"
    comment "&#10;     * Convenience for replace(length(), length(), text, start, end)&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 10
    label "public Editable append(char text)"
    type "method"
    comment "&#10;     * Convenience for append(String.valueOf(text)).&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 11
    label "public void clear()"
    type "method"
    comment "&#10;     * Convenience for replace(0, length(), &#34;&#34;, 0, 0).&#10;     * Note that this clears the text, not the spans;&#10;     * use {@link #clearSpans} if you need that.&#10;     * @see #replace(int, int, CharSequence, int, int)&#10;     "
  ]
  node [
    id 12
    label "clearSpans"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 13
    label "public void clearSpans()"
    type "method"
    comment "&#10;     * Removes all spans from the Editable, as if by calling&#10;     * {@link #removeSpan} on each of them.&#10;     "
  ]
  node [
    id 14
    label "removeSpan"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public void setFilters(InputFilter[] filters)"
    type "method"
    comment "&#10;     * Sets the series of filters that will be called in succession&#10;     * whenever the text of this Editable is changed, each of which has&#10;     * the opportunity to limit or transform the text that is being inserted.&#10;     "
  ]
  node [
    id 16
    label "public InputFilter[] getFilters()"
    type "method"
    comment "&#10;     * Returns the array of input filters that are currently applied&#10;     * to changes to this Editable.&#10;     "
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
    target 13
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
    source 11
    target 12
    type "link"
  ]
  edge [
    source 13
    target 14
    type "link"
  ]
]
