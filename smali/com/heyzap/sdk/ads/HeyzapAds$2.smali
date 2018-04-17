.class final Lcom/heyzap/sdk/ads/HeyzapAds$2;
.super Ljava/lang/Object;
.source "HeyzapAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;->onPurchaseComplete(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Lcom/heyzap/http/RequestParams;


# direct methods
.method constructor <init>(Lcom/heyzap/http/RequestParams;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$2;->val$params:Lcom/heyzap/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/in_game_api/metrics/iap"

    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapAds$2;->val$params:Lcom/heyzap/http/RequestParams;

    new-instance v3, Lcom/heyzap/sdk/ads/HeyzapAds$2$1;

    invoke-direct {v3, p0}, Lcom/heyzap/sdk/ads/HeyzapAds$2$1;-><init>(Lcom/heyzap/sdk/ads/HeyzapAds$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 453
    return-void
.end method
