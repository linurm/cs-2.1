.class final Lcom/heyzap/internal/PackageManager$1;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/PackageManager;->checkInstalledPackages(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 35
    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/heyzap/internal/PackageManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gtc/amazon.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    const-string v2, "com.heyzap.sdk.ads"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 42
    const-string v0, "last_checked_packages"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 48
    if-nez v0, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Lcom/heyzap/internal/PackageManager;->access$100()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heyzap/internal/Utils;->isExpired(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    :goto_1
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/heyzap/internal/PackageManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gtc/android.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/heyzap/http/RequestParams;

    invoke-direct {v3}, Lcom/heyzap/http/RequestParams;-><init>()V

    new-instance v4, Lcom/heyzap/internal/PackageManager$1$1;

    invoke-direct {v4, p0, v2}, Lcom/heyzap/internal/PackageManager$1$1;-><init>(Lcom/heyzap/internal/PackageManager$1;Landroid/content/SharedPreferences;)V

    invoke-static {v0, v1, v3, v4}, Lcom/heyzap/common/net/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    goto :goto_1
.end method
