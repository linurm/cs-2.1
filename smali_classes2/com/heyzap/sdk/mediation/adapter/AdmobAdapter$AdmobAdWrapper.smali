.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Lcom/heyzap/common/banner/BannerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdmobAdWrapper"
.end annotation


# instance fields
.field public final clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final closeListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/lifecycle/EventStream",
            "<",
            "Lcom/heyzap/common/lifecycle/DisplayResult;",
            ">;"
        }
    .end annotation
.end field

.field public final fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field public final inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field public realBannerView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 482
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 483
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 484
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->closeListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 485
    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->clickEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 486
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 490
    return-void
.end method


# virtual methods
.method public destroyBanner()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    .line 502
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method
