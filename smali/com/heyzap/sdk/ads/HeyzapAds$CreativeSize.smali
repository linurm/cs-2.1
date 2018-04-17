.class public Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;
.super Ljava/lang/Object;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreativeSize"
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final BANNER_320_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final BANNER_HEIGHT_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final BANNER_HEIGHT_90:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final BANNER_RECTANGLE_250:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final FULLSCREEN:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final FULL_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final FULL_WIDTH:I = -0x1

.field public static final LARGE_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final LEADERBOARD:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final MEDIUM_RECTANGLE:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field public static final WIDE_SKYSCRAPER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xfa

    const/16 v6, 0x5a

    const/16 v5, 0x140

    const/16 v4, 0x32

    const/4 v3, -0x1

    .line 680
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-direct {v0, v5, v4}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 681
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->FULL_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 682
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    const/16 v1, 0x64

    invoke-direct {v0, v5, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->LARGE_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 683
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v7}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->MEDIUM_RECTANGLE:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 684
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    const/16 v1, 0x2d8

    invoke-direct {v0, v1, v6}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->LEADERBOARD:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 685
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 686
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->WIDE_SKYSCRAPER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 689
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-direct {v0, v5, v4}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_320_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 690
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-direct {v0, v3, v4}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_HEIGHT_50:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 691
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-direct {v0, v3, v6}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_HEIGHT_90:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 692
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-direct {v0, v3, v7}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->BANNER_RECTANGLE_250:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 695
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-direct {v0, v3, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->FULLSCREEN:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    const/16 v0, 0x140

    iput v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->width:I

    .line 698
    const/16 v0, 0x32

    iput v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->height:I

    .line 701
    iput p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->width:I

    .line 702
    iput p2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->height:I

    .line 703
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 714
    if-ne p1, p0, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    instance-of v2, p1, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 716
    :cond_2
    check-cast p1, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 717
    iget v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->width:I

    iget v3, p1, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->height:I

    iget v3, p1, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->height:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 722
    const-string v0, "<CreativeSize %dx%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
