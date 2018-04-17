.class public final Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;
.super Ljava/lang/Object;
.source "MRAIDResizeProperties.java"


# static fields
.field public static final CUSTOM_CLOSE_POSITION_BOTTOM_CENTER:I = 0x5

.field public static final CUSTOM_CLOSE_POSITION_BOTTOM_LEFT:I = 0x4

.field public static final CUSTOM_CLOSE_POSITION_BOTTOM_RIGHT:I = 0x6

.field public static final CUSTOM_CLOSE_POSITION_CENTER:I = 0x3

.field public static final CUSTOM_CLOSE_POSITION_TOP_CENTER:I = 0x1

.field public static final CUSTOM_CLOSE_POSITION_TOP_LEFT:I = 0x0

.field public static final CUSTOM_CLOSE_POSITION_TOP_RIGHT:I = 0x2


# instance fields
.field public allowOffscreen:Z

.field public customClosePosition:I

.field public height:I

.field public offsetX:I

.field public offsetY:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;-><init>(IIIIIZ)V

    .line 25
    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->width:I

    .line 35
    iput p2, p0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->height:I

    .line 36
    iput p3, p0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 37
    iput p4, p0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetY:I

    .line 38
    iput p5, p0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    .line 39
    iput-boolean p6, p0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->allowOffscreen:Z

    .line 40
    return-void
.end method

.method public static customClosePositionFromString(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "top-left"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "top-center"

    aput-object v3, v0, v2

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v2, 0x3

    const-string v3, "center"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "bottom-left"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "bottom-center"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "bottom-right"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 53
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 57
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
