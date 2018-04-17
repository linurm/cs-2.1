.class public Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field private static defaultMaxLoad:D


# instance fields
.field public final maxLoad:D

.field public final networkConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->defaultMaxLoad:D

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->maxLoad:D

    .line 138
    iput-object p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "max_load"

    sget-wide v2, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->defaultMaxLoad:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->maxLoad:D

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    .line 126
    const-string v0, "networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    .line 127
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$Config;->networkConfigs:Ljava/util/List;

    new-instance v4, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    const-string v4, "Failed to load loader config: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    :cond_0
    return-void
.end method
