.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;
.super Lcom/heyzap/common/lifecycle/AdDisplay;
.source "AdcolonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWrapper"
.end annotation


# instance fields
.field public final fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Lcom/heyzap/common/lifecycle/FetchResult;",
            ">;"
        }
    .end annotation
.end field

.field public incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

.field public videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 342
    invoke-static {}, Lcom/heyzap/common/concurrency/SettableFuture;->create()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->fetchFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$1;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)V

    return-void
.end method


# virtual methods
.method public getAd()Lcom/jirbo/adcolony/AdColonyAd;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->videoAd:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 349
    :goto_0
    return-object v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$AdWrapper;->incentivizedAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
