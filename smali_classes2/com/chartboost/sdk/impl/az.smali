.class public final Lcom/chartboost/sdk/impl/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/az$a;,
        Lcom/chartboost/sdk/impl/az$b;,
        Lcom/chartboost/sdk/impl/az$d;,
        Lcom/chartboost/sdk/impl/az$c;
    }
.end annotation


# static fields
.field private static g:Lcom/chartboost/sdk/Libraries/e$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/chartboost/sdk/Libraries/e$a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private h:Lcom/chartboost/sdk/impl/az$c;

.field private i:Z

.field private j:Z

.field private k:Lcom/chartboost/sdk/Libraries/g$a;

.field private l:Lcom/chartboost/sdk/impl/ba;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/chartboost/sdk/impl/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/impl/az;->g:Lcom/chartboost/sdk/Libraries/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    .line 54
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->i:Z

    .line 58
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->j:Z

    .line 61
    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->k:Lcom/chartboost/sdk/Libraries/g$a;

    .line 67
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->n:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/az;->o:Z

    .line 71
    sget-object v0, Lcom/chartboost/sdk/impl/l$a;->b:Lcom/chartboost/sdk/impl/l$a;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->p:Lcom/chartboost/sdk/impl/l$a;

    .line 76
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    .line 77
    const-string v0, "POST"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->f:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/chartboost/sdk/b;->w()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->l:Lcom/chartboost/sdk/impl/ba;

    .line 79
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/az;->a(I)V

    .line 80
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/impl/az;
    .locals 3

    .prologue
    .line 459
    :try_start_0
    new-instance v1, Lcom/chartboost/sdk/impl/az;

    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 460
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->f:Ljava/lang/String;

    .line 461
    const-string v0, "query"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->d:Ljava/util/Map;

    .line 462
    const-string v0, "body"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    .line 463
    const-string v0, "headers"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    .line 464
    const-string v0, "ensureDelivery"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/chartboost/sdk/impl/az;->j:Z

    .line 465
    const-string v0, "eventType"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->b:Ljava/lang/String;

    .line 466
    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    .line 467
    const-string v0, "retryCount"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/chartboost/sdk/impl/az;->m:I

    .line 468
    const-string v0, "callback"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/impl/az$c;

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "callback"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/az$c;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v1

    .line 474
    :goto_0
    return-object v0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    const-string v1, "CBRequest"

    const-string v2, "Unable to deserialize failed request"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    const-string v1, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    const-string v1, "X-Chartboost-API"

    const-string v2, "5.3.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    const-string v1, "X-Chartboost-Client"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 364
    iput p1, p0, Lcom/chartboost/sdk/impl/az;->m:I

    .line 365
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 128
    const-string v0, "app"

    invoke-static {}, Lcom/chartboost/sdk/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "sdk"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "model"

    const-string v4, "Android Simulator"

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :goto_0
    const-string v0, "device_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "os"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v0, "sdk"

    const-string v4, "5.3.0"

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v0, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "cbPrefSessionCount"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 144
    const-string v4, "session"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v0, "reachability"

    invoke-static {}, Lcom/chartboost/sdk/impl/ay;->a()Lcom/chartboost/sdk/impl/ay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ay;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/az;->b(Landroid/content/Context;)V

    .line 149
    const-string v0, "scale"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v4, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 155
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 156
    const-string v5, "bundle"

    invoke-virtual {p0, v5, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v4, "bundle_id"

    invoke-virtual {p0, v4, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_2
    sget-object v0, Lcom/chartboost/sdk/impl/az;->g:Lcom/chartboost/sdk/Libraries/e$a;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 171
    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    :goto_3
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/chartboost/sdk/Libraries/e$b;

    const-string v6, "carrier-name"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "mobile-country-code"

    invoke-static {v2, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "mobile-network-code"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "iso-country-code"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v1

    aput-object v1, v5, v8

    const/4 v1, 0x4

    const-string v2, "phone-type"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/az;->g:Lcom/chartboost/sdk/Libraries/e$a;

    .line 184
    :cond_0
    :goto_4
    const-string v0, "carrier"

    sget-object v1, Lcom/chartboost/sdk/impl/az;->g:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v0, "custom_id"

    invoke-static {}, Lcom/chartboost/sdk/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/chartboost/sdk/b;->a()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    const-string v1, "framework_version"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_1
    const-string v0, "rooted_device"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void

    .line 133
    :cond_2
    const-string v0, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 150
    goto/16 :goto_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v4, "CBRequest"

    const-string v5, "Exception raised getting package mager object"

    invoke-static {v4, v5, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 181
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/az;->g:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_4

    :cond_5
    move-object v4, v3

    goto/16 :goto_3
.end method

.method public a(Lcom/chartboost/sdk/Libraries/g$a;)V
    .locals 2

    .prologue
    .line 333
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/g;->c(Lcom/chartboost/sdk/Libraries/g$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const-string v0, "CBRequest"

    const-string v1, "Validation predicate must be a dictionary style -- either VDictionary, VDictionaryExact, VDictionaryWithValues, or just a list of KV pairs."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->k:Lcom/chartboost/sdk/Libraries/g$a;

    .line 337
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/az$c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-static {}, Lcom/chartboost/sdk/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->j:Z

    .line 432
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->n:Z

    .line 434
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/az;->d(Z)V

    .line 436
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->l:Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v0, p0, p1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/az$c;)V

    .line 437
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/az$d;Lcom/chartboost/sdk/impl/az$b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-static {}, Lcom/chartboost/sdk/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->j:Z

    .line 442
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/az;->n:Z

    .line 444
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/az;->d(Z)V

    .line 445
    new-instance v0, Lcom/chartboost/sdk/impl/az$a;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/az$a;-><init>(Lcom/chartboost/sdk/impl/az$d;Lcom/chartboost/sdk/impl/az$b;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->l:Lcom/chartboost/sdk/impl/ba;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    invoke-virtual {v0, p0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/az;Lcom/chartboost/sdk/impl/az$c;)V

    .line 447
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/l$a;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->p:Lcom/chartboost/sdk/impl/l$a;

    .line 353
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 1

    .prologue
    .line 116
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az;->j:Z

    .line 318
    return-void
.end method

.method public varargs a([Lcom/chartboost/sdk/Libraries/g$k;)V
    .locals 1

    .prologue
    .line 340
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/az;->k:Lcom/chartboost/sdk/Libraries/g$a;

    .line 341
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "application/json"

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v1, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "w"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "h"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 249
    :cond_0
    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 250
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 251
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 252
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 255
    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v2, v3

    .line 262
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 263
    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 264
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 266
    const-string v6, "dw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v6, "dh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const-string v6, "dpi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    if-lez v2, :cond_1

    if-gt v2, v4, :cond_1

    .line 271
    :goto_2
    if-lez v1, :cond_2

    if-gt v1, v3, :cond_2

    .line 273
    :goto_3
    const-string v3, "w"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v2, "h"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v1

    move-object v3, v1

    move v1, v2

    .line 259
    :goto_4
    const-string v4, "CBRequest"

    const-string v5, "Exception getting activity size"

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_1

    :cond_1
    move v2, v4

    .line 270
    goto :goto_2

    :cond_2
    move v1, v3

    .line 271
    goto :goto_3

    .line 257
    :catch_1
    move-exception v1

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_4

    :cond_3
    move v1, v2

    goto/16 :goto_1
.end method

.method public b(Lcom/chartboost/sdk/impl/az$c;)V
    .locals 0

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    .line 452
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/chartboost/sdk/impl/az;->b:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az;->n:Z

    .line 330
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "identity"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->c()Lcom/chartboost/sdk/Libraries/c$a;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/c$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "tracking"

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/c$a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az;->o:Z

    .line 373
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    .line 212
    invoke-static {}, Lcom/chartboost/sdk/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 214
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s %s\n%s\n%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/chartboost/sdk/impl/az;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "X-Chartboost-App"

    invoke-virtual {p0, v2, v0}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "X-Chartboost-Signature"

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/az;->i:Z

    .line 381
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/az;->d:Ljava/util/Map;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "/"

    goto :goto_1
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/az;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/api/track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/az;->j:Z

    return v0
.end method

.method public l()Lcom/chartboost/sdk/Libraries/g$a;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->k:Lcom/chartboost/sdk/Libraries/g$a;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/az;->n:Z

    return v0
.end method

.method public n()Lcom/chartboost/sdk/impl/l$a;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->p:Lcom/chartboost/sdk/impl/l$a;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/chartboost/sdk/impl/az;->m:I

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/az;->o:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/az;->i:Z

    return v0
.end method

.method public r()Lcom/chartboost/sdk/impl/az$c;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    return-object v0
.end method

.method public s()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0, v0}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$d;Lcom/chartboost/sdk/impl/az$b;)V

    .line 427
    return-void
.end method

.method public t()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 4

    .prologue
    .line 480
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$b;

    const/4 v1, 0x0

    const-string v2, "path"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "method"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "query"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->d:Ljava/util/Map;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->c:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventType"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "headers"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->e:Ljava/util/Map;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ensureDelivery"

    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/az;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "retryCount"

    iget v3, p0, Lcom/chartboost/sdk/impl/az;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "callback"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/az;->h:Lcom/chartboost/sdk/impl/az$c;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$b;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$b;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    return-object v0
.end method
