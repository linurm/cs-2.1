.class LHeyzap;
.super Ljava/lang/Object;
.source "Heyzap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LHeyzap$HeyzapCallback;
    }
.end annotation


# static fields
.field private static final MARMALADE_FRAMEWORK:Ljava/lang/String; = "marmalade"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HeyzapDestroyBanner()V
    .locals 0

    .prologue
    .line 292
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->destroy()V

    .line 293
    return-void
.end method

.method public HeyzapFetchInterstitial(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch()V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {p1}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HeyzapFetchRewarded(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/heyzap/sdk/ads/IncentivizedAd;->fetch()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/heyzap/sdk/ads/IncentivizedAd;->fetch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HeyzapFetchVideo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/heyzap/sdk/ads/VideoAd;->fetch()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/heyzap/sdk/ads/VideoAd;->fetch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HeyzapHideBanner()V
    .locals 0

    .prologue
    .line 288
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->hide()V

    .line 289
    return-void
.end method

.method public HeyzapShowBanner(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 278
    if-eqz p1, :cond_0

    const/16 v0, 0x30

    .line 280
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/heyzap/sdk/ads/BannerAd;->display(Landroid/app/Activity;ILjava/lang/String;)V

    .line 285
    :goto_1
    return-void

    .line 278
    :cond_0
    const/16 v0, 0x50

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/heyzap/sdk/ads/BannerAd;->display(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public HeyzapShowInterstitial(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->display(Landroid/app/Activity;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/heyzap/sdk/ads/InterstitialAd;->display(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HeyzapShowRewarded(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->display(Landroid/app/Activity;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/heyzap/sdk/ads/IncentivizedAd;->display(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HeyzapShowVideo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/VideoAd;->display(Landroid/app/Activity;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/heyzap/sdk/ads/VideoAd;->display(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HeyzapStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    const-string v0, "marmalade"

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;)V

    .line 48
    new-instance v0, LHeyzap$1;

    invoke-direct {v0, p0}, LHeyzap$1;-><init>(LHeyzap;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 91
    new-instance v0, LHeyzap$2;

    invoke-direct {v0, p0}, LHeyzap$2;-><init>(LHeyzap;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/VideoAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 134
    new-instance v0, LHeyzap$3;

    invoke-direct {v0, p0}, LHeyzap$3;-><init>(LHeyzap;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 177
    new-instance v0, LHeyzap$4;

    invoke-direct {v0, p0}, LHeyzap$4;-><init>(LHeyzap;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 190
    new-instance v0, LHeyzap$5;

    invoke-direct {v0, p0}, LHeyzap$5;-><init>(LHeyzap;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAd;->setBannerListener(Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;)V

    .line 219
    new-instance v0, LHeyzap$6;

    invoke-direct {v0, p0}, LHeyzap$6;-><init>(LHeyzap;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->setNetworkCallbackListener(Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V

    .line 226
    return-void
.end method

.method public HeyzapStartTestActivity()V
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/ideaworks3d/marmalade/LoaderAPI;->getActivity()Lcom/ideaworks3d/marmalade/LoaderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->startTestActivity(Landroid/content/Context;)V

    .line 297
    return-void
.end method

.method public native nativeCallback(ILjava/lang/String;)V
.end method
