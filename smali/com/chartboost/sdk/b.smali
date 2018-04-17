.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/chartboost/sdk/c$a;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/chartboost/sdk/a;

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Landroid/content/SharedPreferences;

.field private static m:Z

.field private static volatile n:Z

.field private static o:Landroid/content/Context;

.field private static p:Landroid/app/Application;

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/chartboost/sdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/chartboost/sdk/b;->f:Z

    .line 38
    sput-boolean v1, Lcom/chartboost/sdk/b;->g:Z

    .line 39
    sput-boolean v1, Lcom/chartboost/sdk/b;->h:Z

    .line 40
    sput-object v2, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 41
    sput-object v2, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    .line 42
    sput-object v2, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    .line 43
    sput-object v2, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    .line 44
    sput-boolean v3, Lcom/chartboost/sdk/b;->m:Z

    .line 45
    sput-boolean v1, Lcom/chartboost/sdk/b;->n:Z

    .line 46
    sput-object v2, Lcom/chartboost/sdk/b;->o:Landroid/content/Context;

    .line 48
    sput-object v2, Lcom/chartboost/sdk/b;->p:Landroid/app/Application;

    .line 49
    sput-boolean v1, Lcom/chartboost/sdk/b;->q:Z

    .line 51
    sput-boolean v3, Lcom/chartboost/sdk/b;->r:Z

    .line 52
    sput-boolean v1, Lcom/chartboost/sdk/b;->s:Z

    .line 53
    sput-boolean v3, Lcom/chartboost/sdk/b;->t:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    .line 95
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 512
    sput-object p0, Lcom/chartboost/sdk/b;->p:Landroid/app/Application;

    .line 513
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 500
    sput-object p0, Lcom/chartboost/sdk/b;->o:Landroid/content/Context;

    .line 501
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    if-nez p0, :cond_1

    .line 85
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    sput-object p0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0

    .prologue
    .line 293
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    .line 294
    sput-object p0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 295
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    .line 322
    if-eqz p0, :cond_7

    .line 323
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->f()Ljava/util/Map;

    move-result-object v2

    .line 324
    if-eqz v2, :cond_7

    .line 325
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 326
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 328
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 329
    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 330
    :cond_1
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 331
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 332
    :cond_2
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 333
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 334
    :cond_3
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 335
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 336
    :cond_4
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 337
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 338
    :cond_5
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 342
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    :cond_7
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/a;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->e:Lcom/chartboost/sdk/a;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/b$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 348
    new-instance v0, Lcom/chartboost/sdk/impl/az;

    const-string v1, "/api/config"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/az;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/az;->a(Z)V

    .line 350
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/az;->b(Z)V

    .line 351
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 352
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v2, "status"

    sget-object v3, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 354
    new-instance v1, Lcom/chartboost/sdk/b$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/b$1;-><init>(Lcom/chartboost/sdk/b$a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Lcom/chartboost/sdk/impl/az$c;)V

    .line 371
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->i:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Set a valid CBFramework first"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/chartboost/sdk/b;->b:Ljava/lang/String;

    const-string v1, "Invalid Version String"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    sput-object p0, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    sput-boolean p0, Lcom/chartboost/sdk/b;->f:Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 436
    if-nez p0, :cond_0

    .line 438
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    .line 114
    sget-object v0, Lcom/chartboost/sdk/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    sput-object p0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 248
    sput-boolean p0, Lcom/chartboost/sdk/b;->m:Z

    .line 249
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, ""

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appId"

    sget-object v2, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    sput-object p0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appSignature"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method protected static c(Z)V
    .locals 0

    .prologue
    .line 392
    sput-boolean p0, Lcom/chartboost/sdk/b;->n:Z

    .line 393
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, ""

    .line 137
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appSignature"

    sget-object v2, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/chartboost/sdk/b;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/c$a;->a(Z)V

    .line 465
    :cond_0
    return-void
.end method

.method public static e()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->e:Lcom/chartboost/sdk/a;

    goto :goto_0
.end method

.method protected static e(Z)V
    .locals 0

    .prologue
    .line 468
    sput-boolean p0, Lcom/chartboost/sdk/b;->q:Z

    .line 469
    return-void
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 476
    sput-boolean p0, Lcom/chartboost/sdk/b;->r:Z

    .line 477
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/chartboost/sdk/b;->f:Z

    goto :goto_0
.end method

.method public static g(Z)V
    .locals 0

    .prologue
    .line 484
    sput-boolean p0, Lcom/chartboost/sdk/b;->s:Z

    .line 485
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/chartboost/sdk/b;->h:Z

    goto :goto_0
.end method

.method public static h(Z)V
    .locals 0

    .prologue
    .line 492
    sput-boolean p0, Lcom/chartboost/sdk/b;->t:Z

    .line 493
    return-void
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/chartboost/sdk/b;->m:Z

    return v0
.end method

.method public static i()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "trackingLevels"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    .line 268
    invoke-static {}, Lcom/chartboost/sdk/b;->y()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "retriesEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/b;->i()Lorg/json/JSONObject;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_0

    const-string v2, "debug"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "session"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "system"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static l()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    .line 302
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const-string v0, ""

    .line 308
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 387
    sget-boolean v0, Lcom/chartboost/sdk/b;->n:Z

    return v0
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 396
    invoke-static {}, Lcom/chartboost/sdk/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p()Z
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/chartboost/sdk/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Session not started: Check if Chartboost.onStart() is called, if not the session won\'t be invoked"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static q()Z
    .locals 2

    .prologue
    .line 421
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_0

    .line 423
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Weak Activity reference is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static r()Z
    .locals 2

    .prologue
    .line 451
    invoke-static {}, Lcom/chartboost/sdk/b;->x()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Initialization error. Activity or appId or appSignature is invalid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 472
    sget-boolean v0, Lcom/chartboost/sdk/b;->q:Z

    return v0
.end method

.method public static t()Z
    .locals 1

    .prologue
    .line 480
    sget-boolean v0, Lcom/chartboost/sdk/b;->r:Z

    return v0
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 488
    sget-boolean v0, Lcom/chartboost/sdk/b;->s:Z

    return v0
.end method

.method public static v()Z
    .locals 1

    .prologue
    .line 496
    sget-boolean v0, Lcom/chartboost/sdk/b;->t:Z

    return v0
.end method

.method public static w()Landroid/content/Context;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/chartboost/sdk/b;->o:Landroid/content/Context;

    return-object v0
.end method

.method public static x()Landroid/app/Application;
    .locals 1

    .prologue
    .line 508
    sget-object v0, Lcom/chartboost/sdk/b;->p:Landroid/app/Application;

    return-object v0
.end method

.method private static y()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    .line 62
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    return-object v0
.end method
