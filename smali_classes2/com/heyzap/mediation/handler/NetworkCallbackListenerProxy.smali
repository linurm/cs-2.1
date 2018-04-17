.class public Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;
.super Ljava/lang/Object;
.source "NetworkCallbackListenerProxy.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;


# instance fields
.field private listener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;->listener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    .line 8
    return-void
.end method


# virtual methods
.method public onNetworkCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;->listener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;->listener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;->onNetworkCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method

.method public setNetworkCallbackListener(Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/heyzap/mediation/handler/NetworkCallbackListenerProxy;->listener:Lcom/heyzap/sdk/ads/HeyzapAds$NetworkCallbackListener;

    .line 12
    return-void
.end method
