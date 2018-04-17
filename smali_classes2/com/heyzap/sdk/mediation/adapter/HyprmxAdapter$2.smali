.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;
.super Ljava/lang/Object;
.source "HyprmxAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->doInitialSetupIfNeeded()Lcom/heyzap/common/concurrency/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

.field final synthetic val$distributorID:Ljava/lang/String;

.field final synthetic val$propertyID:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->val$distributorID:Ljava/lang/String;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->val$propertyID:Ljava/lang/String;

    iput-object p4, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->val$distributorID:Ljava/lang/String;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->val$propertyID:Ljava/lang/String;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->val$userID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/HyprMXHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hyprmx/android/sdk/HyprMXHelper;

    .line 145
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/concurrency/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method
