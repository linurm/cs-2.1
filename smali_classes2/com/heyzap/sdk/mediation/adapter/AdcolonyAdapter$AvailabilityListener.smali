.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvailabilityListener"
.end annotation


# instance fields
.field private final adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field private final fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final zoneToUnitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/adapter/FetchStateManager",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    .line 398
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->zoneToUnitMap:Ljava/util/Map;

    .line 399
    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 400
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;Lcom/heyzap/mediation/abstr/NetworkAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;-><init>(Lcom/heyzap/mediation/adapter/FetchStateManager;Ljava/util/Map;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 405
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    if-eqz p1, :cond_1

    const-string v0, "available"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->zoneToUnitMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/Constants$AdUnit;

    .line 408
    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AvailabilityListener;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;

    iget-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    return-void

    .line 405
    :cond_1
    const-string v0, "fetch_failed"

    goto :goto_0

    .line 409
    :cond_2
    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$FetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v3, "Unavailable for unknown reason."

    invoke-direct {v0, v2, v3}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    goto :goto_1
.end method
