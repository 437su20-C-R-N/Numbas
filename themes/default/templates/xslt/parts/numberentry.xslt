{% raw %}
<xsl:template match="part[@type='numberentry']" mode="typespecific">
    <xsl:if test="count(steps/part)>0"><localise>part.with steps answer prompt</localise></xsl:if>
    <input type="text" step="{answer/inputstep/@value}" class="numberentry" data-bind="event: inputEvents, textInput: studentAnswer, autosize: true, disable: revealed, css: {{'has-error': warningsShown}}, attr: {{title: input_title}}"/>
    <span class="preview" data-bind="visible: showPreview &amp;&amp; studentAnswerLaTeX(), maths: showPreview ? studentAnswerLaTeX() : '', click: focusInput"></span>
    <span class="help-block hint precision-hint" data-bind="visible: showInputHint, html: inputHint"></span>
{% endraw %}
    {% include 'xslt/feedback_icon.xslt' %}
{% raw %}
</xsl:template>
<xsl:template match="part[@type='numberentry']" mode="correctanswer">
    <span class="correct-answer" data-bind="visibleIf: showCorrectAnswer, typeset: showCorrectAnswer">
        <label>
            <localise>part.correct answer</localise>
            <input type="text" spellcheck="false" disabled="true" class="jme" data-bind="value: correctAnswer, autosize: true"/>
        </label>
    </span>
</xsl:template>
{% endraw %}
