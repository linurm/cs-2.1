.class Lcom/heyzap/internal/PackageManager$1$1;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/PackageManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/internal/PackageManager$1;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/PackageManager$1;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/heyzap/internal/PackageManager$1$1;->this$0:Lcom/heyzap/internal/PackageManager$1;

    iput-object p2, p0, Lcom/heyzap/internal/PackageManager$1$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    :try_start_0
    const-string v0, "version"

    const-string v3, "0"

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1;->this$0:Lcom/heyzap/internal/PackageManager$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 68
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 108
    :goto_1
    return-void

    .line 71
    :cond_0
    :try_start_1
    const-string v0, "packages"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 74
    if-eqz v6, :cond_3

    .line 75
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 76
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v7, v0, [B

    move v3, v1

    move v0, v1

    .line 77
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 78
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    div-int/lit8 v1, v3, 0x8

    aget-byte v8, v7, v1

    rem-int/lit8 v9, v3, 0x8

    shl-int v9, v2, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 82
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 77
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 90
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 92
    const-string v1, "version"

    invoke-virtual {v0, v1, v4}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "data"

    const/4 v2, 0x2

    invoke-static {v7, v2}, Lcom/heyzap/internal/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/heyzap/internal/PackageManager$1$1;->this$0:Lcom/heyzap/internal/PackageManager$1;

    iget-object v1, v1, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/heyzap/internal/PackageManager;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/heyzap/internal/PackageManager$1$1$1;

    invoke-direct {v3, p0}, Lcom/heyzap/internal/PackageManager$1$1$1;-><init>(Lcom/heyzap/internal/PackageManager$1$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/heyzap/common/net/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    const-string v1, "last_checked_packages"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
