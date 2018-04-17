.class public Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
.super Ljava/lang/Object;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerOptions"
.end annotation


# instance fields
.field private admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field private containerViewSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field private facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field private genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 593
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 594
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->SMART_BANNER:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->containerViewSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 597
    const/16 v0, 0x50

    iput v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->position:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 645
    if-ne p0, p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 646
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 648
    :cond_3
    check-cast p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 650
    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iget-object v3, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v2, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 651
    goto :goto_0

    .line 650
    :cond_5
    iget-object v2, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-nez v2, :cond_4

    .line 652
    :cond_6
    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iget-object v3, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v2, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 653
    goto :goto_0

    .line 652
    :cond_8
    iget-object v2, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-nez v2, :cond_7

    .line 654
    :cond_9
    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iget-object v3, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v2, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 655
    goto :goto_0

    .line 654
    :cond_b
    iget-object v2, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-nez v2, :cond_a

    .line 656
    :cond_c
    iget v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->position:I

    iget v3, p1, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->position:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 657
    goto :goto_0
.end method

.method public getAdmobBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    return-object v0
.end method

.method public getContainerViewSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->containerViewSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    return-object v0
.end method

.method public getFacebookBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    return-object v0
.end method

.method public getGenericBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->position:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 665
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 666
    return v0

    :cond_1
    move v0, v1

    .line 664
    goto :goto_0
.end method

.method public setAdmobBannerSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->admobBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 618
    return-object p0
.end method

.method protected setContainerViewSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->containerViewSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 628
    return-object p0
.end method

.method public setFacebookBannerSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->facebookBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 613
    return-object p0
.end method

.method public setGenericBannerSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->genericBannerSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 623
    return-object p0
.end method

.method protected setPosition(I)V
    .locals 0

    .prologue
    .line 636
    iput p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->position:I

    .line 637
    return-void
.end method
