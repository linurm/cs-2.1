.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;
.super Ljava/lang/Object;
.source "HyprmxAdapter.java"

# interfaces
.implements Lcom/hyprmx/android/sdk/utility/OfferHolder$OnOffersAvailableResponseReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFetchListener"
.end annotation


# instance fields
.field private final ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;

.field private final fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/heyzap/common/concurrency/SettableFuture;Lcom/hyprmx/android/sdk/HyprMXPresentation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;",
            ">;",
            "Lcom/hyprmx/android/sdk/HyprMXPresentation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    .line 288
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;

    .line 289
    return-void
.end method

.method private getFetchFailureReason(I)Lcom/heyzap/internal/Constants$FetchFailureReason;
    .locals 1

    .prologue
    .line 292
    .line 294
    sget-object v0, Lcom/heyzap/internal/Constants$FetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$FetchFailureReason;

    return-object v0
.end method


# virtual methods
.method public onError(I)V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;

    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->getFetchFailureReason(I)Lcom/heyzap/internal/Constants$FetchFailureReason;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public onNoOffersAvailable(Lcom/hyprmx/android/sdk/api/data/OffersAvailableResponse;)V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public onOffersAvailable(Lcom/hyprmx/android/sdk/api/data/OffersAvailableResponse;)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$AdFetchListener;->ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;

    invoke-direct {v1, v2}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;-><init>(Lcom/hyprmx/android/sdk/HyprMXPresentation;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method
