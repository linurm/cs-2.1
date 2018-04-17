.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;
.super Lcom/heyzap/internal/ProxyActivity;
.source "HyprmxAdapter.java"

# interfaces
.implements Lcom/hyprmx/android/sdk/HyprMXHelper$HyprMXListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdDisplayProxyActivity"
.end annotation


# instance fields
.field private final adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/heyzap/internal/ProxyActivity;-><init>(Landroid/app/Activity;)V

    .line 319
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    .line 320
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 334
    invoke-static {p0, p1, p2, p3, p0}, Lcom/hyprmx/android/sdk/HyprMXHelper;->processActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/hyprmx/android/sdk/HyprMXHelper$HyprMXListener;)V

    .line 335
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 336
    invoke-super {p0, p1, p2, p3}, Lcom/heyzap/internal/ProxyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 341
    invoke-static {}, Lcom/hyprmx/android/sdk/HyprMXHelper;->handleOnBackPressed()V

    .line 342
    return-void
.end method

.method public onNoContentAvailable()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v2, "No ad available"

    invoke-direct {v1, v2}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public onOfferCancelled(Lcom/hyprmx/android/sdk/api/data/Offer;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public onOfferCompleted(Lcom/hyprmx/android/sdk/api/data/Offer;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public onUserOptedOut()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 324
    sput-object p0, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;->SHADOW_CONTEXT:Lcom/heyzap/internal/ProxyActivity;

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/heyzap/sdk/ads/HeyzapProxyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    const-string v1, "parent_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 327
    const-string v1, "parent_request_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdDisplayProxyActivity;->adWrapper:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v1, v1, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    new-instance v2, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v2}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    invoke-virtual {v1, v2}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 329
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/hyprmx/android/sdk/HyprMXHelper;->handleOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 330
    invoke-super {p0, v0, p2}, Lcom/heyzap/internal/ProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    return-void
.end method
