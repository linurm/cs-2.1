.class public Lcom/heyzap/internal/AnnulurSegment;
.super Landroid/graphics/drawable/shapes/Shape;
.source "AnnulurSegment.java"


# instance fields
.field private final border:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final percent:F

.field private final width:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->border:Landroid/graphics/Paint;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->path:Landroid/graphics/Path;

    .line 17
    iput p3, p0, Lcom/heyzap/internal/AnnulurSegment;->percent:F

    .line 18
    iput p2, p0, Lcom/heyzap/internal/AnnulurSegment;->width:F

    .line 19
    iget-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->border:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->border:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->border:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->border:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/internal/AnnulurSegment;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/heyzap/internal/AnnulurSegment;->border:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 28
    return-void
.end method

.method public onResize(FF)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 32
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/heyzap/internal/AnnulurSegment;->width:F

    div-float/2addr v1, v5

    add-float/2addr v1, v3

    iget v2, p0, Lcom/heyzap/internal/AnnulurSegment;->width:F

    div-float/2addr v2, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/heyzap/internal/AnnulurSegment;->width:F

    div-float/2addr v3, v5

    sub-float v3, p1, v3

    iget v4, p0, Lcom/heyzap/internal/AnnulurSegment;->width:F

    div-float/2addr v4, v5

    sub-float v4, p2, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 36
    iget-object v1, p0, Lcom/heyzap/internal/AnnulurSegment;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 37
    iget-object v1, p0, Lcom/heyzap/internal/AnnulurSegment;->path:Landroid/graphics/Path;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/heyzap/internal/AnnulurSegment;->percent:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 38
    return-void
.end method
