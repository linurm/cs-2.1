.class public interface abstract Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;
.super Ljava/lang/Object;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BannerListener"
.end annotation


# virtual methods
.method public abstract onAdClicked(Lcom/heyzap/sdk/ads/BannerAdView;)V
.end method

.method public abstract onAdError(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
.end method

.method public abstract onAdLoaded(Lcom/heyzap/sdk/ads/BannerAdView;)V
.end method
