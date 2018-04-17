.class LHeyzap$5;
.super Ljava/lang/Object;
.source "Heyzap.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHeyzap;->HeyzapStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LHeyzap;


# direct methods
.method constructor <init>(LHeyzap;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, LHeyzap$5;->this$0:LHeyzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/BannerAdView;->getAdTag()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_0
    iget-object v1, p0, LHeyzap$5;->this$0:LHeyzap;

    sget-object v2, LHeyzap$HeyzapCallback;->HZBANNER_CLICKED:LHeyzap$HeyzapCallback;

    invoke-virtual {v2}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 216
    return-void
.end method

.method public onAdError(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/BannerAdView;->getAdTag()Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    iget-object v1, p0, LHeyzap$5;->this$0:LHeyzap;

    sget-object v2, LHeyzap$HeyzapCallback;->HZBANNER_ERROR:LHeyzap$HeyzapCallback;

    invoke-virtual {v2}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 198
    return-void
.end method

.method public onAdLoaded(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/heyzap/sdk/ads/BannerAdView;->getAdTag()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    iget-object v1, p0, LHeyzap$5;->this$0:LHeyzap;

    sget-object v2, LHeyzap$HeyzapCallback;->HZBANNER_LOADED:LHeyzap$HeyzapCallback;

    invoke-virtual {v2}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 207
    return-void
.end method
