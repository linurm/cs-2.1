.class public final Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;
.super Ljava/lang/Object;
.source "MRAIDOrientationProperties.java"


# static fields
.field public static final FORCE_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final FORCE_ORIENTATION_NONE:I = 0x2

.field public static final FORCE_ORIENTATION_PORTRAIT:I


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;-><init>(ZI)V

    .line 17
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    .line 21
    iput p2, p0, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    .line 22
    return-void
.end method

.method public static forceOrientationFromString(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "portrait"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "landscape"

    aput-object v3, v0, v2

    const-string v2, "none"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 27
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 31
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public forceOrientationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 39
    const-string v0, "error"

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "none"

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
