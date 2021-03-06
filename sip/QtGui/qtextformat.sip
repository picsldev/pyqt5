// qtextformat.sip generated by MetaSIP
//
// This file is part of the QtGui Python extension module.
//
// Copyright (c) 2016 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt5.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


class QTextLength
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    enum Type
    {
        VariableLength,
        FixedLength,
        PercentageLength,
    };

    QTextLength();
    QTextLength::Type type() const;
    QTextLength(QTextLength::Type atype, qreal avalue);
    qreal value(qreal maximumLength) const;
    qreal rawValue() const;
    bool operator==(const QTextLength &other) const;
    bool operator!=(const QTextLength &other) const;
    QTextLength(const QVariant &variant /GetWrapper/) /NoDerived/;
%MethodCode
        if (a0->canConvert<QTextLength>())
            sipCpp = new QTextLength(a0->value<QTextLength>());
        else
            sipError = sipBadCallableArg(0, a0Wrapper);
%End
};

QDataStream &operator<<(QDataStream &, const QTextLength & /Constrained/) /ReleaseGIL/;
QDataStream &operator>>(QDataStream &, QTextLength & /Constrained/) /ReleaseGIL/;

class QTextFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    enum FormatType
    {
        InvalidFormat,
        BlockFormat,
        CharFormat,
        ListFormat,
        TableFormat,
        FrameFormat,
        UserFormat,
    };

    enum ObjectTypes
    {
        NoObject,
        ImageObject,
        TableObject,
        TableCellObject,
        UserObject,
    };

    enum PageBreakFlag
    {
        PageBreak_Auto,
        PageBreak_AlwaysBefore,
        PageBreak_AlwaysAfter,
    };

    typedef QFlags<QTextFormat::PageBreakFlag> PageBreakFlags;

    enum Property
    {
        ObjectIndex,
        CssFloat,
        LayoutDirection,
        OutlinePen,
        BackgroundBrush,
        ForegroundBrush,
        BlockAlignment,
        BlockTopMargin,
        BlockBottomMargin,
        BlockLeftMargin,
        BlockRightMargin,
        TextIndent,
        BlockIndent,
        BlockNonBreakableLines,
        BlockTrailingHorizontalRulerWidth,
        FontFamily,
        FontPointSize,
        FontSizeAdjustment,
        FontSizeIncrement,
        FontWeight,
        FontItalic,
        FontUnderline,
        FontOverline,
        FontStrikeOut,
        FontFixedPitch,
        FontPixelSize,
        TextUnderlineColor,
        TextVerticalAlignment,
        TextOutline,
        IsAnchor,
        AnchorHref,
        AnchorName,
        ObjectType,
        ListStyle,
        ListIndent,
        FrameBorder,
        FrameMargin,
        FramePadding,
        FrameWidth,
        FrameHeight,
        TableColumns,
        TableColumnWidthConstraints,
        TableCellSpacing,
        TableCellPadding,
        TableCellRowSpan,
        TableCellColumnSpan,
        ImageName,
        ImageWidth,
        ImageHeight,
        TextUnderlineStyle,
        TableHeaderRowCount,
        FullWidthSelection,
        PageBreakPolicy,
        TextToolTip,
        FrameTopMargin,
        FrameBottomMargin,
        FrameLeftMargin,
        FrameRightMargin,
        FrameBorderBrush,
        FrameBorderStyle,
        BackgroundImageUrl,
        TabPositions,
        FirstFontProperty,
        FontCapitalization,
        FontLetterSpacing,
        FontWordSpacing,
        LastFontProperty,
        TableCellTopPadding,
        TableCellBottomPadding,
        TableCellLeftPadding,
        TableCellRightPadding,
        FontStyleHint,
        FontStyleStrategy,
        FontKerning,
        LineHeight,
        LineHeightType,
        FontHintingPreference,
        ListNumberPrefix,
        ListNumberSuffix,
        FontStretch,
        FontLetterSpacingType,
        UserProperty,
    };

    QTextFormat();
    explicit QTextFormat(int type);
    QTextFormat(const QTextFormat &rhs);
    QTextFormat(const QVariant &variant /GetWrapper/) /NoDerived/;
%MethodCode
        if (a0->canConvert<QTextFormat>())
            sipCpp = new QTextFormat(a0->value<QTextFormat>());
        else
            sipError = sipBadCallableArg(0, a0Wrapper);
%End

    ~QTextFormat();
    void merge(const QTextFormat &other);
    bool isValid() const;
    int type() const;
    int objectIndex() const;
    void setObjectIndex(int object);
    QVariant property(int propertyId) const;
    void setProperty(int propertyId, const QVariant &value);
    void clearProperty(int propertyId);
    bool hasProperty(int propertyId) const;
    bool boolProperty(int propertyId) const;
    int intProperty(int propertyId) const;
    qreal doubleProperty(int propertyId) const;
    QString stringProperty(int propertyId) const;
    QColor colorProperty(int propertyId) const;
    QPen penProperty(int propertyId) const;
    QBrush brushProperty(int propertyId) const;
    QTextLength lengthProperty(int propertyId) const;
    QVector<QTextLength> lengthVectorProperty(int propertyId) const;
    void setProperty(int propertyId, const QVector<QTextLength> &lengths);
    QMap<int, QVariant> properties() const;
    int objectType() const;
    bool isCharFormat() const;
    bool isBlockFormat() const;
    bool isListFormat() const;
    bool isFrameFormat() const;
    bool isImageFormat() const;
    bool isTableFormat() const;
    QTextBlockFormat toBlockFormat() const;
    QTextCharFormat toCharFormat() const;
    QTextListFormat toListFormat() const;
    QTextTableFormat toTableFormat() const;
    QTextFrameFormat toFrameFormat() const;
    QTextImageFormat toImageFormat() const;
    bool operator==(const QTextFormat &rhs) const;
    bool operator!=(const QTextFormat &rhs) const;
    void setLayoutDirection(Qt::LayoutDirection direction);
    Qt::LayoutDirection layoutDirection() const;
    void setBackground(const QBrush &brush);
    QBrush background() const;
    void clearBackground();
    void setForeground(const QBrush &brush);
    QBrush foreground() const;
    void clearForeground();
    void setObjectType(int atype);
    int propertyCount() const;
    bool isTableCellFormat() const;
    QTextTableCellFormat toTableCellFormat() const;
    void swap(QTextFormat &other /Constrained/);
%If (Qt_5_3_0 -)
    bool isEmpty() const;
%End
};

QDataStream &operator<<(QDataStream &, const QTextFormat & /Constrained/) /ReleaseGIL/;
QDataStream &operator>>(QDataStream &, QTextFormat & /Constrained/) /ReleaseGIL/;

class QTextCharFormat : QTextFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    enum VerticalAlignment
    {
        AlignNormal,
        AlignSuperScript,
        AlignSubScript,
        AlignMiddle,
        AlignTop,
        AlignBottom,
        AlignBaseline,
    };

    QTextCharFormat();
    bool isValid() const;
    void setFont(const QFont &font);
    QFont font() const;
    void setFontFamily(const QString &family);
    QString fontFamily() const;
    void setFontPointSize(qreal size);
    qreal fontPointSize() const;
    void setFontWeight(int weight);
    int fontWeight() const;
    void setFontItalic(bool italic);
    bool fontItalic() const;
    void setFontUnderline(bool underline);
    bool fontUnderline() const;
    void setFontOverline(bool overline);
    bool fontOverline() const;
    void setFontStrikeOut(bool strikeOut);
    bool fontStrikeOut() const;
    void setUnderlineColor(const QColor &color);
    QColor underlineColor() const;
    void setFontFixedPitch(bool fixedPitch);
    bool fontFixedPitch() const;
    void setVerticalAlignment(QTextCharFormat::VerticalAlignment alignment);
    QTextCharFormat::VerticalAlignment verticalAlignment() const;
    void setAnchor(bool anchor);
    bool isAnchor() const;
    void setAnchorHref(const QString &value);
    QString anchorHref() const;
    int tableCellRowSpan() const;
    int tableCellColumnSpan() const;
    void setTableCellRowSpan(int atableCellRowSpan);
    void setTableCellColumnSpan(int atableCellColumnSpan);
    void setTextOutline(const QPen &pen);
    QPen textOutline() const;

    enum UnderlineStyle
    {
        NoUnderline,
        SingleUnderline,
        DashUnderline,
        DotLine,
        DashDotLine,
        DashDotDotLine,
        WaveUnderline,
        SpellCheckUnderline,
    };

    void setUnderlineStyle(QTextCharFormat::UnderlineStyle style);
    QTextCharFormat::UnderlineStyle underlineStyle() const;
    void setToolTip(const QString &tip);
    QString toolTip() const;
    void setAnchorNames(const QStringList &names);
    QStringList anchorNames() const;
    void setFontCapitalization(QFont::Capitalization capitalization);
    QFont::Capitalization fontCapitalization() const;
    void setFontLetterSpacing(qreal spacing);
    qreal fontLetterSpacing() const;
    void setFontWordSpacing(qreal spacing);
    qreal fontWordSpacing() const;
    void setFontStyleHint(QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault);
    void setFontStyleStrategy(QFont::StyleStrategy strategy);
    QFont::StyleHint fontStyleHint() const;
    QFont::StyleStrategy fontStyleStrategy() const;
    void setFontKerning(bool enable);
    bool fontKerning() const;
    void setFontHintingPreference(QFont::HintingPreference hintingPreference);
    QFont::HintingPreference fontHintingPreference() const;
    int fontStretch() const;
    void setFontStretch(int factor);
    void setFontLetterSpacingType(QFont::SpacingType letterSpacingType);
    QFont::SpacingType fontLetterSpacingType() const;
%If (Qt_5_3_0 -)

    enum FontPropertiesInheritanceBehavior
    {
        FontPropertiesSpecifiedOnly,
        FontPropertiesAll,
    };

%End
%If (Qt_5_3_0 -)
    void setFont(const QFont &font, QTextCharFormat::FontPropertiesInheritanceBehavior behavior);
%End
};

class QTextBlockFormat : QTextFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    QTextBlockFormat();
    bool isValid() const;
    Qt::Alignment alignment() const;
    void setTopMargin(qreal margin);
    qreal topMargin() const;
    void setBottomMargin(qreal margin);
    qreal bottomMargin() const;
    void setLeftMargin(qreal margin);
    qreal leftMargin() const;
    void setRightMargin(qreal margin);
    qreal rightMargin() const;
    void setTextIndent(qreal margin);
    qreal textIndent() const;
    int indent() const;
    void setNonBreakableLines(bool b);
    bool nonBreakableLines() const;
    void setAlignment(Qt::Alignment aalignment);
    void setIndent(int aindent);
    void setPageBreakPolicy(QTextFormat::PageBreakFlags flags);
    QTextFormat::PageBreakFlags pageBreakPolicy() const;
    void setTabPositions(const QList<QTextOption::Tab> &tabs);
    QList<QTextOption::Tab> tabPositions() const;

    enum LineHeightTypes
    {
        SingleHeight,
        ProportionalHeight,
        FixedHeight,
        MinimumHeight,
        LineDistanceHeight,
    };

    void setLineHeight(qreal height, int heightType);
    qreal lineHeight(qreal scriptLineHeight, qreal scaling) const [qreal (qreal scriptLineHeight, qreal scaling = 1.0e+0)];
    qreal lineHeight() const;
    int lineHeightType() const;
};

class QTextListFormat : QTextFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    QTextListFormat();
    bool isValid() const;

    enum Style
    {
        ListDisc,
        ListCircle,
        ListSquare,
        ListDecimal,
        ListLowerAlpha,
        ListUpperAlpha,
        ListLowerRoman,
        ListUpperRoman,
    };

    QTextListFormat::Style style() const;
    int indent() const;
    void setStyle(QTextListFormat::Style astyle);
    void setIndent(int aindent);
    QString numberPrefix() const;
    QString numberSuffix() const;
    void setNumberPrefix(const QString &np);
    void setNumberSuffix(const QString &ns);
};

class QTextImageFormat : QTextCharFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    QTextImageFormat();
    bool isValid() const;
    QString name() const;
    qreal width() const;
    qreal height() const;
    void setName(const QString &aname);
    void setWidth(qreal awidth);
    void setHeight(qreal aheight);
};

class QTextFrameFormat : QTextFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    QTextFrameFormat();
    bool isValid() const;

    enum Position
    {
        InFlow,
        FloatLeft,
        FloatRight,
    };

    void setPosition(QTextFrameFormat::Position f);
    QTextFrameFormat::Position position() const;
    qreal border() const;
    qreal margin() const;
    qreal padding() const;
    void setWidth(const QTextLength &length);
    QTextLength width() const;
    QTextLength height() const;
    void setBorder(qreal aborder);
    void setMargin(qreal amargin);
    void setPadding(qreal apadding);
    void setWidth(qreal awidth);
    void setHeight(qreal aheight);
    void setHeight(const QTextLength &aheight);
    void setPageBreakPolicy(QTextFormat::PageBreakFlags flags);
    QTextFormat::PageBreakFlags pageBreakPolicy() const;

    enum BorderStyle
    {
        BorderStyle_None,
        BorderStyle_Dotted,
        BorderStyle_Dashed,
        BorderStyle_Solid,
        BorderStyle_Double,
        BorderStyle_DotDash,
        BorderStyle_DotDotDash,
        BorderStyle_Groove,
        BorderStyle_Ridge,
        BorderStyle_Inset,
        BorderStyle_Outset,
    };

    void setBorderBrush(const QBrush &brush);
    QBrush borderBrush() const;
    void setBorderStyle(QTextFrameFormat::BorderStyle style);
    QTextFrameFormat::BorderStyle borderStyle() const;
    qreal topMargin() const;
    qreal bottomMargin() const;
    qreal leftMargin() const;
    qreal rightMargin() const;
    void setTopMargin(qreal amargin);
    void setBottomMargin(qreal amargin);
    void setLeftMargin(qreal amargin);
    void setRightMargin(qreal amargin);
};

class QTextTableFormat : QTextFrameFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    QTextTableFormat();
    bool isValid() const;
    int columns() const;
    void setColumnWidthConstraints(const QVector<QTextLength> &constraints);
    QVector<QTextLength> columnWidthConstraints() const;
    void clearColumnWidthConstraints();
    qreal cellSpacing() const;
    void setCellSpacing(qreal spacing);
    qreal cellPadding() const;
    Qt::Alignment alignment() const;
    void setColumns(int acolumns);
    void setCellPadding(qreal apadding);
    void setAlignment(Qt::Alignment aalignment);
    void setHeaderRowCount(int count);
    int headerRowCount() const;
};

QFlags<QTextFormat::PageBreakFlag> operator|(QTextFormat::PageBreakFlag f1, QFlags<QTextFormat::PageBreakFlag> f2);

class QTextTableCellFormat : QTextCharFormat
{
%TypeHeaderCode
#include <qtextformat.h>
%End

public:
    QTextTableCellFormat();
    bool isValid() const;
    void setTopPadding(qreal padding);
    qreal topPadding() const;
    void setBottomPadding(qreal padding);
    qreal bottomPadding() const;
    void setLeftPadding(qreal padding);
    qreal leftPadding() const;
    void setRightPadding(qreal padding);
    qreal rightPadding() const;
    void setPadding(qreal padding);
};
