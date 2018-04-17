.class public Lzj/zfenlly/gua/TargetFloatView;
.super Lzj/zfenlly/gua/FloatView;
.source "TargetFloatView.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lzj/zfenlly/gua/FloatView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    const/16 p1, 0x550

    .line 13
    iput p1, p0, Lzj/zfenlly/gua/TargetFloatView;->x:I

    const/16 p1, 0x3e4

    iput p1, p0, Lzj/zfenlly/gua/TargetFloatView;->y:I

    return-void
.end method


# virtual methods
.method public updateViewPosition()V
    .locals 5

    .line 21
    sget v0, Lzj/zfenlly/gua/TargetFloatView;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lzj/zfenlly/gua/TargetFloatView;->i:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lzj/zfenlly/gua/TargetFloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lzj/zfenlly/gua/TargetFloatView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lzj/zfenlly/gua/TargetFloatView;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    iget-object v0, p0, Lzj/zfenlly/gua/TargetFloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lzj/zfenlly/gua/TargetFloatView;->y:I

    int-to-float v1, v1

    iget v2, p0, Lzj/zfenlly/gua/TargetFloatView;->mTouchY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 26
    iget-object v0, p0, Lzj/zfenlly/gua/TargetFloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lzj/zfenlly/gua/TargetFloatView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lzj/zfenlly/gua/TargetFloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    .line 28
    new-array v1, v0, [I

    .line 29
    invoke-virtual {p0, v1}, Lzj/zfenlly/gua/TargetFloatView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 31
    aget v2, v1, v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/TargetFloatView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lzj/zfenlly/gua/TargetFloatView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lzj/zfenlly/gua/TargetFloatView;->x:I

    const/4 v2, 0x1

    .line 32
    aget v1, v1, v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/TargetFloatView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lzj/zfenlly/gua/TargetFloatView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lzj/zfenlly/gua/TargetFloatView;->y:I

    :cond_0
    return-void
.end method
