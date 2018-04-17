.class public Lcom/heyzap/sdk/ads/HeyzapAds$BannerAdSize;
.super Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerAdSize"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0, p1, p2}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    return-void
.end method
