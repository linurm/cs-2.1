.class Lcom/jirbo/adcolony/ad$b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/jirbo/adcolony/ad;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/ad;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/jirbo/adcolony/ad$b;->b:Lcom/jirbo/adcolony/ad;

    .line 1703
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1700
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ad$b;->a:Landroid/graphics/Rect;

    .line 1704
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1708
    const/16 v0, 0xff

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1709
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ad$b;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1710
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$b;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->ax:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ad$b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ad$b;->b:Lcom/jirbo/adcolony/ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ad;->ax:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jirbo/adcolony/ad$b;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ad$b;->b:Lcom/jirbo/adcolony/ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ad;->ax:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->a(Landroid/graphics/Canvas;II)V

    .line 1711
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad$b;->invalidate()V

    .line 1712
    return-void
.end method