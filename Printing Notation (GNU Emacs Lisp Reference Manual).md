<!DOCTYPE html>
<!-- saved from url=(0080)https://www.gnu.org/software/emacs/manual/html_node/elisp/Printing-Notation.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Printing Notation (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Printing Notation (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Printing Notation (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="subsection-level-extent" id="Printing-Notation">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Error-Messages.html" accesskey="n" rel="next">Error Messages</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Evaluation-Notation.html" accesskey="p" rel="prev">Evaluation Notation</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conventions.html" accesskey="u" rel="up">Conventions</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsection" id="Printing-Notation-1">1.3.4 Printing Notation</h4>
<a class="index-entry-id" id="index-printing-notation"></a>

<p>Many of the examples in this manual print text when they are
evaluated.  If you execute example code in a Lisp Interaction buffer
(such as the buffer <samp class="file">*scratch*</samp>) by typing <kbd class="kbd">C-j</kbd> after the
closing parenthesis of the example, the printed text is inserted into
the buffer.  If you execute the example by other means (such as by
evaluating the function <code class="code">eval-region</code>), the printed text is
displayed in the echo area.
</p>
<p>Examples in this manual indicate printed text with ‘<samp class="samp">-|</samp>’,
irrespective of where that text goes.  The value returned by
evaluating the form follows on a separate line with
‘<samp class="samp">⇒</samp>’.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(progn (prin1 'foo) (princ "\n") (prin1 'bar))
     -| foo
     -| bar
     ⇒ bar
</pre></div></div>

</div>





</body></html>