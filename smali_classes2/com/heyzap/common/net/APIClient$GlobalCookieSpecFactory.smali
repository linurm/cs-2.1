.class Lcom/heyzap/common/net/APIClient$GlobalCookieSpecFactory;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/net/APIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalCookieSpecFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/net/APIClient$1;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/heyzap/common/net/APIClient$GlobalCookieSpecFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/heyzap/common/net/APIClient$GlobalCookieSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heyzap/common/net/APIClient$GlobalCookieSpec;-><init>(Lcom/heyzap/common/net/APIClient$1;)V

    return-object v0
.end method
