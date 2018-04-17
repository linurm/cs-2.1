.class public Lcom/heyzap/common/video/view/VideoControlView;
.super Landroid/widget/FrameLayout;
.source "VideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;
    }
.end annotation


# instance fields
.field private ctaButton:Landroid/widget/RelativeLayout;

.field private ctaButtonTextView:Landroid/widget/TextView;

.field private hideButton:Landroid/widget/RelativeLayout;

.field public listener:Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;

.field public scrubBar:Landroid/view/View;

.field private secondFormatter:Ljava/text/SimpleDateFormat;

.field private skipButton:Landroid/widget/RelativeLayout;

.field private skipButtonTextView:Landroid/widget/TextView;

.field public timeTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heyzap/common/video/view/VideoControlView;->setBackgroundColor(I)V

    .line 52
    invoke-interface {p2}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowAdTimer:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/common/video/view/VideoControlView;->addScrubBar(Ljava/lang/Boolean;)V

    .line 54
    invoke-interface {p2}, Lcom/heyzap/common/video/VideoModelInterface;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p0}, Lcom/heyzap/common/video/view/VideoControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$000(FLandroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/heyzap/common/video/view/VideoControlView;->getArc(FLandroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/common/video/view/VideoControlView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/common/video/view/VideoControlView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private static getArc(FLandroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lcom/heyzap/internal/AnnulurSegment;

    const v2, -0x333334

    const/4 v3, 0x3

    invoke-static {p1, v3}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, p0}, Lcom/heyzap/internal/AnnulurSegment;-><init>(IFF)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 104
    return-object v0
.end method

.method private static getButtonBackground(Landroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 297
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 298
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 299
    new-instance v0, Lcom/heyzap/internal/CustomRoundedRectangle;

    const/high16 v2, -0x1000000

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x6e

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/CustomRoundedRectangle;-><init>(Landroid/graphics/drawable/shapes/Shape;IIII)V

    .line 300
    return-object v0

    .line 297
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method public addCtaButton(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 257
    .line 258
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButton:Landroid/widget/RelativeLayout;

    .line 259
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 260
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 264
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 267
    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 269
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    .line 270
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 271
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    const v2, 0x3c23d70a    # 0.01f

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v4, 0x40000000    # 2.0f

    const v5, -0x777778

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 274
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/heyzap/common/video/view/VideoControlView;->getButtonBackground(Landroid/content/Context;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 276
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 277
    iget-object v3, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 279
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 286
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    iget-object v2, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x96

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 291
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->ctaButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method public addHideButton()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0xa

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/heyzap/common/video/view/VideoControlView$2;

    invoke-direct {v0, p0}, Lcom/heyzap/common/video/view/VideoControlView$2;-><init>(Lcom/heyzap/common/video/view/VideoControlView;)V

    .line 119
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 121
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 131
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    iget-object v2, p0, Lcom/heyzap/common/video/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public addScrubBar(Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    const/16 v6, 0x53

    const/4 v5, -0x2

    const/16 v4, 0xf

    .line 304
    const/4 v0, 0x4

    .line 306
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->scrubBar:Landroid/view/View;

    .line 307
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->scrubBar:Landroid/view/View;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 309
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 311
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 312
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->scrubBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/common/video/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    .line 315
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 323
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const v1, 0x3c23d70a    # 0.01f

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, -0x777778

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 324
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 329
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 331
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-void
.end method

.method public addSkipButton(Ljava/lang/Boolean;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 148
    const/4 v1, 0x5

    .line 151
    new-instance v0, Lcom/heyzap/common/video/view/VideoControlView$3;

    invoke-direct {v0, p0}, Lcom/heyzap/common/video/view/VideoControlView$3;-><init>(Lcom/heyzap/common/video/view/VideoControlView;)V

    .line 161
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v2, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 163
    iget-object v2, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 169
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v3, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 174
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, 0x40000000    # 2.0f

    const v6, -0x777778

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 180
    const/4 v0, 0x0

    .line 181
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x7

    invoke-static {v0, v3}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    iget-object v3, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 194
    const v4, 0x1080022

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v4

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 197
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 200
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 207
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    iget-object v3, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/common/video/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 219
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    iget-object v1, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 226
    new-instance v0, Lcom/heyzap/common/video/view/VideoControlView$4;

    const-wide/16 v4, 0x64

    move-object v1, p0

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/heyzap/common/video/view/VideoControlView$4;-><init>(Lcom/heyzap/common/video/view/VideoControlView;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/heyzap/common/video/view/VideoControlView$4;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->listener:Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->listener:Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;

    invoke-interface {v0}, Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;->onClick()V

    .line 342
    :cond_0
    return-void
.end method

.method public setOnActionListener(Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/heyzap/common/video/view/VideoControlView;->listener:Lcom/heyzap/common/video/view/VideoControlView$OnActionListener;

    .line 346
    return-void
.end method

.method public updateScrubber(IF)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 65
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->secondFormatter:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "s"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->secondFormatter:Ljava/text/SimpleDateFormat;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/video/view/VideoControlView;->secondFormatter:Ljava/text/SimpleDateFormat;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 78
    invoke-virtual {p0}, Lcom/heyzap/common/video/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 79
    new-instance v0, Lcom/heyzap/common/video/view/VideoControlView$1;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/common/video/view/VideoControlView$1;-><init>(Lcom/heyzap/common/video/view/VideoControlView;Landroid/text/SpannableString;FLandroid/app/Activity;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
