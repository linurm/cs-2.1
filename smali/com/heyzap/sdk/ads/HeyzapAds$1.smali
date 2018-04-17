.class final Lcom/heyzap/sdk/ads/HeyzapAds$1;
.super Ljava/lang/Object;
.source "HeyzapAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/HeyzapAds;->internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$publisherId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$1;->val$publisherId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getContextRef()Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapAds$1;->val$publisherId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heyzap/house/Manager;->start(Lcom/heyzap/internal/ContextReference;Ljava/lang/String;)Lcom/heyzap/common/concurrency/SettableFuture;

    .line 261
    return-void
.end method
