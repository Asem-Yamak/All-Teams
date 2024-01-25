
--
-- TOC entry 232 (class 1259 OID 49021)
-- Name: att_emp; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.att_emp (
    emp_id integer NOT NULL,
    emp_a_name character varying(255) DEFAULT NULL::character varying,
    emp_l_name character varying(255) DEFAULT NULL::character varying,
    badge_no character varying(255) DEFAULT NULL::character varying,
    start_work_date date,
    real_work_date date,
    end_work_date date,
    ag_no character varying(255) DEFAULT NULL::character varying,
    id_number character varying(255) DEFAULT NULL::character varying,
    country_no character varying(255) DEFAULT NULL::character varying,
    city_no character varying(255) DEFAULT NULL::character varying,
    address character varying(255) DEFAULT NULL::character varying,
    place_birth character varying(255) DEFAULT NULL::character varying,
    date_birth date,
    home_phone character varying(255) DEFAULT NULL::character varying,
    pel_phone character varying(255) DEFAULT NULL::character varying,
    emergency_phone character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    gender character varying(255) DEFAULT NULL::character varying,
    m_status character varying(255) DEFAULT NULL::character varying,
    bank_no character varying(255) DEFAULT NULL::character varying,
    bank_account character varying(255) DEFAULT NULL::character varying,
    t_id character varying(255) DEFAULT NULL::character varying,
    punch character varying(255) DEFAULT NULL::character varying,
    emp_status character varying(255) DEFAULT NULL::character varying,
    licence_no character varying(255) DEFAULT NULL::character varying,
    blood_group character varying(255) DEFAULT NULL::character varying,
    emergency_person character varying(255) DEFAULT NULL::character varying,
    user_no character varying(255) DEFAULT NULL::character varying,
    time_stamp character varying(255) DEFAULT NULL::character varying,
    image character varying(255) DEFAULT NULL::character varying,
    religion character varying(255) DEFAULT NULL::character varying,
    numberofchildren character varying(255) DEFAULT NULL::character varying,
    houserent character varying(255) DEFAULT NULL::character varying,
    nstudent character varying(255) DEFAULT NULL::character varying,
    ndependants character varying(255) DEFAULT NULL::character varying,
    spousesname character varying(255) DEFAULT NULL::character varying,
    spouseid character varying(255) DEFAULT NULL::character varying,
    spousedateofbirth character varying(255) DEFAULT NULL::character varying,
    street character varying(255) DEFAULT NULL::character varying,
    salary_type character varying(255) DEFAULT NULL::character varying,
    have_step character varying(255) DEFAULT NULL::character varying,
    taxable character varying(255) DEFAULT NULL::character varying,
    spouse_work character varying(255) DEFAULT NULL::character varying,
    residence character varying(255) DEFAULT NULL::character varying,
    branch_no character varying(255) DEFAULT NULL::character varying,
    manula_tax character varying(255) DEFAULT NULL::character varying,
    manual_tax character varying(255) DEFAULT NULL::character varying,
    dept_no character varying(255) DEFAULT NULL::character varying,
    show_attendance_rep character varying(255) DEFAULT NULL::character varying,
    build_house character varying(255) DEFAULT NULL::character varying,
    request_no character varying(255) DEFAULT NULL::character varying,
    code_acc character varying(255) DEFAULT NULL::character varying,
    file_no character varying(255) DEFAULT NULL::character varying,
    bank_co character varying(255) DEFAULT NULL::character varying,
    sal_cat_allowances character varying(255) DEFAULT NULL::character varying,
    contract_id integer,
    has_ins_yn character varying(255) DEFAULT NULL::character varying,
    has_injury_yn character varying(255) DEFAULT NULL::character varying,
    prof_practicing character varying(255) DEFAULT NULL::character varying,
    end_contract_date character varying(255) DEFAULT NULL::character varying,
    stud_approve character varying(255) DEFAULT NULL::character varying,
    stud_approve_till_date character varying(255) DEFAULT NULL::character varying,
    member_id character varying(255) DEFAULT NULL::character varying,
    village_name character varying(255) DEFAULT NULL::character varying,
    show_absence_rep character varying(255) DEFAULT NULL::character varying,
    dept_tree character varying(255) DEFAULT NULL::character varying,
    bank_branch_no character varying(255) DEFAULT NULL::character varying,
    emp_image bytea,
    phone_ext character varying(255) DEFAULT NULL::character varying,
    prev_lates character varying(255) DEFAULT NULL::character varying,
    job_code character varying(255) DEFAULT NULL::character varying,
    iban_no character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.att_emp OWNER TO gcc40;

--
-- TOC entry 258 (class 1259 OID 49312)
-- Name: att_org_chart; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.att_org_chart (
    parent_id integer,
    node_id integer,
    node_order integer,
    node_level integer,
    dept_type integer,
    dept_value integer,
    emp_numbers integer,
    state character varying(255) DEFAULT NULL::character varying,
    active character varying(255) DEFAULT NULL::character varying,
    node_icon character varying(255) DEFAULT NULL::character varying,
    note character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.att_org_chart OWNER TO gcc40;

--
-- TOC entry 261 (class 1259 OID 49336)
-- Name: att_org_emp_node; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.att_org_emp_node (
    counter integer NOT NULL,
    emp_id character varying(255) NOT NULL,
    node_id character varying(255) DEFAULT NULL::character varying,
    active character varying(255) DEFAULT NULL::character varying,
    active_date date,
    user_no character varying(255) DEFAULT NULL::character varying,
    time_stamp date,
    note character varying(255) DEFAULT NULL::character varying,
    job_no character varying(255) DEFAULT NULL::character varying,
    emp_node_type character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.att_org_emp_node OWNER TO gcc40;

--
-- TOC entry 257 (class 1259 OID 49302)
-- Name: att_org_items; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.att_org_items (
    item_type integer NOT NULL,
    item_id integer NOT NULL,
    item_a_name character varying(255) DEFAULT NULL::character varying,
    item_l_name character varying(255) DEFAULT NULL::character varying,
    item_desc character varying(255) DEFAULT NULL::character varying,
    user_no character varying(255) DEFAULT NULL::character varying,
    time_stamp date,
    temp character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.att_org_items OWNER TO gcc40;

--
-- TOC entry 273 (class 1259 OID 49433)
-- Name: attendance; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.attendance (
    id integer NOT NULL,
    employee_no integer NOT NULL,
    date timestamp(0) without time zone NOT NULL,
    state integer NOT NULL,
    type integer NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE public.attendance OWNER TO gcc40;

--
-- TOC entry 3959 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN attendance.date; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.attendance.date IS '(DC2Type:datetime_immutable)';


--
-- TOC entry 250 (class 1259 OID 49215)
-- Name: attendance_agreement_employee_actions; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.attendance_agreement_employee_actions (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    agreement_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date
);


ALTER TABLE public.attendance_agreement_employee_actions OWNER TO gcc40;

--
-- TOC entry 3960 (class 0 OID 0)
-- Dependencies: 250
-- Name: COLUMN attendance_agreement_employee_actions.start_date; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.attendance_agreement_employee_actions.start_date IS '(DC2Type:date_immutable)';


--
-- TOC entry 249 (class 1259 OID 49214)
-- Name: attendance_agreement_employee_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.attendance_agreement_employee_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_agreement_employee_actions_id_seq OWNER TO gcc40;

--
-- TOC entry 3961 (class 0 OID 0)
-- Dependencies: 249
-- Name: attendance_agreement_employee_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.attendance_agreement_employee_actions_id_seq OWNED BY public.attendance_agreement_employee_actions.id;


--
-- TOC entry 246 (class 1259 OID 49187)
-- Name: attendance_agreements; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.attendance_agreements (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.attendance_agreements OWNER TO gcc40;

--
-- TOC entry 248 (class 1259 OID 49198)
-- Name: attendance_agreements_details; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.attendance_agreements_details (
    id integer NOT NULL,
    agreement_id integer NOT NULL,
    day character varying(255) NOT NULL,
    att_status integer NOT NULL,
    start_time time(0) without time zone NOT NULL,
    end_time time(0) without time zone NOT NULL,
    check_in_end time(0) without time zone NOT NULL,
    allowed_time_check_in integer NOT NULL,
    allowed_time_check_out integer NOT NULL,
    allowed_p_leave_hours integer NOT NULL
);


ALTER TABLE public.attendance_agreements_details OWNER TO gcc40;

--
-- TOC entry 247 (class 1259 OID 49197)
-- Name: attendance_agreements_details_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.attendance_agreements_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_agreements_details_id_seq OWNER TO gcc40;

--
-- TOC entry 3962 (class 0 OID 0)
-- Dependencies: 247
-- Name: attendance_agreements_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.attendance_agreements_details_id_seq OWNED BY public.attendance_agreements_details.id;


--
-- TOC entry 245 (class 1259 OID 49186)
-- Name: attendance_agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.attendance_agreements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_agreements_id_seq OWNER TO gcc40;

--
-- TOC entry 3963 (class 0 OID 0)
-- Dependencies: 245
-- Name: attendance_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.attendance_agreements_id_seq OWNED BY public.attendance_agreements.id;


--
-- TOC entry 244 (class 1259 OID 49176)
-- Name: attendance_check_in_out; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.attendance_check_in_out (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    date date NOT NULL,
    check_in time(0) without time zone DEFAULT NULL::time without time zone,
    check_out time(0) without time zone DEFAULT NULL::time without time zone,
    device_id integer NOT NULL
);


ALTER TABLE public.attendance_check_in_out OWNER TO gcc40;

--
-- TOC entry 3964 (class 0 OID 0)
-- Dependencies: 244
-- Name: COLUMN attendance_check_in_out.date; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.attendance_check_in_out.date IS '(DC2Type:date_immutable)';


--
-- TOC entry 243 (class 1259 OID 49175)
-- Name: attendance_check_in_out_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.attendance_check_in_out_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_check_in_out_id_seq OWNER TO gcc40;

--
-- TOC entry 3965 (class 0 OID 0)
-- Dependencies: 243
-- Name: attendance_check_in_out_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.attendance_check_in_out_id_seq OWNED BY public.attendance_check_in_out.id;


--
-- TOC entry 272 (class 1259 OID 49432)
-- Name: attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attendance_id_seq OWNER TO gcc40;

--
-- TOC entry 3966 (class 0 OID 0)
-- Dependencies: 272
-- Name: attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.attendance_id_seq OWNED BY public.attendance.id;


--
-- TOC entry 267 (class 1259 OID 49404)
-- Name: crediting; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.crediting (
    id integer NOT NULL,
    year_credi integer,
    create_user integer NOT NULL,
    create_date timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.crediting OWNER TO gcc40;

--
-- TOC entry 266 (class 1259 OID 49403)
-- Name: crediting_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.crediting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.crediting_id_seq OWNER TO gcc40;

--
-- TOC entry 3967 (class 0 OID 0)
-- Dependencies: 266
-- Name: crediting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.crediting_id_seq OWNED BY public.crediting.id;


--
-- TOC entry 236 (class 1259 OID 49104)
-- Name: devices; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    device_ip character varying(255) NOT NULL,
    serial character varying(255) DEFAULT NULL::character varying,
    area character varying(255) NOT NULL,
    status boolean DEFAULT true NOT NULL
);


ALTER TABLE public.devices OWNER TO gcc40;

--
-- TOC entry 235 (class 1259 OID 49103)
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.devices_id_seq OWNER TO gcc40;

--
-- TOC entry 3968 (class 0 OID 0)
-- Dependencies: 235
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;


--
-- TOC entry 215 (class 1259 OID 16387)
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);


ALTER TABLE public.doctrine_migration_versions OWNER TO gcc40;

--
-- TOC entry 238 (class 1259 OID 49117)
-- Name: emp_vac_balance; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.emp_vac_balance (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    vacation_type integer NOT NULL,
    start_balance integer NOT NULL,
    current_balance integer NOT NULL
);


ALTER TABLE public.emp_vac_balance OWNER TO gcc40;

--
-- TOC entry 237 (class 1259 OID 49116)
-- Name: emp_vac_balance_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.emp_vac_balance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.emp_vac_balance_id_seq OWNER TO gcc40;

--
-- TOC entry 3969 (class 0 OID 0)
-- Dependencies: 237
-- Name: emp_vac_balance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.emp_vac_balance_id_seq OWNED BY public.emp_vac_balance.id;


--
-- TOC entry 242 (class 1259 OID 49154)
-- Name: emp_vacation; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.emp_vacation (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    vacation_type integer,
    annual_vac_type integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    address character varying(255) DEFAULT NULL::character varying,
    mobile character varying(255) DEFAULT NULL::character varying,
    phone character varying(255) DEFAULT NULL::character varying,
    notes text,
    vacation_status integer NOT NULL,
    substitute_employee character varying(255) DEFAULT NULL::character varying,
    create_user integer NOT NULL,
    create_date timestamp(0) without time zone NOT NULL,
    approve_user integer,
    approve_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.emp_vacation OWNER TO gcc40;

--
-- TOC entry 241 (class 1259 OID 49153)
-- Name: emp_vacation_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.emp_vacation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.emp_vacation_id_seq OWNER TO gcc40;

--
-- TOC entry 3970 (class 0 OID 0)
-- Dependencies: 241
-- Name: emp_vacation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.emp_vacation_id_seq OWNED BY public.emp_vacation.id;


--
-- TOC entry 227 (class 1259 OID 48964)
-- Name: employee_addresses_info; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.employee_addresses_info (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    address character varying(255) NOT NULL,
    city smallint NOT NULL,
    region character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    postal_code character varying(255) NOT NULL
);


ALTER TABLE public.employee_addresses_info OWNER TO gcc40;

--
-- TOC entry 226 (class 1259 OID 48963)
-- Name: employee_addresses_info_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.employee_addresses_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_addresses_info_id_seq OWNER TO gcc40;

--
-- TOC entry 3971 (class 0 OID 0)
-- Dependencies: 226
-- Name: employee_addresses_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.employee_addresses_info_id_seq OWNED BY public.employee_addresses_info.id;


--
-- TOC entry 223 (class 1259 OID 48927)
-- Name: employee_basic_info; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.employee_basic_info (
    id integer NOT NULL,
    employee_no integer NOT NULL,
    f_name character varying(255) NOT NULL,
    s_name character varying(255) NOT NULL,
    t_name character varying(255) NOT NULL,
    l_name character varying(255) NOT NULL,
    en_name character varying(255) NOT NULL,
    gender integer NOT NULL,
    religion smallint NOT NULL,
    birthday date NOT NULL,
    birthplace character varying(255) NOT NULL,
    nationality smallint NOT NULL,
    national_id character varying(255) NOT NULL,
    passport_no character varying(255) NOT NULL,
    marital_status smallint NOT NULL,
    employee_status smallint,
    disability character varying(255) NOT NULL,
    disability_desc character varying(255) NOT NULL,
    attendance_agreements_id integer DEFAULT 1 NOT NULL,
    avatar character varying(255) DEFAULT '/img/users/default.png'::character varying NOT NULL,
    password character varying(255) DEFAULT NULL::character varying,
    secret_key character varying(255) DEFAULT NULL::character varying,
    active boolean DEFAULT false NOT NULL,
    lock smallint DEFAULT 0 NOT NULL,
    is_first_login boolean DEFAULT true NOT NULL
);


ALTER TABLE public.employee_basic_info OWNER TO gcc40;

--
-- TOC entry 222 (class 1259 OID 48926)
-- Name: employee_basic_info_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.employee_basic_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_basic_info_id_seq OWNER TO gcc40;

--
-- TOC entry 3972 (class 0 OID 0)
-- Dependencies: 222
-- Name: employee_basic_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.employee_basic_info_id_seq OWNED BY public.employee_basic_info.id;


--
-- TOC entry 231 (class 1259 OID 49000)
-- Name: employee_contacts_info; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.employee_contacts_info (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    p_email character varying(255) DEFAULT NULL::character varying,
    p_mobile character varying(255) DEFAULT NULL::character varying,
    p_telephone character varying(255) DEFAULT NULL::character varying,
    g_email character varying(255) NOT NULL,
    g_mobile character varying(255) NOT NULL,
    g_telephone character varying(255) NOT NULL
);


ALTER TABLE public.employee_contacts_info OWNER TO gcc40;

--
-- TOC entry 230 (class 1259 OID 48999)
-- Name: employee_contacts_info_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.employee_contacts_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_contacts_info_id_seq OWNER TO gcc40;

--
-- TOC entry 3973 (class 0 OID 0)
-- Dependencies: 230
-- Name: employee_contacts_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.employee_contacts_info_id_seq OWNED BY public.employee_contacts_info.id;


--
-- TOC entry 229 (class 1259 OID 48983)
-- Name: employee_education_info; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.employee_education_info (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    academic_degree smallint NOT NULL,
    unviersity character varying(255) NOT NULL,
    major character varying(255) NOT NULL,
    degree smallint NOT NULL,
    edu_start_date date NOT NULL,
    edu_end_date date NOT NULL
);


ALTER TABLE public.employee_education_info OWNER TO gcc40;

--
-- TOC entry 228 (class 1259 OID 48982)
-- Name: employee_education_info_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.employee_education_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_education_info_id_seq OWNER TO gcc40;

--
-- TOC entry 3974 (class 0 OID 0)
-- Dependencies: 228
-- Name: employee_education_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.employee_education_info_id_seq OWNED BY public.employee_education_info.id;


--
-- TOC entry 225 (class 1259 OID 48947)
-- Name: employee_job_info; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.employee_job_info (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    contract_type smallint NOT NULL,
    job_title integer NOT NULL,
    general_management integer NOT NULL,
    department integer NOT NULL,
    division integer NOT NULL,
    div integer NOT NULL,
    class integer NOT NULL,
    grade integer NOT NULL,
    job_start_date date NOT NULL,
    job_end_date date
);


ALTER TABLE public.employee_job_info OWNER TO gcc40;

--
-- TOC entry 224 (class 1259 OID 48946)
-- Name: employee_job_info_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.employee_job_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_job_info_id_seq OWNER TO gcc40;

--
-- TOC entry 3975 (class 0 OID 0)
-- Dependencies: 224
-- Name: employee_job_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.employee_job_info_id_seq OWNED BY public.employee_job_info.id;


--
-- TOC entry 252 (class 1259 OID 49236)
-- Name: employee_os; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.employee_os (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    os_id integer NOT NULL,
    role_id integer NOT NULL,
    is_delegate boolean DEFAULT false,
    start_date date NOT NULL,
    end_date date,
    job_id integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.employee_os OWNER TO gcc40;

--
-- TOC entry 251 (class 1259 OID 49235)
-- Name: employee_os_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.employee_os_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_os_id_seq OWNER TO gcc40;

--
-- TOC entry 3976 (class 0 OID 0)
-- Dependencies: 251
-- Name: employee_os_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.employee_os_id_seq OWNED BY public.employee_os.id;


--
-- TOC entry 265 (class 1259 OID 49375)
-- Name: job_assigment; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.job_assigment (
    id integer NOT NULL,
    employee_id integer,
    title character varying(255) DEFAULT NULL::character varying,
    mission_type integer,
    mission_supject character varying(255) DEFAULT NULL::character varying,
    mission_country character varying(255) DEFAULT NULL::character varying,
    mission_city character varying(255) DEFAULT NULL::character varying,
    hosted_type character varying(255) DEFAULT NULL::character varying,
    mission_start_date date,
    mission_end_date date,
    last_date date,
    mission_funded character varying(255) DEFAULT NULL::character varying,
    mission_status integer,
    short_description character varying(255) DEFAULT NULL::character varying,
    note character varying(255) DEFAULT NULL::character varying,
    create_user integer,
    create_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    approve_user integer,
    approve_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.job_assigment OWNER TO gcc40;

--
-- TOC entry 269 (class 1259 OID 49413)
-- Name: job_assigment_dep; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.job_assigment_dep (
    id integer NOT NULL,
    job_assigment_id integer,
    dep_id integer NOT NULL,
    emp_count integer,
    create_user integer NOT NULL,
    create_date timestamp(0) without time zone NOT NULL,
    approve_user integer,
    approve_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.job_assigment_dep OWNER TO gcc40;

--
-- TOC entry 268 (class 1259 OID 49412)
-- Name: job_assigment_dep_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.job_assigment_dep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_assigment_dep_id_seq OWNER TO gcc40;

--
-- TOC entry 3977 (class 0 OID 0)
-- Dependencies: 268
-- Name: job_assigment_dep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.job_assigment_dep_id_seq OWNED BY public.job_assigment_dep.id;


--
-- TOC entry 271 (class 1259 OID 49423)
-- Name: job_assigment_emp; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.job_assigment_emp (
    id integer NOT NULL,
    job_assigment_id integer,
    employee_id integer,
    dep_id integer,
    approval integer,
    approve_user integer,
    approve_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.job_assigment_emp OWNER TO gcc40;

--
-- TOC entry 270 (class 1259 OID 49422)
-- Name: job_assigment_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.job_assigment_emp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_assigment_emp_id_seq OWNER TO gcc40;

--
-- TOC entry 3978 (class 0 OID 0)
-- Dependencies: 270
-- Name: job_assigment_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.job_assigment_emp_id_seq OWNED BY public.job_assigment_emp.id;


--
-- TOC entry 264 (class 1259 OID 49374)
-- Name: job_assigment_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.job_assigment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_assigment_id_seq OWNER TO gcc40;

--
-- TOC entry 3979 (class 0 OID 0)
-- Dependencies: 264
-- Name: job_assigment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.job_assigment_id_seq OWNED BY public.job_assigment.id;


--
-- TOC entry 260 (class 1259 OID 49322)
-- Name: jobs; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    job_title character varying(255) DEFAULT NULL::character varying,
    job_title_e character varying(255) DEFAULT NULL::character varying,
    job_desc character varying(255) DEFAULT NULL::character varying,
    org_job character varying(255) DEFAULT NULL::character varying,
    is_sup boolean DEFAULT false NOT NULL
);


ALTER TABLE public.jobs OWNER TO gcc40;

--
-- TOC entry 259 (class 1259 OID 49321)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO gcc40;

--
-- TOC entry 3980 (class 0 OID 0)
-- Dependencies: 259
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 240 (class 1259 OID 49132)
-- Name: leave; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.leave (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    leave_type integer NOT NULL,
    leave_dir character varying(255) DEFAULT NULL::character varying,
    leave_date date NOT NULL,
    leave_start character varying(255) NOT NULL,
    leave_end character varying(255) NOT NULL,
    leave_minit character varying(255) DEFAULT NULL::character varying,
    need_car smallint DEFAULT 0 NOT NULL,
    leave_not character varying(255) DEFAULT NULL::character varying,
    leave_status integer NOT NULL,
    created_by integer,
    created_at date,
    updated_by integer,
    updated_at date,
    approve_user integer,
    approve_date timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.leave OWNER TO gcc40;

--
-- TOC entry 239 (class 1259 OID 49131)
-- Name: leave_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.leave_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.leave_id_seq OWNER TO gcc40;

--
-- TOC entry 3981 (class 0 OID 0)
-- Dependencies: 239
-- Name: leave_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.leave_id_seq OWNED BY public.leave.id;


--
-- TOC entry 275 (class 1259 OID 49448)
-- Name: memo; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.memo (
    memo_id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    memo_status smallint NOT NULL,
    memo_type smallint NOT NULL,
    sender_os_id integer NOT NULL,
    sender_id integer NOT NULL,
    employee_os_id integer NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE public.memo OWNER TO gcc40;

--
-- TOC entry 3982 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN memo.created_at; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.memo.created_at IS '(DC2Type:datetime_immutable)';


--
-- TOC entry 277 (class 1259 OID 49464)
-- Name: memo_attachment; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.memo_attachment (
    memo_attachment_id integer NOT NULL,
    memo_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    file_type character varying(255) NOT NULL,
    file_size character varying(255) NOT NULL,
    file_data character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.memo_attachment OWNER TO gcc40;

--
-- TOC entry 3983 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN memo_attachment.created_at; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.memo_attachment.created_at IS '(DC2Type:datetime_immutable)';


--
-- TOC entry 276 (class 1259 OID 49463)
-- Name: memo_attachment_memo_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.memo_attachment_memo_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.memo_attachment_memo_attachment_id_seq OWNER TO gcc40;

--
-- TOC entry 3984 (class 0 OID 0)
-- Dependencies: 276
-- Name: memo_attachment_memo_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.memo_attachment_memo_attachment_id_seq OWNED BY public.memo_attachment.memo_attachment_id;


--
-- TOC entry 279 (class 1259 OID 49478)
-- Name: memo_comments; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.memo_comments (
    comment_id integer NOT NULL,
    memo_id integer NOT NULL,
    comment_text character varying(255) NOT NULL,
    sender_id integer NOT NULL,
    sender_os_id integer NOT NULL,
    employee_os_id integer NOT NULL,
    created_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.memo_comments OWNER TO gcc40;

--
-- TOC entry 3985 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN memo_comments.created_at; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.memo_comments.created_at IS '(DC2Type:datetime_immutable)';


--
-- TOC entry 278 (class 1259 OID 49477)
-- Name: memo_comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.memo_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.memo_comments_comment_id_seq OWNER TO gcc40;

--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 278
-- Name: memo_comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.memo_comments_comment_id_seq OWNED BY public.memo_comments.comment_id;


--
-- TOC entry 274 (class 1259 OID 49447)
-- Name: memo_memo_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.memo_memo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.memo_memo_id_seq OWNER TO gcc40;

--
-- TOC entry 3987 (class 0 OID 0)
-- Dependencies: 274
-- Name: memo_memo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.memo_memo_id_seq OWNED BY public.memo.memo_id;


--
-- TOC entry 281 (class 1259 OID 49491)
-- Name: memo_recipient; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.memo_recipient (
    memo_recipient_id integer NOT NULL,
    memo_id character varying(255) NOT NULL,
    sender_os_id integer NOT NULL,
    sender_id integer NOT NULL,
    recipient_os_id integer NOT NULL,
    recipient_id integer NOT NULL,
    memo_recipient_status smallint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.memo_recipient OWNER TO gcc40;

--
-- TOC entry 3988 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN memo_recipient.created_at; Type: COMMENT; Schema: public; Owner: gcc40
--

COMMENT ON COLUMN public.memo_recipient.created_at IS '(DC2Type:datetime_immutable)';


--
-- TOC entry 280 (class 1259 OID 49490)
-- Name: memo_recipient_memo_recipient_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.memo_recipient_memo_recipient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.memo_recipient_memo_recipient_id_seq OWNER TO gcc40;

--
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 280
-- Name: memo_recipient_memo_recipient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.memo_recipient_memo_recipient_id_seq OWNED BY public.memo_recipient.memo_recipient_id;


--
-- TOC entry 256 (class 1259 OID 49275)
-- Name: menu_items; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.menu_items (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    permission_id integer,
    title character varying(255) NOT NULL,
    icon_class character varying(255) DEFAULT NULL::character varying,
    color character varying(255) DEFAULT NULL::character varying,
    parent_id integer DEFAULT 0,
    order_no integer NOT NULL,
    parameters character varying(255) DEFAULT NULL::character varying,
    url character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.menu_items OWNER TO gcc40;

--
-- TOC entry 255 (class 1259 OID 49274)
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.menu_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menu_items_id_seq OWNER TO gcc40;

--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 255
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- TOC entry 254 (class 1259 OID 49264)
-- Name: menus; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.menus (
    id integer NOT NULL,
    menu_name character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.menus OWNER TO gcc40;

--
-- TOC entry 253 (class 1259 OID 49263)
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menus_id_seq OWNER TO gcc40;

--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 253
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- TOC entry 221 (class 1259 OID 48919)
-- Name: os; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.os (
    id integer NOT NULL,
    parent_id integer NOT NULL,
    node_level integer NOT NULL,
    dept_type integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    status boolean DEFAULT true NOT NULL
);


ALTER TABLE public.os OWNER TO gcc40;

--
-- TOC entry 220 (class 1259 OID 48904)
-- Name: permission_role; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.permission_role (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.permission_role OWNER TO gcc40;

--
-- TOC entry 217 (class 1259 OID 48882)
-- Name: permissions; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.permissions (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    group_name character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.permissions OWNER TO gcc40;

--
-- TOC entry 216 (class 1259 OID 48881)
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permissions_id_seq OWNER TO gcc40;

--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 216
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- TOC entry 219 (class 1259 OID 48893)
-- Name: roles; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status integer DEFAULT 0
);


ALTER TABLE public.roles OWNER TO gcc40;

--
-- TOC entry 218 (class 1259 OID 48892)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO gcc40;

--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 218
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 234 (class 1259 OID 49095)
-- Name: vacation_setting; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.vacation_setting (
    id integer NOT NULL,
    vacation_type integer NOT NULL,
    contract_type integer NOT NULL,
    from_age integer NOT NULL,
    to_age integer NOT NULL,
    from_service_years integer NOT NULL,
    to_service_years integer NOT NULL,
    vac_days integer NOT NULL,
    max_days integer NOT NULL,
    max_move_days integer NOT NULL,
    seq integer NOT NULL,
    vac_years integer NOT NULL
);


ALTER TABLE public.vacation_setting OWNER TO gcc40;

--
-- TOC entry 233 (class 1259 OID 49094)
-- Name: vacation_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.vacation_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vacation_setting_id_seq OWNER TO gcc40;

--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 233
-- Name: vacation_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.vacation_setting_id_seq OWNED BY public.vacation_setting.id;


--
-- TOC entry 263 (class 1259 OID 49350)
-- Name: vacation_type; Type: TABLE; Schema: public; Owner: gcc40
--

CREATE TABLE public.vacation_type (
    id integer NOT NULL,
    vacation_name character varying(255) NOT NULL,
    vacation_symbol character varying(255) DEFAULT NULL::character varying,
    vac_in_sal character varying(255) DEFAULT NULL::character varying,
    user_id character varying(255) DEFAULT NULL::character varying,
    time_stamp date,
    vac_name_e character varying(255) DEFAULT NULL::character varying,
    note character varying(255) DEFAULT NULL::character varying,
    vac_type character varying(255) DEFAULT NULL::character varying,
    vac_days integer,
    show_slip character varying(255) DEFAULT NULL::character varying,
    add_holiday character varying(255) DEFAULT NULL::character varying,
    religion character varying(255) DEFAULT NULL::character varying,
    from_year character varying(255) DEFAULT NULL::character varying,
    to_year integer,
    percent_vac character varying(255) DEFAULT NULL::character varying,
    without_sal_vac_process_way integer,
    gender character varying(255) DEFAULT NULL::character varying,
    selected character varying(255) DEFAULT NULL::character varying,
    vacation_symbol_e character varying(255) DEFAULT NULL::character varying,
    show_on_in_out_sheet integer,
    vac_years integer,
    show_on_portal integer
);


ALTER TABLE public.vacation_type OWNER TO gcc40;

--
-- TOC entry 262 (class 1259 OID 49349)
-- Name: vacation_type_id_seq; Type: SEQUENCE; Schema: public; Owner: gcc40
--

CREATE SEQUENCE public.vacation_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vacation_type_id_seq OWNER TO gcc40;

--
-- TOC entry 3995 (class 0 OID 0)
-- Dependencies: 262
-- Name: vacation_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gcc40
--

ALTER SEQUENCE public.vacation_type_id_seq OWNED BY public.vacation_type.id;


--
-- TOC entry 3548 (class 2604 OID 49436)
-- Name: attendance id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance ALTER COLUMN id SET DEFAULT nextval('public.attendance_id_seq'::regclass);


--
-- TOC entry 3485 (class 2604 OID 49218)
-- Name: attendance_agreement_employee_actions id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreement_employee_actions ALTER COLUMN id SET DEFAULT nextval('public.attendance_agreement_employee_actions_id_seq'::regclass);


--
-- TOC entry 3483 (class 2604 OID 49190)
-- Name: attendance_agreements id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements ALTER COLUMN id SET DEFAULT nextval('public.attendance_agreements_id_seq'::regclass);


--
-- TOC entry 3484 (class 2604 OID 49201)
-- Name: attendance_agreements_details id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements_details ALTER COLUMN id SET DEFAULT nextval('public.attendance_agreements_details_id_seq'::regclass);


--
-- TOC entry 3480 (class 2604 OID 49179)
-- Name: attendance_check_in_out id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_check_in_out ALTER COLUMN id SET DEFAULT nextval('public.attendance_check_in_out_id_seq'::regclass);


--
-- TOC entry 3543 (class 2604 OID 49407)
-- Name: crediting id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.crediting ALTER COLUMN id SET DEFAULT nextval('public.crediting_id_seq'::regclass);


--
-- TOC entry 3464 (class 2604 OID 49107)
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- TOC entry 3467 (class 2604 OID 49120)
-- Name: emp_vac_balance id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vac_balance ALTER COLUMN id SET DEFAULT nextval('public.emp_vac_balance_id_seq'::regclass);


--
-- TOC entry 3474 (class 2604 OID 49157)
-- Name: emp_vacation id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vacation ALTER COLUMN id SET DEFAULT nextval('public.emp_vacation_id_seq'::regclass);


--
-- TOC entry 3391 (class 2604 OID 48967)
-- Name: employee_addresses_info id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_addresses_info ALTER COLUMN id SET DEFAULT nextval('public.employee_addresses_info_id_seq'::regclass);


--
-- TOC entry 3382 (class 2604 OID 48930)
-- Name: employee_basic_info id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_basic_info ALTER COLUMN id SET DEFAULT nextval('public.employee_basic_info_id_seq'::regclass);


--
-- TOC entry 3393 (class 2604 OID 49003)
-- Name: employee_contacts_info id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_contacts_info ALTER COLUMN id SET DEFAULT nextval('public.employee_contacts_info_id_seq'::regclass);


--
-- TOC entry 3392 (class 2604 OID 48986)
-- Name: employee_education_info id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_education_info ALTER COLUMN id SET DEFAULT nextval('public.employee_education_info_id_seq'::regclass);


--
-- TOC entry 3390 (class 2604 OID 48950)
-- Name: employee_job_info id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_job_info ALTER COLUMN id SET DEFAULT nextval('public.employee_job_info_id_seq'::regclass);


--
-- TOC entry 3486 (class 2604 OID 49239)
-- Name: employee_os id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os ALTER COLUMN id SET DEFAULT nextval('public.employee_os_id_seq'::regclass);


--
-- TOC entry 3532 (class 2604 OID 49378)
-- Name: job_assigment id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment ALTER COLUMN id SET DEFAULT nextval('public.job_assigment_id_seq'::regclass);


--
-- TOC entry 3544 (class 2604 OID 49416)
-- Name: job_assigment_dep id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment_dep ALTER COLUMN id SET DEFAULT nextval('public.job_assigment_dep_id_seq'::regclass);


--
-- TOC entry 3546 (class 2604 OID 49426)
-- Name: job_assigment_emp id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment_emp ALTER COLUMN id SET DEFAULT nextval('public.job_assigment_emp_id_seq'::regclass);


--
-- TOC entry 3505 (class 2604 OID 49325)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3468 (class 2604 OID 49135)
-- Name: leave id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.leave ALTER COLUMN id SET DEFAULT nextval('public.leave_id_seq'::regclass);


--
-- TOC entry 3549 (class 2604 OID 49451)
-- Name: memo memo_id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo ALTER COLUMN memo_id SET DEFAULT nextval('public.memo_memo_id_seq'::regclass);


--
-- TOC entry 3551 (class 2604 OID 49467)
-- Name: memo_attachment memo_attachment_id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_attachment ALTER COLUMN memo_attachment_id SET DEFAULT nextval('public.memo_attachment_memo_attachment_id_seq'::regclass);


--
-- TOC entry 3552 (class 2604 OID 49481)
-- Name: memo_comments comment_id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.memo_comments_comment_id_seq'::regclass);


--
-- TOC entry 3553 (class 2604 OID 49494)
-- Name: memo_recipient memo_recipient_id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_recipient ALTER COLUMN memo_recipient_id SET DEFAULT nextval('public.memo_recipient_memo_recipient_id_seq'::regclass);


--
-- TOC entry 3490 (class 2604 OID 49278)
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- TOC entry 3489 (class 2604 OID 49267)
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- TOC entry 3377 (class 2604 OID 48885)
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- TOC entry 3378 (class 2604 OID 48896)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3463 (class 2604 OID 49098)
-- Name: vacation_setting id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.vacation_setting ALTER COLUMN id SET DEFAULT nextval('public.vacation_setting_id_seq'::regclass);


--
-- TOC entry 3517 (class 2604 OID 49353)
-- Name: vacation_type id; Type: DEFAULT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.vacation_type ALTER COLUMN id SET DEFAULT nextval('public.vacation_type_id_seq'::regclass);


--
-- TOC entry 3903 (class 0 OID 49021)
-- Dependencies: 232
-- Data for Name: att_emp; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.att_emp (emp_id, emp_a_name, emp_l_name, badge_no, start_work_date, real_work_date, end_work_date, ag_no, id_number, country_no, city_no, address, place_birth, date_birth, home_phone, pel_phone, emergency_phone, email, gender, m_status, bank_no, bank_account, t_id, punch, emp_status, licence_no, blood_group, emergency_person, user_no, time_stamp, image, religion, numberofchildren, houserent, nstudent, ndependants, spousesname, spouseid, spousedateofbirth, street, salary_type, have_step, taxable, spouse_work, residence, branch_no, manula_tax, manual_tax, dept_no, show_attendance_rep, build_house, request_no, code_acc, file_no, bank_co, sal_cat_allowances, contract_id, has_ins_yn, has_injury_yn, prof_practicing, end_contract_date, stud_approve, stud_approve_till_date, member_id, village_name, show_absence_rep, dept_tree, bank_branch_no, emp_image, phone_ext, prev_lates, job_code, iban_no) FROM stdin;
143	اسامة سمير يعقوب عبده	\N	000143	2011-05-02	\N	\N	1	850461286	1	102	نابلس	1102	1981-05-04	\N	0599034962	\N	Osama_abdh_1988@hotmail	1	2	13	1177459	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	092531962	\N	\N	LS045711774590993000000
145	خالد صبحي محمد عابد	\N	000145	2013-05-02	\N	2018-08-19	1	854792413	1	102	قبلان نابلس	1102	1993-04-21	\N	0502016340	\N	\N	1	1	9	2131938	1008	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	ps28bjor005050353032131938001
165679	توفيق عبدالله توفيق حامد	\N	165679	2016-03-29	\N	\N	1	853005866	\N	\N	\N	\N	1990-07-12	022890208	0599032449	\N	tawfiq9009@gmail.com	1	2	6	\N	1001	\N	8	\N	\N	\N	81601	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	255	\N	\N	\N
165674	ميس المنتصر محمود ماضي	\N	165674	2016-03-29	\N	\N	1	851985176	\N	\N	\N	\N	1990-06-24	\N	0598553613	\N	mmadi@mtit.gov.ps	2	1	6	9090/497453/570	1001	\N	1	\N	\N	\N	163679	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	325	\N	\N	\N
165673	فاطمة عبداللطيف احمد ضميدي	\N	165673	2016-03-29	\N	\N	1	852377217	\N	\N	\N	\N	1990-01-19	\N	\N	\N	\N	2	2	12	660002822137	1001	\N	1	\N	\N	\N	163679	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
165675	زكي شفيع زكي زبدة	\N	165675	2016-03-29	\N	\N	1	854433455	\N	\N	\N	\N	1993-06-05	\N	\N	\N	\N	1	1	2	1037279	1003	\N	1	\N	\N	\N	163679	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\\x	\N	\N	\N	\N
165678	محمد أحمد مؤيد قناديلو	\N	165678	2016-03-29	\N	\N	1	410649859	\N	\N	\N	\N	1990-09-17	0599649225	0562504642	\N	mqanadelo@mtit.gov.ps	1	1	9	2137502	1001	\N	1	\N	\N	\N	163679	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	234	\N	\N	\N
165677	دينا بلال  زيدان حطاب	\N	165677	2016-03-29	\N	\N	1	855028676	\N	\N	\N	\N	1993-05-04	0595434340	0562504601	\N	Dkhatab@mtit.gov.ps	2	1	13	1230040	1001	\N	1	\N	\N	\N	163679	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\\x	503	\N	\N	\N
165676	رامي سليم غازي هديهد	\N	165676	2016-03-29	\N	\N	1	850303363	\N	\N	\N	\N	1988-02-05	\N	\N	\N	\N	1	1	13	2216603	1001	\N	1	\N	\N	\N	163679	2016-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
60506	منير فائق رفيق دويكات	\N	060506	1994-08-03	1995-08-03	\N	1	947538385	\N	\N	\N	\N	1968-02-28	\N	\N	\N	\N	1	2	\N	\N	1001	\N	9	\N	\N	\N	98	2016-08-29	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
150	حبيب يوسف محمد عيسى	\N	000150	2016-06-14	\N	2017-10-30	1	852435304	\N	\N	\N	\N	1990-10-29	\N	\N	\N	\N	1	1	1	1725738	1003	\N	8	\N	\N	\N	163679	2016-08-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	2	2	2	2	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
83525	مؤيد يوسف محمد دراوشة	\N	083525	2014-02-01	\N	\N	1	901894022	\N	\N	\N	\N	1976-03-09	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	98	2016-10-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
151	عميد محمد عبداللطيف شتيه	\N	000151	2016-02-01	\N	2017-10-05	1	859676967	\N	\N	\N	\N	1995-02-06	\N	\N	\N	\N	1	1	6	9340149243	\N	\N	3	\N	\N	\N	163679	2016-10-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
84003	مراد رفيق محمد نصار (مراقب)	\N	084003	2016-10-27	\N	\N	1	944064450	\N	\N	\N	\N	1981-02-23	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	98	2016-10-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
80151	اسامة فوزي منير عابد	\N	080151	2001-08-26	\N	\N	1	963027784	\N	\N	\N	\N	1969-12-18	\N	0562500011	\N	osabed@gmail.com	1	2	6	649776	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	292	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
153	احمد محمود أحمد جبري صباح	\N	000153	2016-11-01	\N	\N	1	860143999	1	102	نابلس	\N	1995-04-29	\N	\N	\N	\N	1	1	2	3234948	1007	\N	3	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS51AISB030321010603234948001
155	عنان محمد سمير عامر عرقان	\N	000155	2016-11-01	\N	2018-03-20	1	854739430	1	104	الخليل	1103	1994-03-11	\N	0592088855	\N	Annan_19994@hotmail.com	1	1	17	208146	1006	\N	3	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS90JONB084502081460030021000
157	اسماعيل ياسرعبيدالله ابوزهرة	\N	000157	2016-11-16	\N	\N	1	403182215	1	104	يطا	1104	1997-12-14	\N	0568183873	\N	iabuzahra0@gmail.com	1	1	13	643406	1006	\N	8	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS59PALS047206434060993000000
158	محمد يوسف سعيد طه	\N	000158	2016-11-01	\N	2017-09-25	1	853897726	\N	\N	\N	\N	1991-06-20	\N	\N	\N	\N	1	1	\N	\N	1009	\N	8	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
163	توفيق زهير توفيق أبوعجاق	\N	000163	2016-11-16	\N	2017-06-04	1	411722291	\N	\N	\N	\N	1993-01-25	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	163679	2016-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
184816	اسماء اسامه عبدالله خطيب	\N	184816	2022-12-29	\N	\N	1	401474531	\N	\N	\N	\N	1996-04-12	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
92	سليمان محمد سليمان صالح	\N	000092	2008-12-10	\N	2017-03-29	1	932041833	\N	\N	\N	\N	1960-02-03	\N	\N	\N	\N	1	2	11	54582	1001	\N	8	\N	\N	\N	1	2016-04-13	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
93	قتيبة طاهر زهدي عبدالمجيد	\N	000093	2008-12-14	\N	2020-03-30	1	852489038	1	101	عابود	1104	1990-08-15	\N	\N	\N	\N	1	1	6	185226	1004	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	PS87ARAB000000009030185226570
184819	روعة محمد مطر ردايده	\N	184819	2022-12-29	\N	\N	1	851012732	\N	\N	\N	\N	1993-01-31	\N	\N	\N	\N	2	1	\N	8119995	1001	\N	1	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS29AISB080320110308119995001
95	اسماعيل محمد علي فودة	\N	000095	2009-06-24	\N	\N	1	983795584	1	101	رام الله - عين سينيا	1101	1962-03-15	\N	\N	\N	\N	1	2	6	669437	1004	\N	4	9819992	\N	\N	1	2016-04-13	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS05ARAB000000009490669437570
185060	أحمد حسن محمد أبوديه	\N	185060	2022-12-29	\N	\N	1	972689814	1	102	نابلس	1102	1982-03-13	092321517	0599864912	\N	\N	1	2	12	356872	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	Y	\N	0	\N	\N	\N	Y	\N	13	\\x	\N	\N	\N	PS52CAAB080100000660000802174
97	حمدي يوسف خليل قنداح	\N	000097	2012-01-22	\N	\N	1	904590049	1	101	رام الله -ابوشخيدم	1101	1978-05-30	\N	\N	\N	\N	1	2	13	1226874	1003	\N	3	743077	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS37PALS045812268740993000000
184809	لانا عاهد أحمد صدقه	\N	184809	2022-12-29	\N	\N	1	401850097	\N	\N	\N	\N	1995-02-22	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
184791	أكرم توفيق يوسف عاقلة	\N	184791	2022-12-29	\N	\N	1	854590692	1	101	رام الله-عبوين	1101	1993-12-01	0598713958	0598713958	لا يوجد	akramaqleh3@gmail.com	1	1	6	68766	1001	\N	1	087533	A+	لا يوجد	163679	2018-02-19	\N	1	0	0	0	0	\N	\N	\N	لا يوجد	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	ps90arab000000009030068766570
101	احمد ربحي أحمد خليل	\N	000101	2013-05-03	\N	\N	1	905006391	1	106	بيت ليد - طولكرم	1102	1978-01-25	\N	\N	\N	\N	1	2	1	1025747	1001	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	ps05aisb010320110301525747001
184830	الهام عبدالرحمن محمد الدباكي	\N	184830	2022-12-29	\N	\N	1	800474686	1	101	رام الله	1111	1985-02-27	\N	0599445358	\N	heqd-elsinean@hotmail.com	2	2	13	1131533	1001	\N	1	\N	\N	\N	163679	2018-01-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	ps70pals045511315330993000000
185017	عبدالله خليل موسى شريتح	\N	185017	2023-01-05	\N	\N	1	407242528	1	101	المزرعه القبلية	1	1991-03-21	\N	\N	\N	\N	1	1	11	23577	1001	\N	1	783157	\N	\N	163679	2017-01-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS50HBHO040600235770423100000
68376	علان غازي علان صلاح الدين	\N	068376	2000-04-01	\N	\N	1	901121673	\N	\N	\N	\N	1976-07-09	\N	\N	\N	allanghazi@gmail.com	1	2	6	634214	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N
185004	شريف وجيه عبدالرحيم هلال	\N	185004	2022-12-29	\N	\N	1	859980732	\N	\N	\N	\N	1995-02-09	\N	\N	\N	\N	1	1	13	421363	1010	\N	1	\N	\N	\N	163679	2019-04-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS45PALS046604213630993000000
185019	محمد حسن سليمان دراغمة	\N	185019	2023-01-03	\N	\N	1	850286303	1	114	طوباس	1102	1988-07-07	\N	0562500248	\N	\N	1	1	13	461156	1008	\N	1	9370394	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS59PALS046804611560993000000
185014	كريمان محمد عبدالفتاح ابوعسل	\N	185014	2022-12-29	\N	\N	1	850545898	1	106	عنبتا- طولكرم	1102	1987-06-29	\N	0599638747	\N	Karmankhalel@outiook.sa	2	2	15	250975	1007	\N	1	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS67ALDN020202509750420017000
592	مصطفى عبدالفتاح محمد زبيدي	\N	000592	2023-01-19	\N	\N	1	907222913	\N	\N	\N	\N	1982-04-11	\N	\N	\N	\N	1	1	\N	\N	1003	\N	8	\N	\N	\N	469	2023-01-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
593	رامي نادر عبدمسك	\N	000593	2023-01-19	\N	\N	1	854747730	\N	\N	\N	\N	1995-05-01	\N	\N	\N	\N	1	1	\N	\N	1003	\N	8	\N	\N	\N	469	2023-01-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
110	معاذ يوسف عودة الترك	\N	000110	2015-12-06	\N	\N	1	403166200	1	108	كفر الديك - سلفيت	1102	1997-12-19	\N	0592628882	\N	\N	1	1	9	2920460	1001	\N	9	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps04bjor005170353032920460001
597	عبير حاتم نصار نعامنة	\N	000597	2023-01-17	\N	\N	1	949586325	\N	\N	\N	\N	1986-06-26	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2023-01-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
184552	عبدالرحمن محمود محمد عطاطرة	\N	184552	2022-12-20	\N	\N	1	858550122	\N	\N	\N	\N	1994-05-27	\N	0562500289	\N	aatatri@mtit.gov.ps	1	1	\N	609038	1001	\N	1	\N	\N	\N	167865	2020-08-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	331	\N	\N	PS35PALS047106090380993000000
185097	فاتنة خليل عبدالعال رمضان	\N	185097	2022-12-29	\N	\N	1	850928045	1	101	القدس - بيت عنان	1103	1986-08-14	\N	\N	\N	\N	2	2	6	183923	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	PS60ARAB000000009030183923570
185064	محمد ابراهيم محمد زيود	\N	185064	2022-12-29	\N	\N	1	941455685	1	107	جنين- سيلة الحارثية	1107	1989-12-05	\N	0599970336	\N	\N	1	1	1	1610864	1013	\N	1	\N	\N	\N	163679	2016-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS13PIBC084216108640033101000
185049	باسل طارق عبدالقادر جعفر	\N	185049	2022-12-29	\N	\N	1	401123377	\N	\N	\N	\N	1996-05-21	\N	\N	\N	\N	1	1	\N	346616	1011	\N	1	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS14ARAB000000009250346616570
185051	عيسى محمد عيسى عليان	\N	185051	2022-12-29	\N	\N	1	401025218	1	103	القدس-ابوديس	1103	1996-03-20	\N	\N	\N	\N	1	1	13	505694	1014	\N	1	\N	\N	\N	163679	2016-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	13	\N	\N	\N	\N	PS79PALS047005056940993100000
184568	احمد عبدالكريم عبدالفتاح شماسنة	\N	184568	2022-12-20	\N	\N	1	937156594	1	105	جيوس - قلقيلية	1105	1986-07-12	\N	0595517634	\N	\N	1	2	12	21012627	1010	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	ps80caab08000000660002770601
185047	رماء محمد فارس بظ	\N	185047	2022-12-29	\N	\N	1	851989152	\N	\N	\N	\N	1988-07-09	\N	\N	\N	\N	2	1	\N	780000595425	1008	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS20SAFAK010300000780000595425
120	عبدالقادر محمد سعيد  درويش	\N	000120	2011-05-01	\N	\N	1	854345659	1	106	طولكرم-محنه	1106	1993-02-03	\N	\N	\N	\N	1	1	12	538289	1007	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS64CAAB080600000660000925055
185005	شهد محمود جميل دراغمة	\N	185005	2023-01-05	\N	\N	1	405585027	\N	\N	\N	\N	2000-02-23	\N	\N	\N	\N	2	1	\N	\N	1012	\N	1	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185065	علا زياد راشد مشاقي	\N	185065	2023-01-05	\N	\N	1	850138116	\N	\N	\N	\N	1993-01-29	\N	0562504968	\N	omashaqe@mtit.gov.ps	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
130	ماهر حسن ادريس عوينات	\N	000130	2004-04-01	\N	2018-09-10	1	961250446	1	105	قلقيليه	1105	1958-09-10	092942115	\N	\N	\N	1	2	13	402652	1010	\N	4	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS07PALS046604026520993000000
132	محمود حسين حمد مصلح	\N	000132	2004-12-15	\N	2016-01-17	1	946503679	\N	\N	\N	\N	1985-01-25	\N	\N	\N	\N	1	1	12	305707890	\N	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	5	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45	أحمد محمد راشد كميل	\N	000045	2013-05-09	\N	2021-05-31	1	853801926	1	107	قباطيه جنين	1107	1991-01-11	\N	\N	\N	\N	1	1	13	1367215	1013	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	N	N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
46	أسامة غالب عبداللطيف جيتاوي	\N	000046	2013-05-10	\N	\N	1	852418771	1	107	فقوعه_جينين	1107	1990-03-04	\N	\N	\N	\N	1	1	13	2351774	1013	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	ps32pals044923517740993000000
49	هاني سامي محمد تلي	\N	000049	2015-11-01	\N	2018-10-21	1	850225384	1	107	جنين	1107	1988-08-02	\N	\N	\N	\N	1	1	15	801545	1013	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	N	\N	7	\N	\N	\N	\N	PS50ALDN047308015450420017000
52	زيد شاكر مصطفى غانم	\N	000052	2015-12-06	\N	\N	1	853078541	\N	\N	\N	\N	1989-09-27	\N	\N	\N	\N	1	1	15	162599	\N	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
54	صدام محمود سالم ابوسالم	\N	000054	2011-05-15	\N	\N	1	853090165	1	101	ابوشخيدم -رام الله	1101	1990-08-28	\N	0599640394	\N	\N	1	1	6	258979	1001	\N	8	742841	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	PS53ARAB000000009230258979570
56	معتصم محمود حسن قنداح	\N	000056	2012-01-21	\N	\N	1	858583081	1	101	ابوشخيدم-رام الله	2	1991-02-14	\N	0598688506	\N	\N	1	1	13	237269	1001	\N	8	743700	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS40PALS045802372690993000000
60	محمد بكر محمد شيحة	\N	000060	2013-05-06	\N	2016-12-31	1	992535989	\N	\N	\N	\N	1987-08-27	\N	\N	\N	\N	1	1	6	474584	1001	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
62	وفاء صالح محمد حمايل	\N	000062	2014-03-06	\N	\N	1	851276535	1	101	المصيون-رام الله	1103	1990-04-03	\N	\N	\N	\N	2	1	6	290374	1001	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS06ARAB000000009090290374570
63	أسامه كمال أحمد ياسين غنام	\N	000063	2014-11-05	\N	2018-07-01	1	402377485	1	102	\N	1102	1997-09-02	\N	\N	\N	\N	1	1	13	247471	1003	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	N	\N	1	\N	\N	\N	\N	PS53PALS045802474710993000000
66	مأمون عمر عثمان غانم	\N	000066	2016-04-13	\N	\N	1	80776149	\N	\N	\N	\N	1955-09-20	\N	\N	\N	\N	1	2	5	8027724	\N	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	PS30PALS0470058007760993000000
68	حسام توفيق حسين مصلح	\N	000068	2002-01-12	\N	\N	1	901158220	1	101	رام الله نعلين	1101	1974-06-01	\N	\N	\N	\N	1	2	12	301276020	1004	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS33CAAB080200000660001868799
69	رجا محمد اسماعيل العموري	\N	000069	2002-09-15	\N	\N	1	996456570	1	101	بيت ريما - رام الله	1101	1963-08-15	022860310	\N	\N	\N	1	2	6	6386830570	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
71	وليد عمران عبدالله حسن	\N	000071	2020-06-23	\N	\N	1	916629090	\N	\N	\N	\N	1983-06-24	\N	\N	\N	\N	1	1	6	262963	1014	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
22204	نوفل حسن ابراهيم المبيض	\N	022204	1996-12-01	\N	\N	1	927046136	1	111	قطاع غزة	\N	1949-01-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
77	محمد رامي حسان شعبان نافع	\N	000077	2008-10-19	\N	\N	1	904013562	1	101	نعلين-رام الله	1101	1979-01-21	\N	\N	\N	\N	1	2	3	23901	1004	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS90JONB084300239010030021000
81	صالح موسى ابراهيم عواودة	\N	000081	2009-12-06	\N	\N	1	852488121	1	101	دير دبوان رام الله	1101	1990-04-11	022896345	0562504797	\N	abu_mousa_90@yahoo.com	1	1	13	241542	1004	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS21PALS045802415420993000000
82	عبدالرؤوف زياد فايز شوخة	\N	000082	2009-12-08	\N	\N	1	853888816	1	101	رمون-رام الله	1101	1991-08-11	\N	\N	\N	\N	1	1	13	241559	1004	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS34PALS045802415590993000000
84	عيد ابراهيم محمود أبوناصر	\N	000084	2011-06-01	\N	\N	1	902909431	1	101	رام الله - قلنديا	1101	1978-09-03	\N	\N	\N	\N	1	2	6	254239	1004	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS32ARAB000000009230254239170
86	رمزي هاني عبدالجليل دلاش	\N	000086	2012-02-05	\N	2018-04-16	1	910906551	1	101	رام الله - جيفنا	1101	1985-11-10	\N	\N	\N	\N	1	2	13	2205790	1004	\N	11	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS48PALS045822057900993000000
87	فادي نزال عبدالكريم سلامة	\N	000087	2013-11-20	\N	\N	1	853035251	\N	\N	\N	\N	1990-01-14	\N	\N	\N	\N	1	1	13	1209207	\N	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	4	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N
88	احمد عبدالرازق دردساوي	\N	000088	2007-01-23	\N	\N	1	850354077	1	113	البيرة	1101	1988-09-18	\N	\N	\N	\N	1	1	6	182597	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	PS39ARAB000000009030182597570
89	محمود عبدالعزيز دار حسن	\N	000089	2007-09-12	2021-06-04	\N	1	923545859	1	107	عابود	1107	1961-06-04	\N	\N	\N	\N	1	2	6	604061	1001	\N	4	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS94ARAB000000009230604061570
90	محمد خير جمعة مسعود عبدالوهاب	\N	000090	2007-09-18	\N	2020-06-09	1	940073653	1	101	رام الله-بيت اكسا	1101	1965-12-06	\N	\N	\N	\N	1	2	12	131658	1001	\N	13	9978655	\N	\N	1	2016-04-13	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	PS20CAAB080200000660001871943
184212	حسام رائد محمود سمارة	\N	184212	2022-11-03	\N	\N	1	853593432	1	107	جنين-اليامون	1107	1996-10-27	\N	\N	\N	\N	1	1	13	2352623	1013	\N	1	\N	\N	\N	163679	2018-02-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	8	\\x	\N	\N	\N	ps65pals044923526230993000000
590	اسيل مراد عبدالكريم احمد	\N	000590	2022-12-18	\N	\N	1	405003534	\N	\N	\N	\N	1999-05-29	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-12-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
591	وصال عدنان محمد صالح	\N	000591	2022-12-18	\N	\N	1	850837907	\N	\N	\N	\N	1991-02-12	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-12-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
184514	ضياء عدنان أحمد السيد	\N	184514	2022-12-04	\N	\N	1	853948248	1	104	الخليل	1104	1993-11-14	\N	\N	\N	\N	1	1	13	2300732	1006	\N	1	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS26PALS044723007320993000000
4	محمود فتحي محمود طبية	\N	000004	2013-05-06	\N	\N	1	920669520	1	115	عقبة جبر -اريحا	1115	1986-01-15	\N	\N	\N	\N	1	1	6	363289	1005	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	16	\\x	\N	\N	\N	PS80ARAB000000009550363298570
184829	هنادي كمال أحمد المصري	\N	184829	2022-12-29	\N	\N	1	410745368	1	101	رام الله- دورا القرع	2	1993-06-24	\N	\N	\N	\N	2	2	6	191727	1001	\N	1	\N	\N	\N	163679	2016-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS19ARAB00000000191727570
184790	دعاء تيسير محمود عوده	\N	184790	2022-12-29	\N	\N	1	410821888	\N	\N	\N	\N	1989-04-24	\N	\N	\N	\N	2	1	13	2206563	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS40PALS045822065630993000000
184757	خالد نعمان حلمي موسى	\N	184757	2022-12-26	\N	\N	1	852226166	1	107	جنين -عرابة	1102	1990-10-01	\N	0562504780	\N	khaledmousa1990@gmail.com	1	1	6	9060337289570	1013	\N	1	775312	\N	\N	163679	2018-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	12	\N	0569800041	\N	\N	000000009060337289570
184826	محمد خليل داود شريتح	\N	184826	2023-01-03	\N	\N	1	852404466	1	101	رام الله المزرعة الغربية	1101	1992-01-01	\N	\N	\N	mshrateh@palpost.ps	1	1	13	1226836	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS65PALS045812268360993000000
184831	وديع عباس عبدالله مزاحم	\N	184831	2022-12-29	\N	\N	1	860086503	\N	\N	\N	\N	1994-11-11	\N	\N	\N	\N	1	1	13	751960	1001	\N	1	\N	\N	\N	163679	2018-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS82PALS047507519600993000000
13	شادن اسماعيل محمد حموز	\N	000013	2007-02-19	\N	2018-12-12	1	903896942	1	104	الفوار الخليل	1104	1975-11-26	\N	\N	\N	\N	2	2	14	47331	1006	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	14	\N	\N	\N	\N	PS95HBHO040400473310424500000
14	ابتسام عبداللطيف حمدان خمور	\N	000014	2007-07-15	\N	\N	1	979446655	1	104	الخليل	\N	1964-07-08	\N	\N	\N	\N	2	4	6	760524	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	17	\N	\N	\N	\N	PS40ARAB000000009040760524570
15	محمد خلوي عرفات حسونة	\N	000015	2016-06-15	\N	2018-03-20	1	908115108	1	104	الخليل -عين سارة	1104	1980-07-20	\N	\N	\N	\N	1	1	10	84613	1006	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	PS55PINV041200846130030031000
184827	فاطمة محمدصابر ابراهيم شريتح	\N	184827	2022-12-29	\N	\N	1	921718102	1	101	المزرعة القبلية - رام الله	1103	1985-07-13	\N	\N	\N	fatimash_33@hotmail.com	2	1	6	255186	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS05ARAB000000009230255186570
184780	سامي محمد موسى جمعة	\N	184780	2022-12-29	\N	\N	1	914295506	1	106	بيت ليد-طولكرم	4	1981-09-21	\N	0568111785	\N	\N	1	1	2	1025527	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\\x	\N	\N	\N	PS16AISB010320110301025527001
19	محمد اديب أحمد محمد شراونة	\N	000019	2012-01-10	\N	\N	1	852176106	1	104	الخليل -دورا -خربة سيميا	1104	1991-05-03	\N	0598315008	\N	\N	1	1	13	2323378	1006	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	0568504706	\N	\N	PS07PALS047223233780993000000
184775	يامن احمد عبدالرحمن زيد	\N	184775	2022-12-29	\N	\N	1	850135369	1	105	قلقيلية	1102	1987-02-23	\N	\N	\N	\N	1	2	13	417311	1010	\N	1	697067	\N	\N	163679	2018-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	ps39pals046604173110993000000
184807	محمد توفيق محمد عمرو	\N	184807	2022-12-26	\N	\N	1	852178607	\N	\N	\N	\N	1991-03-19	\N	0562504606	\N	\N	1	1	1	1064310	1001	\N	1	\N	\N	\N	167865	2020-07-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS97PIBC085410643100033101000
184828	ميره ابراهيم محمد جرناوي	\N	184828	2022-12-29	\N	\N	1	853651404	\N	\N	\N	\N	1986-11-10	\N	\N	\N	\N	2	2	\N	1229061	1003	\N	1	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS49PALS045812290610993000000
23	مراد عبدالمهدي محمود نمر	\N	000023	2013-04-01	\N	\N	1	850163767	1	104	بيت - اولا	1104	1988-03-13	\N	\N	\N	\N	1	2	13	1314357	1006	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS74PALS044713143570993000000
24	كمال حسان حسين حبابة	\N	000024	2002-10-20	\N	\N	1	940088263	1	101	بيت اكسا - رام الله	1103	1961-01-06	\N	\N	\N	\N	1	2	11	51249	1014	\N	4	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS41HBHO040100512490424500000
25	شادي أحمد عبدالله عليان	\N	000025	2004-05-08	\N	\N	1	904093960	1	103	ابوديس - القدس	2	1978-12-12	2792696	\N	\N	\N	1	2	9	2420738	1014	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	4	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
184832	عصام كايد يونس فليان	\N	184832	2022-12-29	\N	\N	1	920100344	1	101	رام الله	1101	1982-11-11	\N	0562500250	\N	\N	1	2	2	1020543	1001	\N	1	9767137	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	206	\N	\N	PS13AISB010320110301020543001
27	ثائر عماد حسان رامية	\N	000027	2006-08-15	\N	\N	1	911064111	1	103	القدس - الرام	1103	1986-06-14	\N	\N	\N	\N	1	1	6	466914	1014	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS76ARAB000000009110466914570
184824	عاطف جودت محمد حاج	\N	184824	2022-12-29	\N	\N	1	851339499	1	101	بيت عور الفوقا	1101	1977-05-29	\N	\N	\N	\N	1	2	1	1707486	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	PS16PIBC084317074860033101000
184821	سعد يوسف عبددغرة	\N	184821	2022-12-29	\N	\N	1	850044256	1	101	رام الله - كفر عين	1101	1988-04-24	\N	\N	\N	\N	1	1	12	432451	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	PS18CAAB080500000660000145459
31	مدحت امين صبحي الخطيب	\N	000031	2007-01-11	\N	\N	1	943342030	1	109	\N	1103	1983-10-30	\N	\N	\N	\N	1	2	12	301872220	1011	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	PS11CAAB080700000660000264528
35	محمد عيسى اسحق حمود	\N	000035	2009-01-18	\N	\N	1	949792196	1	109	بيت لحم	1109	1987-10-02	\N	\N	\N	\N	1	1	13	388731	1011	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	ساحة المهد	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS26PALS045003887310993000000
39	محمد اسعد صبحي الخطيب	\N	000039	2011-06-01	\N	\N	1	852670231	1	109	بيت جالا-بيت لحم	1109	1990-11-18	\N	\N	\N	\N	1	1	13	387785	1011	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS90PALS045003877850993000000
41	محمد ياسر أحمد الشوشة	\N	000041	2013-05-13	\N	2018-02-01	1	851812040	\N	\N	\N	\N	1989-11-05	\N	\N	\N	\N	1	1	2	8112576	1011	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	1	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
69885	عمار رفيق توفيق سلامه / صبيحات	\N	069885	2001-02-20	\N	\N	1	907099485	\N	\N	\N	\N	1971-03-29	\N	\N	\N	ammar_abowatan@hotmail.com	1	2	6	574151	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	\N
44319	عمار كامل يوسف مرعي	\N	044319	2001-04-01	\N	\N	1	410077572	\N	\N	\N	\N	1970-03-02	\N	\N	\N	\N	1	2	6	436350	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N
68377	عمر احمد كامل مسلماني	\N	068377	2000-04-01	\N	\N	1	929424174	\N	\N	\N	\N	1972-04-29	\N	0562500075	\N	maslamani@mtit.gov.ps	1	2	9	2098567	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	315	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\\x	223	\N	\N	\N
64413	عمر جبر احمد عبدالله امشيعل	\N	064413	1998-02-26	\N	\N	1	978546851	\N	\N	\N	\N	1967-08-29	02-2807036	0599338562/0562	\N	oimsheiel@mtit.gov.ps	1	2	2	1021675	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	481	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	511	\N	\N	\N
101754	عمر عبدالحميد عبدالله السمامره	\N	101754	2010-07-21	\N	\N	1	907013205	\N	\N	\N	\N	1981-05-30	\N	\N	\N	\N	1	2	6	791831	1006	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
67919	عمر عبدالعزيز خليل صالح	\N	067919	2000-01-05	\N	\N	1	994090348	\N	\N	\N	\N	1965-04-09	\N	\N	\N	\N	1	2	2	3224173	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N
69500	عمر عبدالله راغب الخواجه	\N	069500	2000-09-16	\N	\N	1	962060364	\N	\N	\N	\N	1971-11-15	\N	\N	\N	\N	1	2	11	53669	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
92001	عمر محمد راشد يوسف	\N	092001	2008-11-09	\N	\N	1	999726862	\N	\N	\N	\N	1967-03-02	\N	\N	\N	\N	1	2	6	429039	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\\x	\N	\N	\N	\N
73553	عمر محمد محمود عبدالحافظ	\N	073553	1994-08-01	\N	\N	1	936498575	\N	\N	\N	\N	1965-09-14	09-2681512	0599289032	\N	oabdelhafeth@palpost.ps	1	2	12	302813990	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	09-2940020	\N	\N	\N
69441	عواد مصطفى احمد جبر	\N	069441	2000-09-18	\N	2018-02-13	1	998930739	\N	\N	\N	\N	1960-05-22	\N	\N	\N	\N	1	2	6	626549	1003	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	5	\N	\N	\N	\N	\N
73446	عوده محمد عوده بعيرات	\N	073446	1986-12-01	\N	\N	1	968165944	\N	\N	\N	\N	1967-04-17	\N	\N	\N	\N	1	2	9	2009905	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
73588	عوض عطيه حسن زيدان	\N	073588	1986-11-01	\N	\N	1	996460846	\N	\N	\N	\N	1965-04-02	\N	0562500127	\N	\N	1	2	9	2009856	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
93041	عيسى محمد جبر معايطه	\N	093041	2009-03-10	\N	\N	1	910655430	\N	\N	\N	\N	1982-12-10	\N	0562500049	\N	imaaita@mtit.gov.ps	1	2	6	254374	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	404	\N	\N	\N
73430	غسان خليل حسن ابوريا	\N	073430	1986-02-01	\N	\N	1	982956583	\N	\N	\N	\N	1966-06-23	\N	\N	\N	\N	1	2	4	3111464	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
82893	فادي محمد أحمد مرجانه	\N	082893	2005-05-02	\N	\N	1	907090971	\N	\N	\N	\N	1980-05-13	0599372736	0562500013	\N	fmorjanh@mtit.gov.ps	1	2	6	589881	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	2084	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	12	\N	110	\N	\N	\N
155152	فارس محمد مصطفى ابومعلا	\N	155152	2011-09-15	\N	\N	1	901855965	\N	\N	\N	\N	1978-04-13	\N	\N	\N	\N	1	2	13	000351955	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
91618	فاروق دواس محمود ابوعواد	\N	091618	2008-09-29	\N	\N	1	929191567	\N	\N	\N	\N	1972-10-12	\N	\N	\N	\N	1	2	13	436920	1007	\N	3	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
73614	فتحي عبدالمجيد نمر عبدالفتاح / شباك	\N	073614	1996-06-01	\N	\N	1	946785847	\N	\N	\N	\N	1959-01-23	2903341	0562500014 -059	\N	fshbak@palpost.ps	1	2	12	660000118157	1003	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	6	\N	2409228	\N	\N	\N
69409	فخري خالد محمد احمد	\N	069409	2000-09-16	\N	\N	1	932898133	\N	\N	\N	\N	1962-02-07	\N	\N	\N	\N	1	2	12	660001012711	1013	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	8	\N	\N	\N	\N	\N
82633	فداء عبدالجبار اسماعيل عصفور	\N	082633	2004-09-29	\N	\N	1	411796063	\N	\N	\N	\N	1975-12-07	\N	\N	\N	\N	2	2	6	632373	1009	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
81291	فداء وحيد عبدالعزيز العملة	\N	081291	2003-07-01	\N	\N	1	906393129	\N	\N	\N	\N	1980-10-03	\N	\N	\N	\N	2	2	12	302283060	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N
91616	فراس فرج محمد جمهور	\N	091616	2008-10-09	\N	2020-10-16	1	905607149	\N	\N	\N	\N	1980-09-25	\N	\N	\N	\N	1	2	6	632695	1014	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
73579	فلوريد عزت محمود الزربا	\N	073579	1989-12-01	\N	2020-10-22	1	086077591	\N	\N	\N	\N	1960-10-22	0599309309	0562500010	\N	florid@mtit.pna.ps	1	2	9	2006767	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	112	\N	\N	\N
62900	فوزيه ربحي جمال عامر	\N	062900	1997-12-02	\N	\N	1	410125405	\N	\N	\N	\N	1973-12-16	\N	\N	\N	\N	2	2	6	507354	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
155150	فؤاد محمد حسن شيخ علي	\N	155150	2011-10-05	\N	\N	1	939073086	\N	\N	\N	\N	1983-03-14	\N	0598890855	\N	fali@palpost.ps	1	2	1	1411101	1005	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
92002	كفاح أحمد عادل مرقة	\N	092002	2008-11-04	\N	\N	1	904899861	\N	\N	\N	\N	1979-10-19	\N	\N	\N	kifah@palpost.ps	1	2	6	757132	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	260	\N	\N	\N
151322	كمال احمد محمد جربوع	\N	151322	2010-12-19	\N	\N	1	902901073	\N	\N	\N	\N	1978-10-08	\N	\N	\N	\N	1	2	2	1030171	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\\x	\N	\N	\N	\N
73422	كمال عبدالعزيز خليل دعاجنة	\N	073422	1985-09-01	\N	2020-10-25	1	970057675	\N	\N	\N	\N	1960-10-25	022747399	0562500122	\N	kamaldaajneh@yahoo.com	1	2	12	301551130	1011	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
62119	لازم اسماعيل حسين الطير	\N	062119	1997-07-08	\N	\N	1	993485986	\N	\N	\N	\N	1969-05-06	\N	\N	\N	lharb@mtit.gov.ps	1	2	1	1711441	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
68060	لافي محمود خليل عثمان	\N	068060	2000-02-12	\N	\N	1	968510545	\N	\N	\N	\N	1959-02-11	\N	\N	\N	\N	1	2	12	301178980	1003	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
88855	علام موسى	\N	088855	2019-04-14	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	\N	\N	\N	\N	10	\N	\N	\N	81601	2016-03-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
81267	سهاد سعيد عبدالقادر حمدان	\N	081267	2003-06-17	\N	\N	1	907160899	\N	\N	\N	\N	1982-04-25	\N	\N	\N	\N	2	2	7	4736	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
64914	شاهر محمد حسان الخمايسه	\N	064914	1998-08-15	\N	\N	1	964590160	\N	\N	\N	\N	1964-08-31	022241231	0599731999-0562	\N	shaher.kh@palpost.ps	1	2	1	1010398	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	022245254	\N	\N	\N
73424	شحده محمد خليل الشراونه	\N	073424	1983-04-15	\N	\N	1	972901052	\N	\N	\N	\N	1964-12-19	\N	\N	\N	\N	1	2	12	302101420	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
82906	شيرين عبدالقادر سعيد البسومي	\N	082906	2005-04-26	\N	\N	1	040726242	\N	\N	\N	\N	1981-01-11	\N	\N	\N	\N	2	2	13	000209740	1003	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
151320	صابرين محمد صالح حامد	\N	151320	2010-12-19	\N	\N	1	411592926	\N	\N	\N	\N	1987-07-21	\N	\N	\N	\N	2	2	6	183197	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
155146	صالح ابراهيم صالح الشلبي	\N	155146	2011-10-05	\N	\N	1	987501582	\N	\N	\N	\N	1963-09-28	\N	\N	\N	\N	1	2	12	660001017578	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
69882	صالح علي صالح ابوهندي	\N	069882	2001-03-03	\N	\N	1	950363051	\N	\N	\N	\N	1968-02-01	\N	\N	\N	\N	1	2	12	303821230	1008	\N	10	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	\N
73489	صلاح عبدالفتاح عبدالرحمن ابوحمده	\N	073489	1995-07-01	\N	\N	1	902384932	\N	\N	\N	\N	1976-05-27	092940020	0599255474	\N	sa198512@hotmail.com	1	2	12	303684020	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	282	\N	\N	\N
96419	طارق فكري عزت الزربا	Tareq Fekri Izzat Al-Zurba	096419	2010-01-24	\N	\N	1	850448879	\N	\N	سلفيت حي الفريز قرب مسجد الابرار	\N	1986-06-30	\N	0562500079	0568209986	talzurba@mtit.gov.ps	1	2	8	206296	1001	\N	9	9380634	A+	فكري	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	ام القرى	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\\x	203	\N	\N	\N
73559	طلال محمود محمد ناصر ابوعبيد	\N	073559	1995-06-01	\N	\N	1	932895147	\N	\N	\N	\N	1962-12-02	\N	\N	\N	\N	1	2	9	2163993	1013	\N	13	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
91998	عامر أحمد توفيق صعبي	\N	091998	2008-11-04	\N	\N	1	900057803	\N	\N	\N	\N	1974-11-25	\N	\N	\N	\N	1	2	2	3227184	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
73436	عامر حسن عبدالرحمن قرعي	\N	073436	1985-02-16	\N	2020-04-01	1	974776171	\N	\N	\N	\N	1960-04-01	\N	\N	\N	\N	1	2	12	302794780	1007	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
66532	عاهد رشيد عودة الزبده	\N	066532	1999-04-20	\N	\N	1	909398059	\N	\N	\N	\N	1967-04-01	092677557	0599342078  , 0	\N	ahedzebdeh@yahoo.com	1	2	6	508712	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	092678810	\N	\N	\N
80092	عاهد محمد ديب جبر	\N	080092	2001-04-23	\N	\N	1	995386554	\N	\N	\N	\N	1962-10-09	\N	0562500100	\N	aheddeeb@yahoo.com	1	2	12	660000135186	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	228	\N	\N	\N
81498	عاهد محمد فايز صبيح	\N	081498	2003-09-08	\N	\N	1	919071340	\N	\N	\N	\N	1969-09-17	\N	\N	\N	\N	1	2	6	175047	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	13	\N	\N	\N	\N	\N
73586	عبدالرحيم محمود امين دويكات	\N	073586	1984-01-01	\N	\N	1	916405244	\N	\N	\N	\N	1965-03-10	\N	\N	\N	\N	1	2	12	303073370	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
69411	عبدالسلام احمد مسلم الذويب	\N	069411	2000-09-16	\N	\N	1	904092582	\N	\N	\N	\N	1979-01-16	\N	\N	\N	\N	1	2	12	660000288551	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
84514	عبدالفتاح محمد سعيد عبدالفتاح العبد	\N	084514	2005-11-28	\N	\N	1	904076536	\N	\N	\N	\N	1977-07-14	\N	\N	\N	\N	1	2	12	302799560	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
66367	عبدالقادر عاشور يوسف الرياحي	\N	066367	1999-02-15	\N	2018-04-26	1	936253061	\N	\N	\N	\N	1958-04-26	\N	\N	\N	\N	1	2	8	500693	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
69482	عبدالله عبداللطيف حسين الشحرور	\N	069482	2000-09-16	\N	\N	1	943192633	\N	\N	\N	\N	1967-04-02	\N	\N	\N	\N	1	2	1	1017984	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
81869	عبدالله محمد احمد عبدالله	\N	081869	2003-12-20	\N	2019-01-24	1	902851799	\N	\N	\N	\N	1977-10-15	\N	\N	\N	\N	1	2	6	634100	1001	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
60300	عبدالله محمد عبدالله عثمان	\N	060300	1979-10-01	\N	2017-11-17	1	086075520	\N	\N	\N	\N	1957-11-17	\N	0599205782	\N	abdallah@palpost.ps	1	2	13	000151069	1005	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	7	\N	\N	\N	\N	\N
73440	عبدالحميد سعيد عبدالله لحلوح	\N	073440	1996-08-05	\N	\N	1	945367944	\N	\N	\N	\N	1961-03-20	\N	\N	\N	\N	1	2	9	2166591	1013	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
73441	عبدالغني عبدالكريم فياض خضر	\N	073441	1977-05-04	\N	\N	1	979260163	\N	\N	\N	\N	1956-06-24	\N	\N	\N	\N	1	2	12	302799510	\N	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N
151321	عبير حافظ نعيم شافعي	\N	151321	2010-12-19	\N	\N	1	851578070	\N	\N	\N	\N	1987-06-10	\N	\N	\N	ashafey@mtit.pna.ps	2	2	2	7171919	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
64913	عدنان كامل علي عوده	\N	064913	1998-08-15	\N	\N	1	982200966	\N	\N	\N	\N	1966-01-20	\N	\N	\N	\N	1	2	12	660000384968	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
73524	عزام محمد فارس سفيان	\N	073524	1992-11-01	\N	\N	1	990019283	\N	\N	\N	\N	1969-11-17	\N	\N	\N	\N	1	2	12	303085050	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
65302	عصام حسين محمد التايه	\N	065302	1998-08-01	\N	\N	1	955966635	\N	\N	\N	\N	1966-03-08	\N	\N	\N	\N	1	2	3	102523	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
60705	عصمت خميس ماهر العلمي	\N	060705	2014-02-24	\N	\N	1	028320356	1	103	\N	1103	1971-07-19	6563174  297527	0562504603	\N	alamiismat.alami@gmail.com	2	2	6	644336	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	73	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	508	\N	\N	\N
67799	عطاف احمد محمود الشرفا	\N	067799	1999-12-11	\N	\N	1	036077378	\N	\N	\N	\N	1979-09-02	\N	\N	\N	\N	2	2	6	766259	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
151841	علا صادق سليمان حمارشه	\N	151841	2011-01-10	\N	\N	1	947918223	\N	\N	\N	\N	1984-12-13	\N	0562500086	\N	ohamarsha@mtit.gov.ps	2	2	6	183494	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	320	\N	\N	\N
65301	علاء الدين محمد ابراهيم حمدان	\N	065301	1998-10-17	\N	\N	1	928072826	\N	\N	\N	\N	1973-06-30	\N	0599221049	\N	\N	1	2	6	583853	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	\N
46006	ناصر يونس يوسف ابوهنيه	\N	046006	2002-08-01	\N	\N	1	968831792	1	111	قطاع غزة	\N	1966-11-25	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
64910	علي سلمان عبدالفتاح الرجوب	\N	064910	1998-08-15	\N	\N	1	905515342	\N	\N	\N	\N	1959-03-30	\N	0562500174	\N	ali@palpost.ps	1	2	11	21821	1006	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	02-2227966	\N	\N	\N
97243	عماد جعفر عمر حماد	\N	097243	2010-03-16	\N	\N	1	989559612	\N	\N	\N	\N	1974-06-23	\N	\N	\N	\N	1	2	12	303229000	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
73560	عماد حمدي اسماعيل ابوزنط	\N	073560	1978-12-02	\N	\N	1	962865572	\N	\N	\N	\N	1958-08-17	\N	\N	\N	\N	1	2	9	2080685	1008	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
163470	عماد عبدالرحمن علي طميزه	\N	163470	2015-02-11	\N	\N	1	909868416	\N	\N	\N	\N	1986-05-17	022206163	0599479661	\N	itemize@mtit.pna.ps	1	2	1	1115452	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\\x	056250738	\N	\N	\N
69310	عماد فائق يوسف عامر	\N	069310	2000-09-19	\N	\N	1	904267176	\N	\N	\N	\N	1972-08-01	092326710	0599216907	\N	iamer@palpost.ps	1	2	2	7169859	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
155151	رامي زايد محمد جعيدي	\N	155151	2011-10-05	\N	\N	1	904993284	\N	\N	\N	\N	1979-10-24	\N	\N	\N	\N	1	2	12	303694950	1003	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
82468	رامي كمال صابر جابر	\N	082468	2004-07-27	\N	\N	1	905748216	\N	\N	\N	\N	1981-02-05	\N	\N	\N	\N	1	2	12	660001905406	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N
69400	رامي محمد احمد ابوالحور	\N	069400	2000-09-16	\N	\N	1	904639358	\N	\N	\N	\N	1979-09-16	0599380851	0562504761	\N	rami_alhur@yahoo.com	1	2	12	660000412538	1011	5	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	Y	\N	0	\N	\N	\N	Y	\N	9	\\x	\N	\N	\N	\N
160002	رامي يوسف عبدالقادر يعقوب	\N	160002	2013-11-20	\N	\N	1	951750181	\N	\N	\N	\N	1970-12-04	09-2677414	0598309090	\N	rami1_4884@hotmail.com	1	2	6	423162	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\\x	\N	\N	\N	\N
96236	رانية جميل عبدالفتاح جابر	\N	096236	2009-12-27	\N	\N	1	901097162	\N	\N	\N	\N	1975-09-15	\N	\N	\N	\N	2	2	6	669491	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	2098	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
91801	رانيه محمود عبدالله مطري	\N	091801	2008-10-30	\N	\N	1	907308605	\N	\N	\N	\N	1982-06-12	\N	\N	\N	\N	2	1	13	001226450	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
69433	رائد احمد جميل زريقي	\N	069433	2000-09-18	\N	\N	1	927703041	\N	\N	\N	\N	1975-03-10	\N	\N	\N	\N	1	2	6	507196	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
69314	رائد ذيب عبدالله محمود	\N	069314	2000-09-18	\N	\N	1	901238188	\N	\N	\N	\N	1977-12-23	\N	0562500210	\N	raedmahmoud23@gmail.com	1	2	6	524126	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	\N	\N	\N	\N
73612	رائد ماهر سعيد الخاروف	\N	073612	1982-04-01	\N	\N	1	966970790	\N	\N	\N	\N	1960-11-04	\N	\N	\N	\N	1	2	6	435663	1008	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
96418	رأفت خيري مفضي صوافطه	\N	096418	2010-01-20	\N	\N	1	941035016	\N	\N	\N	\N	1984-03-15	\N	\N	\N	\N	1	2	13	450089	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
151842	ربى أحمد حسن ابوجعفر	\N	151842	2011-01-16	\N	\N	1	940845886	\N	\N	\N	\N	1984-02-05	\N	\N	\N	rabujafar@mtit.gov.ps	2	2	2	4323601	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
69898	رجائي لطفي يوسف ابوصلاح	\N	069898	2001-02-20	\N	\N	1	901047696	\N	\N	\N	\N	1976-03-19	\N	\N	\N	\N	1	2	6	517857	1007	\N	8	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
95814	رشيد عبدالرحيم رشيد حنون	\N	095814	2009-09-14	\N	\N	1	938158227	\N	\N	\N	\N	1984-05-08	\N	\N	\N	\N	1	2	12	660000905437	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N
73606	رمضان قاسم رمضان الغزاوي	\N	073606	1986-01-01	\N	\N	1	991052333	\N	\N	\N	\N	1965-03-17	\N	\N	\N	ramadan@palpost.ps	1	2	9	2009826	1014	\N	8	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	\N	\N	\N	\N
80113	رولى احمد شاكر مصطفى ناصر	\N	080113	2001-07-28	\N	\N	1	900091307	\N	\N	\N	\N	1976-10-19	\N	\N	\N	rabubaker@mtit.gov.ps	2	2	6	437877	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\N	225	\N	\N	\N
160003	رياض حسين عبدالنبي حمدان	\N	160003	2013-11-20	\N	\N	1	947031639	\N	\N	\N	\N	1965-11-20	\N	\N	\N	\N	1	2	9	2021776	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
69502	رياض عبدالرحمن خليل شلبي	\N	069502	2000-09-20	\N	\N	1	945485449	\N	\N	\N	\N	1970-05-01	\N	\N	\N	\N	1	2	6	506461	1007	\N	8	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
93820	رياض وليد أحمد حمارشه	\N	093820	2009-05-17	\N	\N	1	901218255	\N	\N	\N	\N	1978-01-19	\N	\N	\N	\N	1	2	6	594977	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	362	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N
69491	ريما فهد مسعود طنبور	\N	069491	2000-09-18	\N	\N	1	411135676	\N	\N	\N	\N	1964-11-19	\N	\N	\N	rtanbour@palpost.ps	2	2	6	772205	1006	\N	10	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\\x	\N	\N	\N	\N
82749	ريما محمود مصطفى ديوان	\N	082749	2004-12-27	\N	\N	1	410642581	\N	\N	\N	\N	1982-01-01	\N	\N	\N	\N	2	2	6	630467	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
80349	زهران عثمان مقبل حسن	\N	080349	2002-03-19	\N	\N	1	983851791	\N	\N	\N	\N	1965-06-12	\N	\N	\N	\N	1	2	12	303674820	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
92707	زياد أحمد علي عرباسي	\N	092707	2009-03-01	\N	\N	1	945542785	\N	\N	\N	\N	1974-02-07	\N	0562500096	\N	ziadarbasi@gmail.com	1	2	12	660000963755	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	\N	\N	\N	\N
73593	سالم جميل سالم البلبول	\N	073593	1993-03-01	\N	\N	1	983350265	\N	\N	\N	\N	1973-03-17	\N	\N	\N	\N	1	2	1	1209246	1011	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
69499	سامر راشد احمد خويره	\N	069499	2000-09-20	\N	\N	1	979467370	\N	\N	\N	\N	1976-02-14	\N	\N	\N	\N	1	2	11	26161	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
69320	سامر عوني سليم عساف	\N	069320	2000-09-16	\N	\N	1	901237784	\N	\N	\N	\N	1978-02-01	\N	\N	\N	\N	1	2	12	302776551	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
116713	ليث دراغمة الاتصالات	\N	116713	2004-09-01	\N	\N	1	906169958	\N	\N	\N	\N	1980-05-06	0562500054	0599789619	\N	samer.k.ali@gmail.com	1	2	6	690365	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	409	\N	\N	\N
66371	سامي فايز فلاح محمد	\N	066371	1999-02-16	\N	\N	1	976072587	\N	\N	\N	\N	1971-04-14	\N	\N	\N	\N	1	2	8	0226288	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
73511	سائد وليد موسى ياسين	\N	073511	1995-10-29	\N	\N	1	900122094	\N	\N	\N	\N	1973-11-20	\N	\N	\N	\N	1	2	6	610405	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
91798	سعد بدر حسين درويش	\N	091798	2008-10-30	\N	\N	1	851075150	\N	\N	\N	\N	1973-12-18	\N	\N	\N	szedani@palpost.ps	1	2	6	641020	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
82932	سعيد شريف حسين الكرمي	\N	082932	2005-06-02	\N	\N	1	904971306	\N	\N	\N	\N	1980-07-25	\N	\N	\N	\N	1	2	12	302975850	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
80297	سعيد عبدالرحمن محمد حمد	\N	080297	2002-01-02	\N	\N	1	968048371	\N	\N	\N	\N	1970-06-22	042462034	0599216666	\N	\N	1	2	13	001362648	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
69309	سعيد كامل احمد عوده	\N	069309	2000-09-16	\N	\N	1	969556786	\N	\N	\N	\N	1962-01-03	\N	\N	\N	\N	1	1	8	0201155	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
73571	سعيد محمد سعاده دويكات	\N	073571	1995-04-01	\N	2020-11-01	1	947534053	\N	\N	\N	\N	1965-09-03	\N	\N	\N	\N	1	2	12	303153420	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
80189	سعيد نبهان اسماعيل عزارة	\N	080189	2001-10-07	\N	2017-11-13	1	975453168	\N	\N	\N	\N	1957-11-13	\N	\N	\N	\N	1	2	12	301290820	1004	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	4	\N	\N	\N	\N	\N
150238	سلام اسماعيل جابر تركمان	\N	150238	2010-08-24	\N	\N	1	941450124	\N	\N	\N	\N	1984-12-20	\N	\N	\N	\N	2	2	2	1024886	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	2099	\N	\N	2	Y	\N	Y	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
96527	سليمان داود سليمان مسلم	\N	096527	2010-01-20	\N	\N	1	902851427	\N	\N	\N	\N	1978-07-12	\N	\N	\N	\N	1	2	6	635555	\N	\N	3	\N	\N	\N	81601	2016-03-15	\N	2	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
61992	سليمان مصطفى سليمان زهيري	\N	061992	1997-05-03	\N	2019-04-29	1	992308270	\N	\N	\N	\N	1958-04-29	\N	\N	\N	\N	1	2	12	660000882356	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	230	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	10	\N	\N	\N	\N	\N
101752	سماح فتحي فارس لباده	\N	101752	2010-07-25	\N	\N	1	945728061	\N	\N	\N	\N	1972-12-11	\N	\N	\N	\N	2	2	10	35738	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N
96528	جابر محمد أحمد هصيص	\N	096528	2010-01-26	\N	\N	1	901873893	\N	\N	\N	\N	1979-01-28	\N	\N	\N	\N	1	2	12	660001024388	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
68796	جاويد احمد محمود حسون	\N	068796	2000-06-15	\N	\N	1	974721037	\N	\N	\N	\N	1959-09-01	092531160	0599134942	\N	\N	1	2	9	2095376	1008	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
62438	جمال عفيف سبع النابلسي	\N	062438	1997-10-14	\N	2019-06-01	1	410446157	\N	\N	\N	\N	1959-06-01	\N	\N	\N	\N	1	2	7	13711	1008	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
69846	جمال مصباح عوض الشريف	\N	069846	2001-02-07	\N	2016-08-08	1	411271323	\N	\N	\N	\N	1956-08-08	\N	\N	\N	\N	1	2	6	762355	\N	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N
155097	جمال مفلح محمد الزواهرة	\N	155097	2011-09-18	\N	\N	1	904624806	\N	\N	\N	\N	1980-01-08	\N	\N	\N	jmalalzwahrh17@gmail.com	1	2	13	000388929	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
95826	جمانه سامي محمد ابراهيم	\N	095826	2009-09-14	\N	\N	1	906181391	\N	\N	\N	\N	1979-07-04	\N	\N	\N	\N	2	2	5	212204	1001	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	1	\N	\N	\N	\N	\N
69312	جمعه حسين جمعه فرح	\N	069312	2000-09-16	\N	2017-12-01	1	904094810	\N	\N	\N	\N	1979-04-23	022323743	0599933279	\N	jfarah@palpost.ps	1	2	13	000152718	1005	\N	13	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	7	\\x	022322574	\N	\N	\N
69401	جميل حسن جدوع زواهرة	\N	069401	2000-09-16	\N	\N	1	935446179	\N	\N	\N	\N	1963-01-03	\N	\N	\N	\N	1	2	12	660000254789	1014	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
73621	جميل موسى سليمان الزغارنه	\N	073621	1990-02-10	\N	2020-04-10	1	979402773	\N	\N	\N	\N	1960-04-10	02-2267777	0562500006	\N	zagharneh@gmail.com	1	2	9	2215214	1	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	200	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	2	\\x	109	\N	\N	\N
160004	جهاد حسن يوسف ربايعه	\N	160004	2013-11-20	\N	\N	1	902464114	\N	\N	\N	\N	1968-02-03	\N	\N	\N	\N	1	2	13	3544421	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
38964	جهاد حسني محمد حمدان	\N	038964	1999-11-01	\N	\N	1	989120266	\N	\N	\N	\N	1967-08-08	\N	\N	\N	\N	1	2	1	1406448	1005	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
73503	جهاد خيري جادالله ابوعلوي	\N	073503	1981-08-10	\N	\N	1	953723541	\N	\N	\N	\N	1961-12-30	\N	\N	\N	\N	1	2	9	2009794	1004	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
93043	جواد محمد عبدالكريم اسماعيل	\N	093043	2009-03-17	\N	\N	1	904465861	\N	\N	\N	\N	1972-07-18	\N	0599820108  0	\N	jawad@mtit.pna.ps	1	2	6	442995	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\\x	317	\N	\N	\N
64041	حاتم سليمان ابراهيم الزيدات	\N	064041	1998-02-01	\N	\N	1	978347243	\N	\N	\N	\N	1971-09-17	\N	\N	\N	\N	1	2	12	660000401177	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
152210	حافظ حسني حافظ الشنتير	\N	152210	2011-01-26	\N	\N	1	942242173	\N	\N	\N	\N	1983-09-02	092342217	0562500056	\N	hshanteer@mtit.gov.ps	1	2	6	165408	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\\x	408	\N	\N	\N
155065	حربي عبدالكريم عبدالله ابوالعيله	\N	155065	2011-09-15	\N	\N	1	958681959	\N	\N	\N	\N	1968-08-07	092570468	0599477438	\N	habualeli@palpost.ps	1	2	13	450269	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	092574510	\N	\N	\N
69410	حسام محمد احمد يعقوب	\N	069410	2000-09-16	\N	\N	1	977301878	\N	\N	\N	\N	1966-04-10	\N	\N	\N	\N	1	2	12	302853080	1007	\N	8	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
60294	حسن سليمان عبدالله ابوالعيله	\N	060294	1994-08-03	\N	\N	1	976909838	\N	\N	\N	\N	1965-07-15	\N	0562500005	\N	habueleela@mtit.pna.ps	1	2	13	000151318	1001	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	180	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	106	\N	\N	\N
81274	حسن مسعود سليمان ابوبكر	\N	081274	2003-06-09	\N	\N	1	976754291	\N	\N	\N	\N	1965-10-31	\N	\N	\N	\N	1	2	13	001356333	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
95815	حسنين علي محمد القاضي	\N	095815	2009-10-19	\N	\N	1	906224266	\N	\N	\N	\N	1980-11-27	\N	\N	\N	\N	1	2	6	778814	1014	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
80122	حسين ابراهيم شاكر خليل	\N	080122	2001-08-04	\N	\N	1	908009491	\N	\N	\N	\N	1982-05-14	0599273212	0562500216	\N	hzabadi@mtit.gov.ps	1	2	2	3217126	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	516	\N	\N	\N
91614	حسين ذيب محمد حسين	\N	091614	2008-09-29	\N	\N	1	994314045	\N	\N	\N	\N	1974-09-06	\N	\N	\N	\N	1	2	6	528590	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
81076	حسين محمد حسين صوافطة	\N	081076	2003-04-01	\N	\N	1	901859843	\N	\N	\N	\N	1978-11-03	092573161	0599394155	\N	hsawafta@palpost.ps	1	2	9	2177700	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	956	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	092387202	\N	\N	\N
157166	حكم شافع مصطفى معالي	\N	157166	2012-07-01	\N	\N	1	850708942	\N	\N	\N	\N	1987-11-16	\N	\N	\N	\N	1	2	13	001217059	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
61986	حمد محمد طه العامور	\N	061986	1997-05-03	\N	\N	1	961270683	\N	\N	\N	\N	1963-07-30	\N	\N	\N	\N	1	2	6	436372	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
83102	حمزه أحمد أحمد السراحنه	\N	083102	2005-09-03	\N	\N	1	907608558	\N	\N	\N	\N	1980-06-26	\N	\N	\N	\N	1	2	1	1013009	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
91622	حمزه عمر محمود الجمل	\N	091622	2008-09-29	\N	\N	1	904130549	\N	\N	\N	\N	1977-11-05	\N	\N	\N	\N	1	2	6	526815	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
82752	حياة عبدالخالق خليل شبيب	\N	082752	2004-12-27	\N	\N	1	954555983	\N	\N	\N	\N	1962-10-19	\N	0598001153	\N	saranew_1990@yahoo. com	2	2	6	350534	1004	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	16	\N	\N	\N	\N	\N
65790	خالد ابراهيم كامل احمد الصويص	\N	065790	1998-12-01	\N	\N	1	904190360	\N	\N	\N	\N	1972-10-16	\N	\N	\N	\N	1	2	12	302859260	1007	\N	8	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
94646	خالد محمد سعيد نمر خصيب	\N	094646	2009-06-23	\N	\N	1	944064005	\N	\N	\N	\N	1979-06-23	\N	\N	\N	\N	1	2	6	514833	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
80162	خضر احمد محمود خضر	\N	080162	2001-09-05	\N	\N	1	979260692	\N	\N	\N	\N	1970-05-02	\N	\N	\N	\N	1	2	2	3212995	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N
65342	خلف طالب محمد احمد  كامل	\N	065342	1998-10-01	\N	\N	1	994474211	\N	\N	\N	\N	1973-11-15	\N	\N	\N	\N	1	2	12	660000367834	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
80835	خليل حسن محمد سالم	\N	080835	2003-01-20	\N	2018-02-20	1	954120242	\N	\N	\N	\N	1961-10-11	\N	\N	\N	\N	1	2	12	660001869191	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
96676	دينا عيسى اسحق احمود	\N	096676	2010-02-24	\N	\N	1	901210047	\N	\N	\N	\N	1977-08-15	\N	\N	\N	\N	2	2	12	660000380202	1011	\N	3	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
63204	رافت خليل زكي خليل المصري	\N	063204	1998-01-01	\N	\N	1	991863226	\N	\N	\N	\N	1973-06-15	\N	\N	\N	\N	1	2	11	49163	\N	\N	7	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N
64537	رافت سليم محمد رضوان	\N	064537	1998-06-01	\N	\N	1	923785794	\N	\N	\N	\N	1970-06-02	0599657190	0562500029	\N	rafat.radwan@gmail.com	1	2	6	613588	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\\x	508	\N	\N	\N
95821	رامي محمد ماهر حسن عبيد	\N	095821	2009-09-14	\N	\N	1	040997033	\N	\N	\N	\N	1981-04-04	\N	\N	\N	\N	1	2	6	472129	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N
47109	ايمن اكرم سعيد القوقا	\N	047109	2003-03-01	\N	\N	1	901496794	1	111	قطاع غزة	\N	1979-02-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45665	راتب حلمي احمد عيسى	\N	045665	2002-04-13	\N	\N	1	904426178	1	111	قطاع غزة	\N	1966-08-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38893	عبدالله علي عبدالقادر احميده	\N	038893	1999-12-01	\N	\N	1	901252072	1	111	قطاع غزة	\N	1976-05-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43564	وسام عدنان   غنيم	\N	043564	2001-02-19	\N	\N	1	410299382	1	111	قطاع غزة	\N	1972-04-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42675	ايهاب محمد سالم الهنادي	\N	042675	2000-09-02	\N	\N	1	905251310	1	111	قطاع غزة	\N	1980-12-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42379	حماده محمود صالح العطار	\N	042379	2000-11-01	\N	\N	1	971379466	1	111	قطاع غزة	\N	1964-07-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42385	جهاد محمد علي حسن حسان	\N	042385	2000-11-01	\N	\N	1	906470497	1	111	قطاع غزة	\N	1964-02-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44056	وليد محمود حسن الحلو	\N	044056	2001-04-01	\N	\N	1	960878056	1	111	قطاع غزة	\N	1964-06-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42112	سامي سالم سلامه ابومخيمر	\N	042112	2000-09-02	\N	\N	1	915324966	1	111	قطاع غزة	\N	1972-10-26	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42074	هاشم محمد هاشم العتال	\N	042074	2000-09-02	\N	\N	1	975858531	1	111	قطاع غزة	\N	1961-11-25	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42388	حسين عبدالله خليل ابومشايخ	\N	042388	2000-11-01	\N	\N	1	959071945	1	111	قطاع غزة	\N	1955-04-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42390	ابراهيم عبدالرحيم احمد القطراوي	\N	042390	2000-11-01	\N	\N	1	972620140	1	111	قطاع غزة	\N	1958-03-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42380	ايمن مدحت لطف مهاني	\N	042380	2000-11-01	\N	\N	1	923001739	1	111	قطاع غزة	\N	1966-01-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42381	صبحي حسن غانم فياض	\N	042381	2000-11-01	\N	\N	1	975947953	1	111	قطاع غزة	\N	1963-10-27	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42382	عبدالله محمد عبدالله جوده	\N	042382	2000-11-01	\N	\N	1	936609841	1	111	قطاع غزة	\N	1954-07-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42711	عبدالقادر عبدالكريم محمد ابوعوده	\N	042711	2000-11-01	\N	\N	1	959885252	1	111	قطاع غزة	\N	1951-12-30	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42532	محمد فوزي محمد ابونعمه	\N	042532	2000-09-02	\N	\N	1	801038571	1	111	قطاع غزة	\N	1976-12-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42017	اشرف محمد ربيع عيد	\N	042017	2000-09-02	\N	\N	1	900960584	1	111	قطاع غزة	\N	1976-03-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27983	ختام عبدالله حسن ابوداير	\N	027983	1998-09-19	\N	\N	1	920735438	1	111	قطاع غزة	\N	1969-12-27	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19229	اسماعيل حسين اسماعيل جنديه	\N	019229	1996-02-24	\N	\N	1	923988612	1	111	قطاع غزة	\N	1972-07-25	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25836	فداء زهير بولس صليبا	\N	025836	1997-12-01	\N	\N	1	912267820	1	101	رام الله	1	1971-02-16	\N	0562504656	\N	fsaliba@mtit.gov.ps	2	2	6	112253	1001	\N	1	\N	O+	\N	81601	2016-03-09	\N	2	0	0	0	0	\N	\N	\N	عين منجد	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	15	\\x	338	\N	\N	\N
20499	شريف سرحان عثمان الدريملي	\N	020499	1995-11-01	\N	\N	1	935885558	1	111	قطاع غزة	\N	1954-06-27	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42709	احسان عبدالكريم عبدالله زيديه	\N	042709	2000-12-12	\N	\N	1	410134993	1	111	قطاع غزة	\N	1975-07-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42371	رجاء عبداللطيف محمد الزقزوق	\N	042371	2000-11-01	\N	\N	1	958996753	1	111	قطاع غزة	\N	1965-10-04	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10791	يوسف عبدالحميد يوسف ابوغزه	\N	010791	1985-12-19	\N	\N	1	955271630	1	111	قطاع غزة	\N	1965-06-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42543	زكريا صالح كامل عبدو	\N	042543	2000-09-02	\N	\N	1	912396827	1	111	قطاع غزة	\N	1972-09-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205232	سامح حمدى يوسف حلس	\N	205232	2007-02-10	\N	\N	1	802018614	1	111	قطاع غزة	\N	1988-07-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46039	مها خضر ابراهيم عياد	\N	046039	2002-08-01	\N	\N	1	962415337	1	111	قطاع غزة	\N	1973-02-28	\N	\N	\N	\N	2	2	15	460065	1001	\N	1	\N	\N	\N	81601	2016-03-09	\N	2	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
43487	عماد عبدالعزيز عبدالله ابوتايه	\N	043487	2001-02-11	\N	\N	1	0	1	111	قطاع غزة	\N	1964-09-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13786	يحيي صالح كامل عبدو	\N	013786	1993-12-01	\N	\N	1	931280358	1	111	قطاع غزة	\N	1970-08-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42249	طارق ابراهيم احمد شتات	\N	042249	2000-09-02	\N	\N	1	412318644	1	111	قطاع غزة	\N	1969-04-13	082066364	0595187577	\N	tareq.shatat@gmail.com	1	\N	\N	\N	1004	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
11674	رشاد ابراهيم عبدالعزيز صبح	\N	011674	1988-05-21	\N	\N	1	904347473	1	111	قطاع غزة	\N	1960-08-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42137	ابراهيم يوسف محمود دبور	\N	042137	2000-09-02	\N	\N	1	411072267	1	111	قطاع غزة	\N	1980-10-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25967	عوني عبدالهادي عبدالقادر حميد	\N	025967	1997-12-08	\N	\N	1	936752096	1	111	قطاع غزة	\N	1971-06-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25034	عبدالحليم عبدالفتاح محمود مسعود	\N	025034	1997-07-01	\N	\N	1	906045166	1	111	قطاع غزة	\N	1969-07-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46893	منذر اكرم حسن فروانه	\N	046893	2003-01-05	\N	\N	1	900620527	1	111	قطاع غزة	\N	1977-10-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44058	عصام محمد السيد الهندي	\N	044058	2001-04-02	\N	\N	1	915158380	1	111	قطاع غزة	\N	1968-11-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26431	هاني محمود ابراهيم الشريف	\N	026431	1998-02-01	\N	\N	1	901336081	1	111	قطاع غزة	\N	1976-07-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42073	صالح محمد مصطفي صالح	\N	042073	2000-09-02	\N	\N	1	903877108	1	111	قطاع غزة	\N	1967-07-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17038	خالد احمد اسماعيل رشوان	\N	017038	1995-08-20	\N	\N	1	938555463	1	111	قطاع غزة	\N	1966-02-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28204	جهاد رشاد محمود شنيوره	\N	028204	1998-10-01	\N	\N	1	939880878	1	111	قطاع غزة	\N	1961-03-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19275	احمد فضل خليل عبدالسلام	\N	019275	1996-05-14	\N	\N	1	802076141	1	111	قطاع غزة	\N	1974-01-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
37183	رجائي مدحت رافت حجاج	\N	037183	1999-04-18	\N	\N	1	901364372	1	111	قطاع غزة	\N	1976-12-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42240	عطا حسن براوي ابورزق	\N	042240	2000-06-05	\N	\N	1	940340235	1	111	قطاع غزة	\N	1963-12-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24603	فتحي محمد عبدالرزاق رمضان	\N	024603	1997-07-01	\N	\N	1	908908346	1	111	قطاع غزة	\N	1958-06-30	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24590	سالم ابراهيم ناصر ابوعمره	\N	024590	1997-07-01	\N	\N	1	942125840	1	111	قطاع غزة	\N	1954-09-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25246	توفيق حسن توفيق عوض	\N	025246	1997-07-01	\N	\N	1	925940934	1	111	قطاع غزة	\N	1954-05-26	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19992	عبدالناصر عبدربه محمود ريحان	\N	019992	1996-04-10	\N	\N	1	0	1	111	قطاع غزة	\N	1957-02-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27950	راتب مطر رشيد العمصي	\N	058227	1998-09-01	\N	\N	1	940890247	1	111	قطاع غزة	\N	1952-12-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27984	محمد ابراهيم محمد محجز	\N	027984	1998-10-01	\N	\N	1	951650720	1	111	قطاع غزة	\N	1967-05-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12239	محمود حمد حمدان قشطه	\N	012239	1989-11-29	\N	\N	1	903367654	1	111	قطاع غزة	\N	1955-03-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24663	فوزي لافي محمد لافي	\N	024663	1997-06-21	\N	\N	1	900153321	1	111	قطاع غزة	\N	1974-01-16	\N	\N	\N	\N	1	\N	\N	\N	1007	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
28630	عايشه عبدربه محيسن السميري	\N	028630	1998-11-01	\N	\N	1	939829065	1	111	قطاع غزة	\N	1949-11-28	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10121	محمد ابراهيم سليمان العامري	\N	010121	1983-12-11	\N	\N	1	911020873	1	111	قطاع غزة	\N	1956-11-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205160	ايهاب سهيل يونس ابوعمشه	\N	205160	2006-12-23	\N	\N	1	900526823	1	111	قطاع غزة	\N	1978-01-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25730	بشاره فؤاد بشاره الخوري	\N	025730	1997-08-02	\N	\N	1	946550258	1	111	قطاع غزة	\N	1963-05-09	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44052	محمد عبدالغنى محمد الشيخ خليل	\N	044052	2001-04-01	\N	\N	1	410155519	1	111	قطاع غزة	\N	1975-09-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
49801	نائله محمد ابراهيم البسيوني	\N	049801	2004-08-01	\N	\N	1	912907912	1	111	قطاع غزة	\N	1971-06-23	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45674	شادي سعدي حسين عوض	\N	045674	2002-04-06	\N	\N	1	903640753	1	111	قطاع غزة	\N	1979-05-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39754	اياد سلامه دياب العجله	\N	039754	2000-01-01	\N	\N	1	922256946	1	111	قطاع غزة	\N	1972-11-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39648	نهاد محمود طلب الخضري	\N	039648	2000-01-01	\N	\N	1	911576148	1	111	قطاع غزة	\N	1971-11-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27991	زكي محمد علي ابونصار	\N	027991	1998-10-01	\N	\N	1	968767848	1	111	قطاع غزة	\N	1955-03-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42526	رزق محمود رزق السويركي	\N	042526	2000-09-02	\N	\N	1	912390713	1	111	قطاع غزة	\N	1972-06-26	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40862	اسماعيل عبدالقادر اسماعيل كلوب	\N	040862	2000-06-01	\N	\N	1	970010138	1	111	قطاع غزة	\N	1951-04-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13128	محمود عبدالرحيم محمود ابوعيسي	\N	013128	1992-09-23	\N	\N	1	967711557	1	111	قطاع غزة	\N	1960-04-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16471	ناهض جبر احمد ابوسكران	\N	016471	1995-06-10	\N	\N	1	902856525	1	111	قطاع غزة	\N	1965-06-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19227	ماهر اكرم حسن فروانه	\N	019227	1996-02-05	\N	\N	1	923041750	1	111	قطاع غزة	\N	1967-06-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15050	جهاد حسين طالب العريني	\N	015050	1993-04-14	\N	\N	1	906420286	1	111	قطاع غزة	\N	1967-08-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27954	حنان احمد محمد عكلوك	\N	027954	1998-09-01	\N	\N	1	410926653	1	111	قطاع غزة	\N	1976-07-30	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43561	باسل طلال عبدالرحمن الشيخ خليل	\N	043561	2001-02-17	\N	\N	1	700031537	1	111	قطاع غزة	\N	1977-01-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44181	معين سليمان عبدالقادر ابواللبن	\N	044181	2001-04-09	\N	\N	1	970463584	1	111	قطاع غزة	\N	1969-01-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204566	شادي محمد محمود الحناوى	\N	204566	2006-05-09	\N	\N	1	954758942	1	111	قطاع غزة	\N	1979-11-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27116	انعام رزق احمد العرابيد	\N	027116	1998-02-18	\N	\N	1	410165799	1	111	قطاع غزة	\N	1969-11-22	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44051	محمد صلاح عطيه العجله	\N	044051	2001-04-01	\N	\N	1	901457440	1	111	قطاع غزة	\N	1978-10-04	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9138	زهير رشاد محمد البيطار	\N	009138	1981-04-01	\N	\N	1	902510833	1	111	قطاع غزة	\N	1950-05-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1933	محمود طلب احمد الخضري	\N	001933	1995-03-06	\N	\N	1	961240736	1	111	قطاع غزة	\N	1948-10-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	7	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43845	نادي حسن محمد الصوفي	\N	043845	2001-03-01	\N	\N	1	907782817	1	111	قطاع غزة	\N	1949-04-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12913	محمود بخيت علي بخيت	\N	012913	1992-01-27	\N	\N	1	963782149	1	111	قطاع غزة	\N	1957-02-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40859	محمد عوده سليمان ابوعوده	\N	040859	2000-06-01	\N	\N	1	916480437	1	111	قطاع غزة	\N	1949-05-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44528	جلال ابراهيم عبداللطيف شعلان	\N	044528	2001-02-21	\N	\N	1	0	1	111	قطاع غزة	\N	1950-02-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16380	نسرين ممدوح صبري صيدم	\N	016380	1995-08-03	\N	\N	1	410126429	1	111	قطاع غزة	\N	1969-09-17	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27949	حسين سالم حسين ابوناجي	\N	027949	1998-09-01	\N	\N	1	945242238	1	111	قطاع غزة	\N	1949-04-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4391	فتحي رجب سلمان الحرازين	\N	004391	1970-04-01	\N	\N	1	930810528	1	111	قطاع غزة	\N	1948-02-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42376	فاروق اسماعيل حرب عفانه	\N	042376	2000-11-01	\N	\N	1	940011331	1	111	قطاع غزة	\N	1952-02-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27986	فتحي عبدالفتاح عبدالله جوده	\N	027986	1998-10-01	\N	\N	1	976325845	1	111	قطاع غزة	\N	1952-01-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13423	ياسر شعبان عبدالله مهنا	\N	013423	1992-09-23	\N	\N	1	915951537	1	111	قطاع غزة	\N	1965-10-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7096	محمد موسي عبدالجواد الدعالسه	\N	007096	1975-05-31	\N	\N	1	917610438	1	111	قطاع غزة	\N	1948-08-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22861	محمود عبدالقادر احمد مسلم	\N	022861	1996-12-09	\N	\N	1	909986036	1	111	قطاع غزة	\N	1948-01-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40982	علي عليان محمد البرديني	\N	040982	2000-06-01	\N	\N	1	975332529	1	111	قطاع غزة	\N	1949-04-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
32618	عبدالفتاح سعيد العبدالرنتيسي	\N	032618	1993-03-16	\N	\N	1	0	1	111	قطاع غزة	\N	1963-07-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48463	ماهر احمد ذيب ريان	\N	048463	2003-12-13	\N	\N	1	901517490	1	111	قطاع غزة	\N	1979-01-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48362	باسل سيف الدين محمد البلعاوي	\N	048362	2003-12-13	\N	\N	1	900529363	1	111	قطاع غزة	\N	1977-12-26	082862203	0562504972	\N	bbalawi@mtit.gov.ps	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48854	سعيد سعيد محمود البياري	\N	048854	2004-04-01	\N	\N	1	900661562	1	111	قطاع غزة	\N	1978-05-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41464	محمد جابر محمد ابوعسكر	\N	041464	2000-07-18	\N	\N	1	909497364	1	111	قطاع غزة	\N	1970-11-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23395	نوال السعيد محمد كلوب	\N	023395	1996-09-01	\N	\N	1	0	1	111	قطاع غزة	\N	1972-07-10	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41062	منيره علي   معروف	\N	041062	2000-07-01	\N	2020-12-29	1	412351884	1	111	قطاع غزة	\N	1960-12-29	\N	\N	\N	\N	2	\N	\N	\N	1001	\N	4	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
21605	خالد صائب خالد الريس	\N	021605	1996-10-28	\N	\N	1	410130496	1	111	قطاع غزة	\N	1973-04-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23555	باسم محمد ابراهيم رجب ابوديل	\N	023555	1996-11-02	\N	\N	1	410142954	1	111	قطاع غزة	\N	1974-02-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	5	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28203	حسن محمد حسن مقاط	\N	028203	1998-10-01	\N	\N	1	985310341	1	111	قطاع غزة	\N	1961-05-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28206	عوني محمد سليم كحيل	\N	028206	1998-10-01	\N	\N	1	917445967	1	111	قطاع غزة	\N	1955-07-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15999	عزات سعيد محمد الريفي	\N	015999	1995-06-01	\N	\N	1	907500144	1	111	قطاع غزة	\N	1956-02-16	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39173	بشير مصباح حامد البردويل	\N	039173	1999-12-25	\N	\N	1	931077069	1	111	قطاع غزة	\N	1956-03-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39773	احمد محمد دخل الله ابومصطفي	\N	039773	2000-02-01	\N	\N	1	900180779	1	111	قطاع غزة	\N	1974-01-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42527	احمد نايف صالح شبير	\N	042527	2000-09-02	\N	\N	1	901342766	1	111	قطاع غزة	\N	1975-09-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14889	حسن علي ابراهيم شهوان	\N	014889	1994-10-01	\N	\N	1	928127760	1	111	قطاع غزة	\N	1960-11-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22535	احمد نمر توفيق مهاني	\N	022535	1997-01-01	\N	\N	1	901597757	1	111	قطاع غزة	\N	1977-12-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18014	محمود عبدالعزيز محمد ابوشريعه	\N	018014	1995-06-10	\N	\N	1	946572880	1	111	قطاع غزة	\N	1970-10-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42378	احمد محمد عبدالقادر ابوسيف	\N	042378	2000-11-01	\N	\N	1	0	1	111	قطاع غزة	\N	1958-09-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
37028	يوسف عبدالرحمن عيد سحويل	\N	037028	1999-05-02	\N	\N	1	922040662	1	111	قطاع غزة	\N	1960-06-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3195	احمد حسن عبدالسلام غريب	\N	003195	1966-07-04	\N	\N	1	928410810	1	111	قطاع غزة	\N	1948-11-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17972	عبدالعزيز توفيق محمد قديح	\N	017972	1995-10-18	\N	\N	1	950040121	1	111	قطاع غزة	\N	1950-02-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7607	محمود محمد احمد الفرا	\N	007607	1977-03-27	\N	\N	1	938567245	1	111	قطاع غزة	\N	1954-04-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11303	غسان محمد ابراهيم حجازي	\N	011303	1987-04-01	\N	\N	1	967475856	1	111	قطاع غزة	\N	1965-03-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11400	احمد اسماعيل محمد عزام	\N	011400	1987-08-11	\N	\N	1	960205235	1	111	قطاع غزة	\N	1959-05-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24591	منصور احمد يوسف ابوعمره	\N	024591	1997-07-01	\N	\N	1	952127959	1	111	قطاع غزة	\N	1955-01-18	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28205	علاء صالح ابراهيم المشهراوي	\N	028205	1998-10-01	\N	\N	1	902261858	1	111	قطاع غزة	\N	1966-09-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41626	توفيق سليمان زايد ابوشريعه	\N	041626	2000-08-28	\N	\N	1	803059716	1	111	قطاع غزة	\N	1956-02-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16005	عبدالكريم محمد عمر البحطيطي	\N	016005	1995-10-01	\N	\N	1	921085189	1	111	قطاع غزة	\N	1960-02-09	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	Y	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	21	\N
16002	طلعت محمد خليل اللوح	\N	016002	1995-10-01	\N	\N	1	902090950	1	111	قطاع غزة	\N	1961-01-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205272	محمد مؤمن راجح عايش حبيب	\N	205272	2007-03-17	\N	\N	1	906774419	1	111	قطاع غزة	\N	1981-08-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16334	محمد احمد صالح سكيك	\N	016334	1994-06-28	\N	\N	1	410068373	1	111	قطاع غزة	\N	1992-12-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40754	احمد جمعه سالم هليل	\N	040754	2000-05-16	\N	\N	1	0	1	111	قطاع غزة	\N	1974-08-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38894	عماد عبدالله عبدالحميد شاهين	\N	038894	1999-12-01	\N	\N	1	900238304	1	111	قطاع غزة	\N	1974-06-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23734	غاده محمد شعبان نسمان	\N	023734	1996-09-01	\N	\N	1	410134456	1	111	قطاع غزة	\N	1972-02-05	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12598	ناهض رجب حسن العشي	\N	012598	1990-02-20	\N	\N	1	907550149	1	111	قطاع غزة	\N	1962-09-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27388	توفيق محمد حسن شمالي	\N	027388	1998-06-01	\N	\N	1	901655605	1	111	قطاع غزة	\N	1977-05-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11478	خالد سلامه محمد ابوحسان	\N	011478	1987-11-03	\N	\N	1	907132849	1	111	قطاع غزة	\N	1965-01-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22117	احمد محمد محمد ذكري	\N	022117	1996-11-01	\N	\N	1	410466270	1	111	قطاع غزة	\N	1942-01-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24589	جمال خليل حسن بكير	\N	024589	1997-07-01	\N	\N	1	973960958	1	111	قطاع غزة	\N	1959-01-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42384	عيد عبدالله حسنين ابونصيره	\N	024266	2000-11-01	\N	\N	1	968945642	1	111	قطاع غزة	\N	1950-12-23	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39743	صابر محمد قدوره صالح	\N	039743	2000-01-02	\N	\N	1	945892388	1	111	قطاع غزة	\N	1963-05-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11334	عبدالرحمن صبحي عبدشقليه	\N	011334	1987-08-11	\N	\N	1	932093149	1	111	قطاع غزة	\N	1956-05-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12046	صالح بدوي صالح الشناط	\N	012046	1989-06-01	\N	\N	1	908903727	1	111	قطاع غزة	\N	1957-05-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12908	عماد سالم محمد صيام	\N	012908	1991-10-12	\N	\N	1	912265832	1	111	قطاع غزة	\N	1968-09-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42531	اشرف محمد عبدالهادي اسليم	\N	042531	2000-09-02	\N	\N	1	900529025	1	111	قطاع غزة	\N	1978-01-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12237	سليمان موسي اسعد سرداح	\N	750150	1990-06-13	\N	\N	1	962611562	1	111	قطاع غزة	\N	1959-04-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
201848	صلاح محمود صالح عروق	\N	201848	2005-04-09	\N	\N	1	900486184	1	111	قطاع غزة	\N	1977-10-25	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12836	زهدي رشاد محمد البيطار	\N	012836	1990-03-19	\N	\N	1	902510841	1	111	قطاع غزة	\N	1953-03-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43562	حسام محمد سالم ماضي	\N	043562	2001-02-14	\N	\N	1	919025809	1	111	قطاع غزة	\N	1969-02-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14892	جواد علي اسماعيل القصابغلي	\N	014892	1994-08-01	\N	\N	1	903166163	1	111	قطاع غزة	\N	1960-05-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29230	سهير علي عبدمعروف	\N	029230	1998-12-19	\N	2021-01-04	1	411191315	1	111	قطاع غزة	\N	1968-03-08	\N	\N	\N	\N	2	\N	\N	\N	1001	\N	4	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
25801	اشرف حسين فرج الواديه	\N	025801	1997-05-01	\N	\N	1	901267823	1	111	قطاع غزة	\N	1976-08-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13514	عماد ابراهيم احمد البلعاوي	\N	013514	1993-08-19	\N	\N	1	901000190	1	111	قطاع غزة	\N	1976-01-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
49536	منال كامل محمد الطويل	\N	049536	2004-07-10	\N	\N	1	900977372	1	111	قطاع غزة	\N	1976-02-22	\N	\N	\N	manal.taweel@mtit.gov.ps	2	\N	\N	\N	1001	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
38955	محمد علي حسين الزويدي	\N	038955	1999-11-01	\N	\N	1	903542116	1	111	قطاع غزة	\N	1980-02-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40861	يوسف حسن يوسف الزعلان	\N	040861	2000-06-01	\N	\N	1	900220153	1	111	قطاع غزة	\N	1974-06-01	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39649	حسين محمد عبدالرحمن شاهين	\N	039649	2000-01-01	\N	\N	1	906360367	1	111	قطاع غزة	\N	1962-05-27	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40156	محمود عبدالفتاح محمود حسين	\N	040156	1999-10-18	\N	\N	1	906045141	1	111	قطاع غزة	\N	1948-12-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8978	زكي شعبان حمدان ابوعمر	\N	008978	1986-01-16	\N	\N	1	954340337	1	111	قطاع غزة	\N	1953-05-16	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14891	ايهاب طه احمد الغندور	\N	611897	1994-12-01	\N	\N	1	935770271	1	111	قطاع غزة	\N	1969-12-30	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46667	محمد علي محمود البرعي	\N	046667	2002-11-21	\N	\N	1	951487958	1	111	قطاع غزة	\N	1979-05-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204915	انوار عبدالله حسين الجوجو	\N	204915	2006-09-06	\N	\N	1	906529474	1	111	قطاع غزة	\N	1982-04-21	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19264	سمير فايز اسماعيل عبدالقادر	\N	019264	1996-03-10	\N	\N	1	910089739	1	111	قطاع غزة	\N	1969-04-27	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19243	اسامه محمد اسماعيل المدهون	\N	019243	1996-01-18	\N	\N	1	926236233	1	111	قطاع غزة	\N	1961-02-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13513	محمدصالح دردونه نادي دردونه	\N	013513	1993-08-19	\N	\N	1	921360632	1	111	قطاع غزة	\N	1959-12-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42383	خضر سلمي حسين قويدر	\N	042383	2000-11-01	\N	\N	1	968860858	1	111	قطاع غزة	\N	1959-02-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12045	عبدالهادي كامل احمد شنيوره	\N	012045	1989-08-26	\N	\N	1	939881272	1	111	قطاع غزة	\N	1963-04-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43423	محمود جمعه محمد ابوجياب	\N	043423	2001-02-05	\N	\N	1	909750895	1	111	قطاع غزة	\N	1964-02-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48790	هدايه محمود محمد العسولي	\N	048790	2004-03-09	\N	\N	1	411067176	1	111	قطاع غزة	\N	1969-08-21	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40101	سهير اسماعيل محمد الاعرج	\N	040101	2000-02-17	\N	\N	1	0	1	111	قطاع غزة	\N	1972-11-15	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48365	محمد ابراهيم سلمان الحمايده	\N	048365	2003-12-13	\N	\N	1	923774236	1	111	قطاع غزة	\N	1967-09-18	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48607	اسماء حمدان مصطفى عبيد	\N	048607	2004-01-18	\N	\N	1	900166463	1	111	قطاع غزة	\N	1974-01-21	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41627	يوسف حسين   ديب	\N	041627	2000-09-02	\N	\N	1	0	1	111	قطاع غزة	\N	1959-02-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42544	حسين يوسف محمد ابوشريعه	\N	042544	2000-09-02	\N	\N	1	900832056	1	111	قطاع غزة	\N	1975-02-09	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16457	بشير كمال حافظ الاغا	\N	001073	1995-06-18	\N	\N	1	910415462	1	111	قطاع غزة	\N	1960-01-21	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43565	محمود وصفي محمود البكري	\N	043565	2001-02-18	\N	\N	1	905269726	1	111	قطاع غزة	\N	1980-02-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29214	حسام حسن عبدالله المصري	\N	029214	1998-12-01	\N	\N	1	909905549	1	111	قطاع غزة	\N	1970-12-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24592	ابراهيم يوسف احمد محمد اشقير	\N	024592	1997-07-01	\N	\N	1	925602765	1	111	قطاع غزة	\N	1958-08-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45984	امجد حسن يوسف دحلان	\N	045984	2002-03-02	\N	\N	1	900888736	1	111	قطاع غزة	\N	1975-07-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48363	محمد ابراهيم صبحي شعشاعه	\N	048363	2003-12-13	\N	\N	1	903484996	1	111	قطاع غزة	\N	1979-03-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21518	محمد سليمان عطيه ابوموسي	\N	021518	1996-10-01	\N	\N	1	924444730	1	111	قطاع غزة	\N	1973-10-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20941	سامي سالم محمد العويطي	\N	020941	1996-10-01	\N	\N	1	952237550	1	111	قطاع غزة	\N	1961-10-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27952	ابراهيم محمد مسلم عصفور	\N	027952	1998-09-01	\N	\N	1	923785133	1	111	قطاع غزة	\N	1957-04-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42372	بدوان عبدالفتاح احمد بدوان	\N	042372	2000-11-01	\N	\N	1	910731942	1	111	قطاع غزة	\N	1970-04-30	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13424	مهدي عرفات حسين حرزالله	\N	013424	1993-03-06	\N	\N	1	935347443	1	111	قطاع غزة	\N	1973-12-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38011	احمد خليل محمد نبهان	\N	038011	1999-08-01	\N	\N	1	410053789	1	111	قطاع غزة	\N	1960-12-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26551	ربيع فرح ربيع النجار	\N	026551	1998-02-21	\N	\N	1	918305145	1	111	قطاع غزة	\N	1967-09-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43559	جلال عبدالفتاح محمد اسماعيل	\N	043559	2001-02-05	\N	\N	1	920930872	1	111	قطاع غزة	\N	1968-11-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9390	سليم حسين سليم حرزالله	\N	009390	1981-10-26	\N	\N	1	931085179	1	111	قطاع غزة	\N	1960-11-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45767	فرج محمود محمد المصري	\N	045767	2002-06-03	\N	\N	1	0	1	111	قطاع غزة	\N	1965-10-23	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24588	منذر عبدالفتاح حسن كراز	\N	024588	1997-07-01	\N	\N	1	959092354	1	111	قطاع غزة	\N	1965-05-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29229	ممدوح روبين محمد زين الدين	\N	029229	1998-10-10	\N	\N	1	924580145	1	111	قطاع غزة	\N	1973-05-04	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42055	عيسي رزق عبدعطاالله	\N	042055	2000-09-02	\N	\N	1	983279878	1	111	قطاع غزة	\N	1967-08-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16456	بلال حسن محمد القرشلي	\N	012911	1995-04-24	\N	\N	1	900971995	1	111	قطاع غزة	\N	1975-12-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29247	سامي خميس سالم الدره	\N	029247	1998-10-01	\N	\N	1	912828530	1	111	قطاع غزة	\N	1964-09-21	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27988	سامي ابراهيم محمد ابومخيمر	\N	027988	1998-11-01	\N	\N	1	934952763	1	111	قطاع غزة	\N	1972-08-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41990	منصور عبدالهادي محمد فالوجي	\N	041990	2000-09-02	\N	\N	1	925350399	1	111	قطاع غزة	\N	1971-08-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42685	رامي احمد سليمان ابوسلامه	\N	042685	2000-09-02	\N	\N	1	906643176	1	111	قطاع غزة	\N	1981-02-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
39647	محمد اكرم صدقي الكاظمي	\N	039647	2000-01-01	\N	\N	1	932603053	1	111	قطاع غزة	\N	1972-05-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42374	رائد نعيم سليمان عكاشه	\N	042374	2000-11-01	\N	\N	1	901601567	1	111	قطاع غزة	\N	1977-09-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42021	فرج احمد حسن زقوت	\N	042021	2000-09-02	\N	\N	1	901592055	1	111	قطاع غزة	\N	1977-09-25	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9207	عوض عيسي محمد العيسوي	\N	009207	1981-05-01	\N	\N	1	926415142	1	111	قطاع غزة	\N	1956-10-30	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48698	عبدالله محمد احمد طافش	\N	048698	2004-02-08	\N	\N	1	909127433	1	111	قطاع غزة	\N	1982-01-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27955	نصر كامل ابراهيم صيام	\N	027955	1998-09-01	\N	\N	1	911962074	1	111	قطاع غزة	\N	1967-08-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44057	امين عدنان صالح الاغا	\N	044057	2001-04-01	\N	\N	1	945270858	1	111	قطاع غزة	\N	1969-10-27	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19475	وليد محمود حسين صقر	\N	019475	1995-12-16	\N	\N	1	952245389	1	111	قطاع غزة	\N	1963-10-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41565	عمر ذيب هاشم جنيد	\N	041565	2000-08-22	\N	\N	1	915842686	1	111	قطاع غزة	\N	1966-11-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11299	خضر محمد احمد الغول	\N	011299	1987-04-01	\N	\N	1	952485340	1	111	قطاع غزة	\N	1950-12-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46539	رائد حمدي محمود حميد	\N	046539	2002-10-28	\N	\N	1	950833269	1	111	قطاع غزة	\N	1973-10-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17802	محمد احمد مطر منصور	\N	017802	1986-10-15	\N	\N	1	410318695	1	111	قطاع غزة	\N	1965-02-05	\N	0599418036	\N	mmansour@mtit.gov.ps	1	2	\N	\N	1003	\N	4	\N	\N	\N	81601	2016-03-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	2	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
17137	يوسف عبدالله حسن ابوداير	\N	017137	1995-11-04	\N	\N	1	906801451	1	111	قطاع غزة	\N	1965-09-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43156	زياد محمد على تمراز	\N	043156	2001-01-02	\N	\N	1	915305999	1	111	قطاع غزة	\N	1972-11-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42370	عاطف يوسف عبدالمجيد احمد	\N	042370	2000-11-01	\N	\N	1	917046542	1	111	قطاع غزة	\N	1961-05-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11968	اميمه محمد سليم صادق	\N	011968	1988-11-01	\N	\N	1	935042036	1	111	قطاع غزة	\N	1962-04-21	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11646	عمر عزالدين عمر الخضري	\N	011646	1988-04-01	\N	\N	1	946202876	1	111	قطاع غزة	\N	1959-07-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204532	ياسر محمد على تايه	\N	204532	2006-05-03	\N	\N	1	900521782	1	111	قطاع غزة	\N	1978-06-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205254	ختام خميس سعيد زملط	\N	205254	2007-02-13	\N	\N	1	900778960	1	111	قطاع غزة	\N	1977-03-06	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44214	ايمن ابراهيم حسين حبوب	\N	044214	2001-04-15	\N	\N	1	900806340	1	111	قطاع غزة	\N	1975-01-16	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205159	اياد زهير محمد الكفارنه	\N	205159	2007-01-06	\N	\N	1	903510345	1	111	قطاع غزة	\N	1980-05-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42019	عمر عمر خليل المعصوابي	\N	042019	2000-09-02	\N	\N	1	912290129	1	111	قطاع غزة	\N	1972-02-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
37542	احمد محمد يوسف داود	\N	037542	1999-02-16	\N	\N	1	907000392	1	111	قطاع غزة	\N	1968-04-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29919	محمد احمد حسني زويدي	\N	029919	1999-02-16	\N	\N	1	902046549	1	111	قطاع غزة	\N	1951-01-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23068	حسام حلمي محمد شاهين	\N	023068	1996-11-02	\N	\N	1	923764021	1	111	قطاع غزة	\N	1965-09-09	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43563	عاطف احمد ايوب عطاالله	\N	043563	2001-02-10	\N	\N	1	901985960	1	111	قطاع غزة	\N	1958-08-18	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43346	عبدالله سلمان عطيه ابوعيده	\N	043346	2000-12-16	\N	\N	1	900878380	1	111	قطاع غزة	\N	1975-07-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42542	ماجد محمد درويش المدهون	\N	042542	2000-09-02	\N	\N	1	900315185	1	111	قطاع غزة	\N	1974-09-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38729	صابر سليمان عبدالقادر ابولبن	\N	038729	1999-06-01	\N	\N	1	911996676	1	111	قطاع غزة	\N	1966-11-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26662	نائل اكرم محمد الدهشان	\N	026662	1997-05-01	\N	\N	1	912267069	1	111	قطاع غزة	\N	1969-09-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16455	ابراهيم مبارك هويشل ابوهويشل	\N	016455	1998-08-28	\N	\N	1	915306757	1	111	قطاع غزة	\N	1972-02-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29227	محمداشرف عصام كامل النونو	\N	029227	1998-10-10	\N	\N	1	901332270	1	111	قطاع غزة	\N	1976-07-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29927	رياض محمد علي عوده	\N	029927	1999-04-18	\N	\N	1	926485665	1	111	قطاع غزة	\N	1962-10-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40626	محمد احمد   عكلوك	\N	040626	2000-05-02	\N	\N	1	800813644	1	111	قطاع غزة	\N	1979-12-21	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45717	ابراهيم موسى محمود الدبس	\N	045717	2002-01-14	\N	\N	1	921155735	1	111	قطاع غزة	\N	1958-01-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40362	عمر سلامه ابراهيم ابويوسف	\N	040362	2000-04-01	\N	\N	1	905501482	1	111	قطاع غزة	\N	1980-11-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
29228	مها محمد شكري الاحول	\N	029228	1998-10-10	\N	\N	1	900840067	1	111	قطاع غزة	\N	1975-10-30	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26870	سناء عبدالمعطي حسين الغصين	\N	026870	1998-02-21	\N	\N	1	411163157	1	111	قطاع غزة	\N	1960-03-23	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16452	وليد هاشم سليم الاغا	\N	016452	1995-04-02	\N	\N	1	932060643	1	111	قطاع غزة	\N	1957-11-16	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12238	معتز حسام جبر الوحيدي	\N	012238	1990-06-13	\N	\N	1	921340337	1	111	قطاع غزة	\N	1947-09-04	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205149	ناهض محمد صلاح جراده	\N	205149	2006-12-11	\N	\N	1	976375188	1	111	قطاع غزة	\N	1961-11-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46825	مشرف نعمان مشرف القدوه	\N	046825	2002-12-24	\N	\N	1	410146211	1	111	قطاع غزة	\N	1980-10-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38895	عبدالغني ابراهيم احمد ابوطير	\N	038895	1999-12-01	\N	\N	1	901241893	1	111	قطاع غزة	\N	1977-01-13	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204533	رائد محمد غازى عبدالرحمن ابوضلفه	\N	204533	2006-05-03	\N	\N	1	901667162	1	111	قطاع غزة	\N	1977-07-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48853	فاتن جهاد عبدالله مهنا	\N	048853	2004-04-01	\N	\N	1	412449514	1	111	قطاع غزة	\N	1973-03-09	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26885	زهير نعيم عبدالوهاب وهبه	\N	026885	1997-09-01	\N	\N	1	923060164	1	111	قطاع غزة	\N	1954-02-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28292	نبيل محمد احمد الطواب	\N	028292	1998-10-10	\N	\N	1	411955644	1	111	قطاع غزة	\N	1968-12-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41992	سمير غازي شعبان مرتجي	\N	041992	2000-09-02	\N	\N	1	923895155	1	111	قطاع غزة	\N	1961-01-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16454	مجدي حسن جبر العفيفي	\N	016454	1995-05-04	\N	\N	1	906396379	1	111	قطاع غزة	\N	1960-06-18	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21397	حسام بكير حسن عبدو	\N	021397	1996-07-01	\N	\N	1	921443024	1	111	قطاع غزة	\N	1964-02-25	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48671	رائد عبدالعزيز حسين فارس	\N	048671	2004-02-08	\N	\N	1	905267530	1	111	قطاع غزة	\N	1980-07-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
46003	ضياء هشام محمد ابوجبل	\N	046003	2002-08-13	\N	\N	1	903483303	1	111	قطاع غزة	\N	1979-03-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14882	محمد محمد عبدالرحمن الحلبي	\N	014882	1994-09-01	\N	\N	1	926805284	1	111	قطاع غزة	\N	1966-07-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42608	تامر حامد رجب الغول	\N	042608	2000-12-02	\N	\N	1	901628792	1	111	قطاع غزة	\N	1977-04-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204565	ريم محمد ابراهيم داود	\N	204565	2006-05-09	\N	\N	1	411930175	1	111	قطاع غزة	\N	1976-10-16	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26932	عبدالفتاح علي حسن عيسي	\N	026932	1998-04-11	\N	\N	1	0	1	111	قطاع غزة	\N	1955-03-21	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17800	رجائي عطيه عبدالعزيز عيسي	\N	017800	1995-07-01	\N	\N	1	912350535	1	111	قطاع غزة	\N	1961-12-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
20949	مازن صلاح عطيه العجله	\N	020949	1996-10-01	\N	\N	1	913021036	1	111	قطاع غزة	\N	1961-07-03	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5844	عبدالخالق لطفي حسن السويركي	\N	005844	1972-09-25	\N	\N	1	931010532	1	111	قطاع غزة	\N	1952-10-30	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27951	محمد خطاب احمد خطاب	\N	027951	1998-09-01	\N	\N	1	942131632	1	111	قطاع غزة	\N	1953-09-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27818	رمضان محمود سليمان ابوعوده	\N	027818	1998-08-05	\N	\N	1	916480577	1	111	قطاع غزة	\N	1962-03-04	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27992	خالد سعيد موسي ضاهر	\N	027992	1998-10-01	\N	\N	1	903006732	1	111	قطاع غزة	\N	1954-06-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13766	سمر رجب سعيد عطاالله	\N	013766	1993-05-03	\N	\N	1	911444545	1	111	قطاع غزة	\N	1969-05-24	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
202010	محمد زياد احمد حجو	\N	202010	2005-06-25	\N	\N	1	900615303	1	111	قطاع غزة	\N	1977-12-17	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22821	انور محمد حسن موسي	\N	022821	1996-10-01	\N	\N	1	965000656	1	111	قطاع غزة	\N	1966-07-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16451	سامي محمود احمد السيد	\N	016451	1995-07-03	\N	\N	1	958981458	1	111	قطاع غزة	\N	1959-12-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25145	نبيل محمد حسين سرور	\N	025145	1997-09-16	\N	\N	1	906257548	1	111	قطاع غزة	\N	1965-06-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
22539	لؤي يوسف عمر شعث	\N	022539	1996-08-01	\N	\N	1	0	1	111	قطاع غزة	\N	1969-10-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
40194	حسن محمد محمود عقل	\N	040194	2000-03-01	\N	\N	1	410011761	1	111	قطاع غزة	\N	1962-11-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42068	زياد محمد ابراهيم البرعي	\N	042068	2000-10-11	\N	\N	1	916805773	1	111	قطاع غزة	\N	1960-03-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13768	وائل مصطفي عبدالهادي شلايل	\N	013768	1993-02-17	\N	\N	1	910808062	1	111	قطاع غزة	\N	1968-10-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28208	احمد حسن عقيل زقوت	\N	028208	1998-10-01	\N	\N	1	976515148	1	111	قطاع غزة	\N	1952-01-04	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
37099	انور مصلح عبدالله سعده	\N	037099	1999-05-02	\N	\N	1	901930354	1	111	قطاع غزة	\N	1956-07-09	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44527	محمد سليمان محمد الحساينه	\N	044527	2001-04-05	\N	\N	1	901655209	1	111	قطاع غزة	\N	1977-07-08	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11587	حازم محمد هاشم الفرا	\N	011587	1988-01-17	\N	\N	1	963528542	1	111	قطاع غزة	\N	1968-02-15	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26432	شرف عياده عليان ابوالقمبز	\N	026432	1998-02-01	\N	\N	1	912271012	1	111	قطاع غزة	\N	1969-12-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204568	محمود رفيق حسن المدهون	\N	204568	2006-05-09	\N	\N	1	906729421	1	111	قطاع غزة	\N	1981-12-23	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28441	خميس علي فضل الجماصي	\N	028441	1998-11-01	\N	\N	1	922505375	1	111	قطاع غزة	\N	1954-11-07	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28207	رجب العبدحسن السلطان	\N	028207	1998-10-01	\N	\N	1	902305747	1	111	قطاع غزة	\N	1955-03-21	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	7	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18041	مازن محمود محمد على حسن	\N	018041	1994-08-01	\N	\N	1	908170848	1	111	قطاع غزة	\N	1967-08-18	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42986	اياد عبدالكريم محمود الهرش	\N	042986	2000-01-02	\N	\N	1	900846585	1	111	قطاع غزة	\N	1975-03-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21836	ذياب محمد ذياب ابوعيده	\N	021836	1996-11-09	\N	\N	1	912038270	1	111	قطاع غزة	\N	1968-04-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42386	محمد ابراهيم محمد ابوعوض	\N	042386	2000-11-01	\N	\N	1	953891678	1	111	قطاع غزة	\N	1967-01-28	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
47127	رائد محمد سليم صادق	\N	047127	2003-03-08	\N	\N	1	935042069	1	111	قطاع غزة	\N	1969-02-12	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42373	رجائي سعيد عبدالعزيز عفانه	\N	042373	2000-11-01	\N	\N	1	915678577	1	111	قطاع غزة	\N	1963-12-14	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44060	اسامه محمود محمد ابوحطب	\N	044060	2001-04-01	\N	\N	1	410533616	1	111	قطاع غزة	\N	1969-08-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42375	يوسف سالم سلامه ابوغرابه	\N	042375	2000-11-01	\N	\N	1	974990236	1	111	قطاع غزة	\N	1962-07-16	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14899	عبدالكريم فراج علي بكرون	\N	014899	1994-10-08	\N	\N	1	923317564	1	111	قطاع غزة	\N	1965-12-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45843	عصام مصطفي جوده جوده	\N	045843	2002-02-02	\N	\N	1	966357691	1	111	قطاع غزة	\N	1966-05-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25100	سناء محمود محمد ابوحطب	\N	025100	1997-09-01	\N	\N	1	411081169	1	111	قطاع غزة	\N	1967-04-14	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
41091	حنان خليل طه سمور	\N	041091	2000-04-01	\N	\N	1	412347692	1	111	قطاع غزة	\N	1973-10-25	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26882	محمود ابراهيم علي خضر	\N	026882	1998-03-25	\N	\N	1	910090513	1	111	قطاع غزة	\N	1969-11-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15049	ماهر عطا روبين الفرام	\N	015049	1994-04-03	\N	\N	1	919263673	1	111	قطاع غزة	\N	1974-04-24	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11356	نسرين عيسي نصيف الفار	\N	011356	1987-09-09	\N	\N	1	976373274	1	111	قطاع غزة	\N	1966-09-11	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14881	رفيق صبحي سلامه الشيخ خليل	\N	014881	1994-09-01	\N	\N	1	923315253	1	111	قطاع غزة	\N	1956-10-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21371	محمود ابراهيم عواد الشريف	\N	021371	1996-10-01	\N	\N	1	911492148	1	111	قطاع غزة	\N	1950-10-06	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8079	سليم عوض سليم الخضري	\N	008079	1978-07-30	\N	\N	1	941548026	1	111	قطاع غزة	\N	1956-11-05	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
43135	محمد يوسف احمد السباح	\N	043135	2000-12-01	\N	\N	1	914579230	1	111	قطاع غزة	\N	1972-08-10	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
38534	انمار محمد حسين ابوحويج	\N	038534	1999-08-01	\N	\N	1	412327447	1	111	قطاع غزة	\N	1961-12-02	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
48625	محمد محمد رزق ابراهيم سالم	\N	048625	2004-01-24	\N	\N	1	0	1	111	قطاع غزة	\N	1972-08-31	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204567	حسام الدين نوفل حسن المبيض	\N	204567	2006-05-09	\N	\N	1	800900284	1	111	قطاع غزة	\N	1982-11-21	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
27993	ممدوح محمود محمد ابوعسكر	\N	027993	1998-09-20	\N	\N	1	901007039	1	111	قطاع غزة	\N	1975-10-29	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12049	عدنان سلمي عبدالكريم النجار	\N	012049	1989-08-01	\N	\N	1	963527932	1	111	قطاع غزة	\N	1958-10-11	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44055	عاطف اسماعيل محمد عزام	\N	044055	2001-04-01	\N	\N	1	912282290	1	111	قطاع غزة	\N	1972-01-20	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13480	اكرم صبحي عبدو الشاعر	\N	013480	1994-07-01	\N	\N	1	919611590	1	111	قطاع غزة	\N	1972-08-22	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
42389	عبدالقادر حافظ محمد ورش اغا	\N	042389	2000-11-01	\N	\N	1	916315633	1	111	قطاع غزة	\N	1952-05-09	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28521	عطا شعبان محمد بكر	\N	028521	1998-11-01	\N	\N	1	928000736	1	111	قطاع غزة	\N	1952-04-19	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	8	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44054	محمد سالم ابراهيم ابوعمره	\N	044054	2001-04-01	\N	\N	1	908986581	1	111	قطاع غزة	\N	1981-04-16	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
45662	رافت محمد حسن محسن	\N	045662	2002-04-01	\N	\N	1	901357715	1	111	قطاع غزة	\N	1976-09-02	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
44059	ايمن محمد حماد ابومغيصيب	\N	044059	2001-04-01	\N	\N	1	411914534	1	111	قطاع غزة	\N	1975-12-27	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	81601	2016-03-09	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
69317	لبنى اسحاق سليمان البرهم	\N	069317	2000-09-18	\N	\N	1	904615879	\N	\N	\N	\N	1976-11-10	2321058	0598521771	\N	librahim@palpost.ps	2	1	12	660001904213	1005	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
92710	ليث عدنان عبدالقادر دراغمه	\N	092710	2009-02-19	\N	\N	1	936295062	\N	\N	\N	\N	1983-07-08	\N	0562500050	\N	laith.daraghmeh@mtit.pna.ps	1	2	6	443563	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\\x	444	\N	\N	\N
73603	ماجد عبدالكريم عبدالله ابوالعيلة	\N	073603	1995-11-01	\N	\N	1	962878062	\N	\N	\N	\N	1970-06-27	\N	\N	\N	\N	1	2	6	608703	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
67958	مازن عزيز علي اللحام	\N	067958	2000-01-16	\N	\N	1	411457385	\N	\N	\N	\N	1974-02-01	\N	\N	\N	\N	1	2	6	713932	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
73479	ماهر امين صبحي الخطيب	\N	073479	1995-07-01	\N	\N	1	987577566	\N	\N	\N	\N	1973-06-09	\N	0568500172/0599	\N	\N	1	2	12	660000345792	1011	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	9	\N	218	\N	\N	\N
91991	ماهر حلمي فياض القيسي	\N	091991	2008-11-04	\N	\N	1	900384413	\N	\N	\N	\N	1976-04-03	\N	\N	\N	\N	1	2	12	660000240869	1011	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
69944	ماهر علي محمود محمد	\N	069944	2001-03-31	\N	\N	1	907995500	\N	\N	\N	\N	1978-08-01	\N	\N	\N	\N	1	2	6	648253	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
67798	ماهر فايز حماد الاحمد	\N	067798	1999-12-07	\N	\N	1	962917316	\N	\N	\N	\N	1975-05-28	\N	0562500130	\N	maher@mtit.gov.ps	1	2	9	2169693	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\\x	207	\N	\N	\N
81557	مجدولين عبدالله احمد عباس	\N	081557	2003-10-06	\N	\N	1	411721103	\N	\N	\N	\N	1972-12-14	\N	\N	\N	\N	2	2	6	628719	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
68712	مجدي احمد عبدالفتاح عبدالحميد	\N	068712	1994-03-01	\N	\N	1	998831572	\N	\N	\N	\N	1961-04-06	\N	\N	\N	\N	1	2	6	650762	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
73619	مجدي عامر اسعد زيداني	\N	073619	1994-11-01	\N	\N	1	900106147	\N	\N	\N	\N	1976-03-22	\N	\N	\N	\N	1	2	12	660000114375	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
81637	محمد احمد سليم الاحمد	\N	081637	2003-11-05	\N	\N	1	907722896	\N	\N	\N	\N	1981-02-08	\N	\N	\N	\N	1	2	6	579812	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	\N
69903	محمد اسحق عز الدين سدر	\N	069903	2001-03-18	\N	\N	1	908152010	\N	\N	\N	\N	1970-12-15	\N	\N	\N	\N	1	2	1	1010778	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
73516	محمد اسماعيل محمد المغربي	\N	073516	1996-07-15	\N	\N	1	944015338	\N	\N	\N	\N	1966-07-19	\N	\N	\N	\N	1	2	6	652509	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
73563	محمد انيس يوسف سحويل	\N	073563	1995-12-07	\N	\N	1	938500543	\N	\N	\N	\N	1956-05-05	\N	\N	\N	\N	1	2	9	2011109	\N	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
92425	محمد جعفر صادق سعاده	\N	092425	2008-12-24	\N	\N	1	906487343	\N	\N	\N	\N	1981-04-29	\N	0562504912	\N	paltelpost@hotmail.com	1	2	6	155507	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
73549	محمد حمدان محمد احمد	\N	073549	1980-09-01	\N	2020-05-20	1	958363269	\N	\N	\N	\N	1960-05-20	\N	0562500169	\N	\N	1	2	12	301427400	1003	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	102	\N	\N	\N
95820	محمد خيري عيد علوي	\N	095820	2009-09-14	\N	\N	1	936504455	\N	\N	\N	\N	1983-08-31	\N	\N	\N	\N	1	2	9	2028941	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
69501	محمد سعيد سليمان سعيد	\N	069501	2000-09-18	\N	\N	1	936415165	\N	\N	\N	\N	1968-01-20	\N	\N	\N	\N	1	2	6	646791	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
76729	محمد صالح احمد عيسى	\N	076729	2010-02-16	\N	\N	1	938377694	\N	\N	\N	\N	1962-01-21	\N	\N	\N	\N	1	2	6	302919	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N
73611	محمد صالح محمد اعبيد	\N	073611	1982-11-01	\N	\N	1	988655445	\N	\N	\N	\N	1962-01-29	\N	\N	\N	\N	1	2	12	303012240	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
23427	محمد عادل محمد ياسين	\N	023427	1997-03-10	\N	\N	1	411860133	\N	\N	\N	\N	1971-02-09	\N	\N	\N	\N	1	2	12	660001015729	\N	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	8	\\x	\N	\N	\N	\N
69489	محمد عبدالله محمد سعده	\N	069489	2000-09-18	\N	\N	1	904505435	\N	\N	\N	\N	1977-12-03	\N	\N	\N	\N	1	2	11	28464	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
165411	محمد عدنان محمد داود	\N	165411	2016-02-01	\N	\N	1	907112585	\N	\N	\N	\N	1978-03-28	\N	\N	\N	\N	1	2	12	660000958263	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
38641	محمد علي محمد  العايدي	\N	038641	1999-08-01	\N	\N	1	411776529	\N	\N	\N	\N	1958-07-05	\N	0599408754	\N	malaidyy10@gmail.com	1	2	13	000222953	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	71	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\\x	\N	\N	\N	\N
68373	محمد علي ابراهيم شحاده	\N	068373	2000-04-01	\N	\N	1	905141776	\N	\N	\N	\N	1979-10-18	\N	\N	\N	\N	1	2	6	624398	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
69313	محمد علي محمد علي دلال	\N	069313	2000-09-16	\N	\N	1	907931364	\N	\N	\N	\N	1973-04-05	\N	\N	\N	\N	1	2	9	2087469	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
67694	محمد كنعان مصطفى محمد مصطفى	\N	067694	1999-11-01	\N	2018-12-15	1	969571850	\N	\N	\N	\N	1958-12-15	\N	\N	\N	\N	1	2	13	475377	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
63206	محمد محمود سعيد ابوعيفان	\N	063206	1998-01-01	\N	\N	1	986352359	\N	\N	\N	\N	1964-12-13	\N	0599731726	\N	M.M.S.BH@hotmail.com	1	2	12	302726720	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
68798	محمد محمود سلامه ربعي	\N	068798	2000-06-15	\N	\N	1	984761262	\N	\N	\N	\N	1958-05-03	\N	\N	\N	\N	1	2	12	660000277126	1006	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
66534	محمد محمود محمد ابوسليمان	\N	066534	1999-04-01	\N	\N	1	904599057	\N	\N	\N	\N	1979-11-06	092930020	0599231948	\N	\N	1	2	12	303696950	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	092909249	\N	\N	\N
73550	محمد مرتضى عبدالجليل صالح	\N	073550	1979-07-01	\N	\N	1	991796384	\N	\N	\N	\N	1961-04-01	\N	\N	\N	\N	1	2	12	303176680	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
63203	محمد هزيم يعقوب عثمان	\N	063203	1998-01-01	\N	\N	1	938512241	\N	\N	\N	\N	1961-05-18	\N	\N	\N	\N	1	2	9	2016713	1004	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
82162	محمد يوسف خليل جبران	\N	082162	2004-02-19	\N	\N	1	990593899	\N	\N	\N	\N	1973-12-08	\N	0562500226	\N	mjobran@palpost.ps	1	2	6	709590	1014	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\\x	\N	\N	\N	\N
163681	محمد يوسف محمد خليل	\N	163681	2015-03-15	\N	\N	1	967853003	\N	\N	\N	\N	1964-08-16	\N	0562504793	\N	nagmat binia@gmail.com	1	2	13	001360899	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
80898	محمود احمد عبدالرحيم صافي	\N	080898	2003-02-03	\N	\N	1	909519381	\N	\N	\N	\N	1971-03-13	\N	\N	\N	\N	1	2	12	660001906623	1005	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
73517	محمود جاسر محمود عفونه	\N	073517	1996-07-15	\N	\N	1	957597784	\N	\N	\N	\N	1961-04-01	\N	\N	\N	\N	1	2	12	660000990442	1008	\N	13	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	170	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	\N
69503	محمود حسن خليل محمد	\N	069503	2000-09-18	\N	\N	1	975365867	\N	\N	\N	\N	1962-06-02	\N	\N	\N	\N	1	2	6	518925	1010	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
163543	محمود طارق محمود هريش	\N	163543	2015-02-11	\N	\N	1	914114590	\N	\N	\N	\N	1973-05-05	\N	\N	\N	\N	1	2	12	660001874004	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
160008	محمود عادل حمدان الجبالي	\N	160008	2013-11-20	\N	\N	1	942811191	\N	\N	\N	\N	1968-01-05	\N	\N	\N	\N	1	2	12	303328340	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
163695	محمود فارس محمد يونس	\N	163695	2015-03-18	\N	\N	1	914235080	\N	\N	\N	\N	1986-05-12	\N	\N	\N	\N	1	2	1	1807411	1001	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
163539	محمود نادر محمود الفارس	\N	163539	2015-02-11	\N	\N	1	913205837	\N	\N	\N	\N	1982-04-23	\N	0599998748	\N	mfares@palpost.ps	1	2	5	707485	1009	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	092514055	\N	\N	\N
154539	مراد عبدالجابر محمود عاروري	\N	154539	2011-06-28	\N	\N	1	851312256	\N	\N	\N	\N	1986-07-20	\N	0562500024	\N	muradarouri@gmail.com	1	2	2	1028674	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	504	\N	\N	\N
63169	مراد عبدالرحيم احمد برهوم	\N	063169	1997-12-06	\N	\N	1	901162453	\N	\N	\N	\N	1974-01-01	\N	\N	\N	\N	1	2	6	658395	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	90	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
80658	مراد مصطفى محمود صالح زيتاوي	Morad Zaitawi	080658	2002-10-29	\N	\N	1	900369281	\N	\N	\N	\N	1976-11-08	\N	\N	\N	\N	1	2	2	1021703	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\\x	\N	\N	\N	\N
91999	مراد هشام صالح الفروخ	\N	091999	2008-11-09	\N	\N	1	905190021	\N	\N	\N	\N	1979-02-01	\N	\N	\N	\N	1	2	12	660000364207	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N
73620	مصباح حسين احمد راميه	\N	073620	1990-10-01	\N	\N	1	988807640	\N	\N	\N	\N	1960-11-06	\N	\N	\N	\N	1	2	9	2009805	1004	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
73419	مصطفى اسعد مصطفى ابوحسن	\N	073419	1985-12-01	\N	\N	1	947760591	\N	\N	\N	\N	1963-01-18	\N	\N	\N	\N	1	2	7	99185	1013	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
69963	مصطفى محمود يوسف ابونفيسه	\N	069963	2001-04-01	\N	\N	1	965178544	\N	\N	\N	\N	1965-04-16	\N	\N	\N	\N	1	2	6	408288	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	122	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
73458	مصطفي حسن محمد داود	\N	073458	1995-10-01	\N	\N	1	925059255	\N	\N	\N	\N	1972-03-17	\N	\N	\N	\N	1	2	12	301146670	1004	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
81468	مصعب طلال محمد سدر	\N	081468	2003-08-26	\N	\N	1	911669745	\N	\N	\N	\N	1981-12-15	\N	0568813335	\N	\N	1	2	13	000303054	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	022225089	\N	\N	\N
151843	معاذ بهجات مصطفى دراغمه	Moath Bahjat Mustaf Daraghmeh	151843	2011-01-16	2011-01-16	\N	1	941135170	1	114	طوباس - حي الحاوز	114	1984-11-01	0599437819	0562500091	0599437819	mdaraghmeh@mtit.pna.ps	1	2	12	660002597926	1003	2	1	D0433358AA	O+	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	شارع الحاوز	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	100	\N	\N	2	Y	N	N	\N	0	\N	\N	\N	Y	\N	8	\\x	\N	\N	\N	\N
163542	معتصم فخري محمد دويكات	\N	163542	2015-02-11	\N	\N	1	907926133	\N	\N	\N	\N	1981-11-16	\N	\N	\N	\N	1	2	12	660000786508	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	13	\N	\N	\N	\N	\N
151404	منال علي سليمان عبدالرحمن	\N	151404	2010-12-30	\N	\N	1	411993710	\N	\N	\N	\N	1968-06-22	\N	\N	\N	\N	2	2	13	453064	1012	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
60309	موسى امين موسى الغوج	\N	060309	1987-11-01	\N	\N	1	978775930	\N	\N	\N	\N	1959-03-04	2323156	0599171872	\N	mghoj@palpost.ps	1	2	13	000151096	1005	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
64694	موسى عيسى عبدالحميد الزعاقيق	\N	064694	1998-03-01	\N	\N	1	902603380	\N	\N	\N	\N	1978-10-14	\N	\N	\N	\N	1	2	9	2214855	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
64444	موسى محمد احمد العسعس	\N	064444	1998-04-16	\N	\N	1	987140654	\N	\N	\N	\N	1964-06-06	\N	\N	\N	\N	1	2	12	660000412724	1011	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
157104	مي عبدالمجيد حسن حبايب	\N	157104	2012-07-01	\N	\N	1	983182965	\N	\N	\N	\N	1981-07-26	\N	\N	\N	\N	2	1	11	42142	1001	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
101751	مي عمر أحمد سمور	\N	101751	2010-07-25	\N	\N	1	936852409	\N	\N	\N	\N	1984-06-16	\N	\N	\N	\N	2	2	2	1035967	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
155103	ميساء محمد أمين يوسف منير	\N	155103	2011-09-27	\N	\N	1	026292169	\N	\N	\N	\N	1973-04-12	\N	0562500044	\N	maysa@mtit.gov.ps	2	2	13	000230537	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\N	415	\N	\N	\N
95827	ميسم جهاد خليل البابا	\N	095827	2009-09-14	\N	\N	1	850900275	\N	\N	\N	\N	1985-02-19	\N	\N	\N	\N	2	2	11	22295	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
66959	ميسون خميس محمود الحمد	\N	066959	1999-06-01	\N	\N	1	954562138	\N	\N	\N	\N	1959-04-11	\N	\N	\N	\N	2	2	12	303233960	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
17358	ميمون رفيق حسين نزال	\N	017358	1995-10-01	\N	2019-01-20	1	960715274	\N	\N	\N	\N	1959-01-20	\N	\N	\N	\N	1	2	6	540049	1010	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
69881	ناجح محمود احمد مصطفى	\N	069881	2001-03-03	\N	\N	1	999726946	\N	\N	\N	\N	1963-02-11	\N	\N	\N	\N	1	2	6	519023	1007	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
80123	نادية ابراهيم محمد عريان	\N	080123	2001-07-28	\N	\N	1	410619308	\N	\N	\N	\N	1967-09-18	092322176	0562500207	\N	nadia.nabulsi.arian@gmail0com	2	2	7	13663	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	092366748	\N	\N	\N
160657	ناريمان قاسم عبدالكريم عزام	\N	160657	2014-02-24	\N	\N	1	411515638	\N	\N	\N	\N	1983-04-25	\N	0562504623	\N	nazzam@mtit.gov.ps	2	2	6	255539	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
69962	ناصر طاهر يوسف شوخه	\N	069962	2001-04-07	\N	\N	1	954454351	\N	\N	\N	\N	1974-01-06	\N	0562500211	\N	naser@palpost.ps	1	2	9	2020471	1005	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	022322574	\N	\N	\N
81638	ناصر فرح حسن جبارين	\N	081638	2003-11-01	\N	\N	1	963060405	\N	\N	\N	\N	1968-02-25	\N	\N	\N	\N	1	2	6	581998	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	\N
64908	ناصر يوسف جبر الكعكي	\N	064908	1998-08-15	\N	\N	1	943447417	\N	\N	\N	\N	1974-07-02	\N	\N	\N	\N	1	2	12	660000384283	1006	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\\x	\N	\N	\N	\N
73613	نائل وجيه جبر ابراهيم	\N	073613	1976-10-01	\N	\N	1	991785361	\N	\N	\N	\N	1959-03-01	092515717	0599381767	\N	n-jaber@palpost.ps	1	2	12	303037160	1009	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\\x	271	\N	\N	\N
73528	نجيب شاكر محمود بدر	\N	073528	1989-02-07	\N	\N	1	933403172	\N	\N	\N	\N	1961-06-18	\N	\N	\N	\N	1	2	9	2211020	1006	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
82980	نداء علي حمزة السخن	\N	082980	2005-07-04	\N	\N	1	410811509	\N	\N	\N	\N	1972-03-21	\N	\N	\N	\N	2	2	8	302362	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
101758	نديم محمد محمد بزار	\N	101758	2010-07-26	\N	\N	1	921727749	\N	\N	\N	\N	1983-06-22	\N	\N	\N	bazzar@palpost.ps	1	2	13	1211195	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
61589	نزيه محمود حسين حسن بلوطه	\N	061589	1997-04-01	\N	\N	1	906819123	\N	\N	\N	\N	1980-03-29	\N	\N	\N	\N	1	2	13	000210616	1001	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N
82753	نسرين توفيق عبدطقش	\N	082753	2004-12-27	\N	\N	1	026293621	\N	\N	\N	\N	1973-11-06	\N	\N	\N	niss.tawfiq@palpost.ps	2	2	6	611671	1003	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
69492	نسرين محمود عبدالعزيز النجمي	\N	069492	2000-09-18	\N	\N	1	900381187	\N	\N	\N	\N	1976-11-29	\N	\N	\N	\N	2	1	12	660000376965	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
69318	نسيم احمد محمد احمد زبن	\N	069318	2000-09-16	\N	\N	1	994313153	\N	\N	\N	\N	1974-02-24	\N	\N	\N	\N	1	2	2	3212197	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
160005	نسيم أحمد سلامه جمعة	\N	160005	2013-11-20	\N	\N	1	984633206	\N	\N	\N	\N	1974-08-29	\N	\N	\N	\N	1	2	1	1200528	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
73409	نصري جميل خليل لحلوح	\N	073409	1985-04-01	\N	2018-03-01	1	968265280	\N	\N	\N	\N	1961-05-07	\N	\N	\N	\N	1	2	12	660001022989	1013	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	8	\N	\N	\N	\N	\N
73615	نضال احمد رشيد سليمان	\N	073615	1984-08-01	\N	\N	1	942810532	\N	\N	\N	\N	1965-03-17	\N	\N	\N	\N	1	2	12	303045760	1008	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\\x	\N	\N	\N	\N
68061	نضال حسان محمود الحليفاوي	\N	068061	2000-02-13	\N	\N	1	989215736	\N	\N	\N	\N	1962-07-28	\N	\N	\N	\N	1	2	1	1013543	1006	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
26098	نضال عبدالرحمن احمد ابوعلي	\N	026098	1997-10-01	\N	\N	1	948027776	\N	\N	\N	\N	1964-06-28	\N	\N	\N	\N	1	2	9	2164156	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
91802	نهال راشد أحمد دار خويره	\N	091802	2008-10-30	\N	\N	1	944399567	\N	\N	\N	\N	1983-06-13	\N	\N	\N	\N	2	2	6	674566	1004	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N
68797	نهيد جمعه عثمان ابوصلاح	\N	068797	2000-06-15	\N	\N	1	913496345	\N	\N	\N	\N	1977-08-27	\N	\N	\N	\N	1	2	11	45475	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
92000	نور الدين احمد محمود العمله	\N	092000	2008-11-04	\N	\N	1	000442033	\N	\N	\N	\N	1971-01-05	\N	\N	\N	\N	1	2	1	1016915	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
80101	نور الدين هاشم عطية عوض	\N	080101	2001-04-23	\N	\N	1	900382441	\N	\N	\N	\N	1977-01-15	\N	\N	\N	\N	1	2	6	773724	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
163679	نور فاروق عبدحج عبد	Noor Farouq Abed Haj- Abed	163679	2015-03-15	\N	\N	1	920285814	\N	\N	عرابة	1102	1982-10-25	042469249	\N	\N	noorhajabed@yahoo.com	2	1	6	598820	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	103	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	12	\\x	\N	\N	\N	\N
82915	هادي جعفر صادق السعاده	\N	082915	2005-06-09	\N	\N	1	906487335	\N	\N	\N	\N	1979-05-21	\N	\N	\N	\N	1	2	6	155115	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\\x	\N	\N	\N	\N
97242	هبه عبدالرحمن نمر الناصر (تيم)	\N	097242	2010-04-01	\N	\N	1	907587513	\N	\N	\N	\N	1981-10-08	\N	\N	\N	htayem@mtit.pna.ps	2	2	2	1022712	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
98024	هبه عمر محمود ابوهاني	\N	098024	2010-04-27	\N	\N	1	913211561	\N	\N	\N	\N	1981-05-26	\N	0562500184	\N	Heba_abuhani_981@hotmail.com	2	1	6	526732	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	1302	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
205220	هديل حسن عيسى حمدان	\N	205220	2007-01-16	\N	\N	1	901059485	\N	\N	\N	\N	1975-03-11	\N	\N	\N	hhamdan@mtit.gov.ps	2	2	10	41768	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N
73425	هشام ابراهيم شحاده مخامره	\N	073425	1994-10-01	\N	\N	1	966812695	\N	\N	\N	\N	1969-08-04	\N	\N	\N	\N	1	2	13	001300614	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
69887	هشام حسني صالح ملحم	\N	069887	2001-02-20	\N	\N	1	950950782	\N	\N	\N	\N	1961-06-19	\N	\N	\N	\N	1	2	9	2166926	1013	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
81464	همام رشدي عبدالجبار محمد	\N	081464	2003-08-26	\N	\N	1	901099895	\N	\N	\N	\N	1975-09-21	\N	0599378352	\N	hdraidi@palpost.ps	1	2	8	0041049	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\\x	0562500142	\N	\N	\N
91994	هنيه صالح زيدان عجاج	\N	091994	2008-11-09	\N	2018-02-20	1	994243392	\N	\N	\N	\N	1962-03-17	\N	\N	\N	\N	2	2	5	205745	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	1	\N	\N	\N	\N	\N
69697	هيا جمال طاهر موسى	\N	069697	2000-12-05	\N	\N	1	901173906	\N	\N	\N	\N	1978-02-17	\N	\N	\N	\N	2	2	6	648377	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N
100684	هيثم زكريا عبدالقادر الشريف	\N	100684	2000-04-24	\N	\N	1	942567959	\N	\N	\N	\N	1974-09-27	\N	\N	\N	\N	1	2	6	759416	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
80155	وحيد فواز فايز قدورة	\N	080155	2001-08-01	\N	\N	1	902072651	\N	\N	\N	\N	1970-09-10	\N	\N	\N	\N	1	2	9	2087585	1008	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
162294	وداع محمد ابراهيم لدادوه	\N	162294	2014-11-16	\N	\N	1	946450244	\N	\N	\N	\N	1986-05-10	\N	\N	\N	\N	2	2	12	304323000	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
73472	وسيم علي حسن نوفل	\N	073472	1980-05-01	\N	\N	1	922170246	\N	\N	\N	\N	1958-12-04	\N	\N	\N	\N	1	2	13	400171	1010	\N	10	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	5	\N	\N	\N	\N	\N
82336	وضاح خالد حمد الله ابوحجله	\N	082336	2004-05-29	\N	\N	1	902936848	\N	\N	\N	\N	1978-05-06	\N	0569000004	\N	wabuhijleh@mtit.gov.ps	1	2	6	634978	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\\x	312	\N	\N	\N
101755	وفاء محمد حمزه عواد	\N	101755	2010-07-25	\N	\N	1	410127559	\N	\N	\N	\N	1980-07-14	\N	0562500179	\N	wafaa@palpost.ps	2	2	6	166211	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\\x	106	\N	\N	\N
98026	وليد خالد هارون مرعي	\N	098026	2010-04-27	\N	\N	1	941514382	\N	\N	\N	\N	1984-11-22	\N	0562500146	\N	waleed@palpost.ps	1	2	12	660001812653	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\\x	022409446	\N	\N	\N
73502	ياسر احمد محمد غانم	\N	073502	1981-11-01	\N	\N	1	944583087	\N	\N	\N	\N	1960-01-26	\N	\N	\N	\N	1	2	6	660853	1004	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
95816	ياسر محمد سليم وحيدي	\N	095816	2009-09-14	\N	\N	1	946052149	\N	\N	\N	\N	1985-06-23	\N	0562500045	\N	ywaheidi@mtit.gov.ps	1	2	7	168608	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\\x	416	\N	\N	\N
69308	يحيى حامد محمد الأقرع	\N	069308	2000-09-16	\N	2018-10-22	1	992400358	\N	\N	\N	\N	1959-09-26	\N	\N	\N	\N	1	2	6	560264	1009	\N	13	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
155095	يعقوب عبد العزيز عبدالرزاق القواسمه	\N	155095	2011-09-18	\N	\N	1	907605992	\N	\N	\N	\N	1970-06-01	02-2222955	0599838252	\N	\N	1	2	12	660000381349	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	02-2228900	\N	\N	\N
73580	يوسف محمد الحاج محمد ابوشرار	\N	073580	1980-10-01	\N	2018-04-26	1	972900823	\N	\N	\N	\N	1961-02-15	\N	\N	\N	\N	1	2	9	2211030	1006	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
82039	يوسف محمد سري شاكر عمرو	\N	082039	2004-01-17	\N	\N	1	031530892	\N	\N	\N	\N	1979-01-21	0562500237	0595036734	\N	yousef@palpost.ps	1	2	13	000312899	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\\x	02-2228900	\N	\N	\N
64320	يوسف محمد عبدعوض	\N	064320	1998-02-01	\N	\N	1	944795269	\N	\N	\N	\N	1965-02-15	\N	\N	\N	\N	1	2	1	1205818	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
153432	يوسف محمد يوسف ارتاحي	Yousef Mohammad Ertahi	153432	2011-04-20	\N	\N	1	946466588	1	106	\N	1106	1986-07-05	\N	0562500082	\N	yertahi@mtit.gov.ps	1	1	6	171196	1001	\N	1	\N	A+	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\\x	221	\N	\N	\N
69847	يونس احمد عبدالفتاح عوض	\N	069847	2001-02-07	\N	\N	1	939258372	\N	\N	\N	\N	1975-01-30	\N	\N	\N	\N	1	2	13	001301959	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
81661	ابراهيم خالد ابراهيم ابولبده	\N	081661	2003-11-20	\N	\N	1	904974656	\N	\N	\N	\N	1977-10-21	092930226	0562500138	\N	iabulebdah@palpost.ps	1	2	6	550017	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	092940020	\N	\N	\N
165412	ابراهيم محمد عبداللطيف عمرو	\N	165412	2016-02-01	\N	\N	1	942915109	\N	\N	\N	\N	1968-06-06	\N	\N	\N	\N	1	2	13	000302491	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
82876	ابراهيم محمد علي يوسف	\N	082876	2005-03-15	\N	\N	1	905746152	\N	\N	\N	\N	1978-02-10	022324819	0562500129	\N	ibmy78@hotmail.com	1	2	12	303971200	1005	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\\x	022324041	\N	\N	\N
65341	احمد حسن عبدالقادر حماد	\N	065341	1998-11-01	\N	\N	1	904643574	\N	\N	\N	\N	1980-02-26	\N	\N	\N	\N	1	2	1	1200416	1011	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\\x	\N	\N	\N	\N
69883	احمد سعود احمد منيزل	\N	069883	2001-03-14	\N	\N	1	410446801	\N	\N	\N	\N	1963-01-01	\N	\N	\N	\N	1	2	6	570812	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	273	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N
91627	احمد عبدالجبار عثمان جبريل	\N	091627	2008-09-29	\N	\N	1	946787769	\N	\N	\N	\N	1968-12-10	\N	\N	\N	\N	1	2	8	0203119	1009	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
69484	احمد عطا علي السلامين	\N	069484	2000-09-16	\N	\N	1	987256591	\N	\N	\N	\N	1965-08-12	\N	\N	\N	\N	1	2	1	1014908	1006	\N	13	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
75627	احمد عمر سليمان صفوري	\N	075627	2011-09-18	\N	\N	1	994328375	\N	\N	\N	\N	1971-11-02	\N	\N	\N	\N	1	2	6	505907	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
69815	احمد محمود احمد علي ديريه	\N	069815	2000-09-16	\N	\N	1	900721382	\N	\N	\N	\N	1975-07-02	\N	\N	\N	\N	1	2	6	714033	1011	\N	10	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
69431	اسامه يوسف حسن مشاقي	\N	069431	2000-11-08	\N	\N	1	900054008	\N	\N	\N	\N	1973-10-08	\N	\N	\N	\N	1	2	6	438605	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
96765	اسلام صبحي سليم عارضه	\N	096765	2010-03-10	\N	\N	1	851569434	\N	\N	\N	\N	1986-06-10	\N	\N	\N	\N	2	2	3	29594	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N
160009	اسماعيل مصطفى اسماعيل نمر	\N	160009	2013-11-20	\N	\N	1	995116589	\N	\N	\N	\N	1968-07-10	\N	\N	\N	\N	1	2	9	2178107	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
73406	اشرف رشاد يونس زاهده	\N	073406	1995-04-01	\N	\N	1	900014663	\N	\N	\N	\N	1975-05-16	\N	\N	\N	\N	1	2	9	2211022	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
150250	اشرف عبدالحليم كامل فرسخ	\N	150250	2010-08-16	\N	\N	1	906947593	\N	\N	\N	\N	1974-10-10	\N	\N	\N	\N	1	2	13	000425386	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
91800	اكرام راشد احمد خويره	\N	091800	2008-10-30	\N	\N	1	904006087	\N	\N	\N	\N	1979-06-02	\N	\N	\N	\N	2	2	6	618051	1001	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
160006	اكرم محمد محمود اشنيور	\N	160006	2013-11-20	\N	\N	1	950276592	\N	\N	\N	\N	1970-07-02	\N	\N	\N	\N	1	2	2	5512595	1006	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\\x	\N	\N	\N	\N
153939	الاء أحمد سليم جيوسي	\N	153939	2011-05-24	\N	\N	1	946646288	\N	\N	\N	\N	1987-05-15	\N	\N	\N	\N	2	2	2	3226077	1001	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
67099	امجد رشدي صادق الحنبلي	\N	067099	1999-07-12	\N	2018-02-13	1	980252688	\N	\N	\N	\N	1962-07-29	\N	\N	\N	\N	1	2	8	355187	1003	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	2	\N	\N	\N	\N	\N
82894	امجد عمر أحمد بدير	\N	082894	2005-04-28	\N	\N	1	901235424	\N	\N	\N	\N	1977-01-01	\N	\N	\N	\N	1	2	6	527699	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
69490	امجد فضل عبدالمنعم الهشلمون	\N	069490	2000-09-16	\N	\N	1	933344996	\N	\N	\N	\N	1975-02-06	\N	\N	\N	\N	1	2	1	1014485	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
81612	امل عبدفهمي احمد	\N	081612	2003-11-02	\N	\N	1	851312322	\N	\N	\N	\N	1983-08-28	\N	\N	\N	\N	2	2	1	1710981	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N
82828	أمينة محمد حمدان ابوحديد	\N	082828	2005-02-01	\N	\N	1	907613806	\N	\N	\N	\N	1981-01-30	\N	\N	\N	\N	2	2	6	313963	1014	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
73427	انور محمد محمود شنيور	\N	073427	1995-05-01	\N	\N	1	950276568	\N	\N	\N	\N	1962-07-31	\N	\N	\N	\N	1	2	6	793570	1006	\N	8	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
64327	اوس محمد علي عوض	\N	064327	1998-01-01	\N	\N	1	901404681	\N	\N	\N	\N	1967-11-26	\N	\N	\N	\N	1	2	9	2016017	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
85648	اياد ابراهيم حسن عريقات	\N	085648	2005-09-06	\N	\N	1	905734406	\N	\N	\N	\N	1980-08-09	\N	\N	\N	ierqat@mtit.pna.ps	1	2	6	317037	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N
69488	اياد هشام رشاد خطيب التميمي	\N	069488	2000-09-18	\N	\N	1	990728966	\N	\N	\N	\N	1973-04-14	\N	0599231933	\N	ikhatib@palpost.ps	1	2	6	755101	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	11	\\x	2227966	\N	\N	\N
69757	ايفا جميل عبدالعزيز تلول	\N	069757	2001-02-20	\N	\N	1	946834223	\N	\N	\N	\N	1971-05-07	\N	\N	\N	\N	2	2	8	0200709	1009	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
68379	ايمان تحسين محمد اسعد	\N	068379	2000-04-01	\N	2018-02-13	1	995470275	\N	\N	\N	\N	1966-09-24	\N	\N	\N	\N	2	1	6	509261	1007	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	3	\N	\N	\N	\N	\N
85233	ايناس طلال قاسم قادوس	\N	085233	2015-03-30	\N	\N	1	905036125	\N	\N	\N	\N	1977-12-30	\N	\N	\N	\N	2	2	6	633850	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
66806	ايهاب رشاد عيد قريع	\N	066806	1999-05-01	\N	\N	1	900384728	\N	\N	\N	\N	1976-09-15	\N	\N	\N	\N	1	2	6	305293	1014	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	\N
91624	ايهاب محمد عبددغرة	\N	091624	2008-09-29	\N	\N	1	851611897	\N	\N	\N	\N	1978-02-20	\N	\N	\N	\N	1	2	6	196982	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N
62180	ايهاب محمد فايز صبيح	\N	062180	1997-08-02	\N	\N	1	919071365	\N	\N	\N	\N	1972-05-29	\N	\N	\N	\N	1	2	6	178269	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	13	\\x	\N	\N	\N	\N
73587	ايوب احمد عبدالحميد عبيدة	\N	073587	1986-06-01	\N	\N	1	988605465	\N	\N	\N	\N	1965-01-15	\N	\N	\N	\N	1	2	12	301021380	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
92467	أحمد جميل أحمد عاصي	\N	092467	2009-01-13	\N	\N	1	852232321	\N	\N	\N	\N	1985-03-18	\N	\N	\N	\N	1	2	6	197479	1014	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
97611	أحمد عبدالمطلب حسين السيد / البرغوثي	\N	097611	2010-04-07	\N	\N	1	851612895	\N	\N	\N	\N	1983-04-19	\N	0562500135	\N	ahmad@palpost.ps	1	2	6	252459	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	2409441	\N	\N	\N
92781	أحمد فوزي مفلح ابوبكر	\N	092781	2009-03-01	\N	\N	1	904726965	\N	\N	\N	\N	1979-02-16	\N	0562500090	\N	ahmad.mtit@gmail.com	1	2	12	660002695359	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	6	\N	313	\N	\N	\N
155154	أحمد محمد محمود الهدار	\N	155154	2011-10-05	\N	2016-11-09	1	919772368	\N	\N	\N	\N	1980-12-30	\N	\N	\N	\N	1	2	12	660000232181	\N	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N
92564	أحمد يوسف محمد الحاج علي	\N	092564	2009-01-18	\N	\N	1	963605175	\N	\N	\N	\N	1967-08-02	\N	\N	\N	\N	1	2	12	660000842524	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
160007	ايمن قاسم محمد جبر	\N	160007	2013-11-20	\N	\N	1	953536703	\N	\N	\N	\N	1971-08-05	\N	\N	\N	\N	1	2	12	303655471	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
97267	باسل رئيس احمد عنتر	\N	097267	2010-04-01	\N	\N	1	905002168	\N	\N	\N	\N	1978-05-08	0599389817	0562500137	\N	basel@palpost.ps	1	2	6	520589	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	02-2943333/215	\N	\N	\N
81284	باسل عريف روبين الجعبري	\N	081284	2003-05-01	\N	\N	1	851091132	\N	\N	\N	\N	1977-11-28	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	276	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
82403	باسم حسني  محمد حمودي	\N	082403	2004-06-01	\N	\N	1	981350267	\N	\N	\N	\N	1960-11-15	\N	\N	\N	\N	1	2	12	660000891746	1001	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	60	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N
93361	باسم موسى مسعود عيسى	\N	093361	2009-04-01	\N	\N	1	945485209	\N	\N	\N	\N	1970-01-04	\N	\N	\N	\N	1	2	13	404053	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
81110	بثينة عبدالمنعم محمد حمدان	\N	081110	2011-06-02	\N	\N	1	410128037	\N	\N	\N	\N	1982-06-09	\N	0599258505	\N	bothaina@mtit.pna.ps	2	2	6	639221	1001	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	10	\N	503	\N	\N	\N
68079	بلال عبدالغني مصطفى كنعان	\N	068079	2000-02-12	\N	2020-06-25	1	944746031	\N	\N	\N	\N	1960-06-25	\N	\N	\N	\N	1	2	6	508213	1010	\N	4	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
95828	بلال عرفات حسن مرمش	\N	095828	2009-09-14	\N	\N	1	066212911	\N	\N	\N	\N	1983-06-24	\N	\N	\N	engbilalmarmash@gmail.com	1	2	12	660001811339	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N
68085	بلال محمود محمد ناصر	\N	068085	2000-02-12	\N	\N	1	932895162	\N	\N	\N	\N	1967-01-07	\N	\N	\N	\N	1	2	12	660000834939	1013	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
81441	بلال مصطفى محمد عنايا	\N	081441	2003-08-26	\N	\N	1	981482102	\N	\N	\N	\N	1969-10-13	\N	\N	\N	\N	1	2	12	303715650	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
80897	بيان صالح احمد برهوم	\N	080897	2003-01-29	\N	\N	1	904130739	\N	\N	\N	\N	1979-01-15	\N	0562500136	\N	bayan@palpost.ps	1	2	12	660000907607	1003	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\\x	120	\N	\N	\N
69319	بيسان كمال رزق عبدالرازق	\N	069319	2000-09-18	\N	\N	1	904998580	\N	\N	\N	\N	1980-01-23	\N	\N	\N	\N	2	2	6	518910	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
69406	تغريد رمضان عبدالله ابوسمره	\N	069406	2000-09-18	\N	\N	1	974740433	\N	\N	\N	\N	1964-02-25	\N	\N	\N	\N	2	2	12	302943010	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
152216	تمارا فاروق نظمي باكير	\N	152216	2011-02-01	\N	\N	1	850446337	\N	\N	\N	\N	1986-07-13	\N	\N	\N	\N	2	2	6	168122	1001	\N	8	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
165	جيهان محمد سلمان حسين	\N	000165	2016-11-16	\N	\N	1	901207050	1	109	فلسطين بيت جالا	1109	1978-01-07	\N	\N	\N	\N	2	1	12	660003035573	1011	\N	3	\N	\N	\N	163679	2016-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	PS78CAAB082000000660003035573
166	حمزه خليل ابراهيم الطل	\N	000166	2016-11-16	\N	\N	1	853949931	1	104	الخليل - الظاهرية	1104	1993-03-26	\N	\N	\N	\N	1	1	11	300593	1006	\N	1	\N	\N	\N	163679	2016-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS54HBHO041203005930424500000
99	محمد عمر رمضان محيسن	\N	000099	2012-05-16	\N	\N	1	854708682	\N	\N	\N	\N	1992-07-19	\N	\N	\N	\N	1	1	13	2206892	1001	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	6	N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\\x	\N	\N	\N	\N
96205	مريم محمد أحمد دار عيسى	\N	096205	2009-12-22	2010-12-22	\N	1	910909191	\N	\N	\N	\N	1986-05-17	\N	\N	\N	\N	2	2	6	183940	1001	\N	1	\N	\N	\N	98	2016-12-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
158004	علا عفيف برهان ياسين	\N	158004	2012-08-22	2012-08-20	2013-08-20	1	903914059	\N	\N	\N	\N	1979-02-25	\N	\N	\N	\N	2	2	7	140058	1001	\N	9	\N	\N	\N	98	2016-12-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
43714	عدنان موسى اسماعيل الشيخ	\N	043714	2001-03-01	\N	\N	1	982063018	\N	\N	\N	\N	1972-05-14	02-2720590	0562500134	\N	asheish@mtit.gov.ps	1	2	6	706663	1006	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	02-2751452	\N	\N	\N
151403	احمد توفيق احمد صوافطه	\N	151403	2010-12-30	\N	\N	1	908326812	\N	\N	\N	\N	1973-03-21	092547510	0592385195	\N	asawafta@palpost.ps	1	2	13	453658	1012	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	215	\N	\N	\N
80834	ثائر ابراهيم عمر الزير	\N	080834	2003-01-20	\N	\N	1	944817287	\N	\N	\N	\N	1975-12-13	\N	\N	\N	\N	1	2	1	1701390	1003	\N	9	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	N	\N	4	\\x	\N	\N	\N	\N
179	يوسف محمد يوسف يعقوب	\N	000179	2016-12-06	\N	\N	1	412580003	1	101	كفر رمان	4	1985-02-19	\N	0599807060	\N	yousef.yacoub@palpost.ps	1	1	6	187540	1004	\N	9	662278	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	6	\\x	\N	\N	\N	ps85arab000000009420187540570
166759	شادي تيسير عيسى زغب	\N	166759	2016-12-04	\N	\N	1	938616489	\N	\N	\N	\N	1988-11-03	\N	\N	\N	shzaghab@palpost.ps	1	1	6	363844	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	2004	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	16	\N	\N	\N	\N	\N
166761	عماد قاسم صبري خليفة	\N	166761	2016-12-04	\N	\N	1	946306446	\N	\N	\N	\N	1984-11-26	0595222468	0562504644	\N	Emadkhalifeh@mtit.gov.ps	1	2	13	454426	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	236	\N	\N	\N
73439	حسني علي احمد ابوغنام	\N	073439	1990-11-01	\N	\N	1	943810465	\N	\N	\N	\N	1969-11-06	\N	0597145523	\N	husniawawda@yahoo.com	1	2	9	2002214	1004	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
98025	نهاد عزت محمد حسين	\N	098025	2010-04-27	\N	\N	1	904076437	\N	\N	\N	\N	1976-09-08	\N	\N	\N	\N	1	2	6	507801	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	\N	\N	\N	\N
167034	سامح محمد اسعد قبها	\N	167034	2017-02-08	\N	\N	1	852127604	\N	\N	\N	\N	1993-01-15	042460171	0597129703	\N	sqabaha@mtit.gov.ps	1	2	\N	\N	1001	\N	1	\N	\N	\N	163679	2017-02-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183	طارق اشرف عزيز حامد	\N	000183	2016-12-06	\N	2017-08-01	1	911058634	\N	\N	\N	\N	1986-09-08	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	163679	2017-03-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
167117	انعام محمد أحمد سطرية	\N	167117	2017-02-27	\N	\N	1	852231257	\N	\N	\N	\N	1989-08-09	\N	0562504628	\N	isatarya@mtit.gov.ps	2	1	\N	\N	1001	\N	1	\N	\N	\N	163679	2017-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	523	\N	\N	\N
82751	سمر ضيف الله محمد صلاح الدين	\N	082751	2004-12-28	\N	\N	1	902902790	\N	\N	\N	\N	1976-11-21	\N	\N	\N	sdaif@mtit.gov.ps	2	1	12	301474280	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
184	محمد سهيل صبحي عابد	\N	000184	2017-06-05	\N	\N	1	402676407	\N	\N	\N	\N	1997-11-16	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	163679	2017-06-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185	محمود خالد ابراهيم ياسين	\N	000185	2016-12-06	\N	2018-01-01	1	980368377	\N	\N	\N	\N	1969-01-16	\N	\N	\N	\N	1	2	\N	\N	\N	\N	3	\N	\N	\N	163679	2017-06-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186	ابراهيم اكرم ابراهيم مهنا	\N	000186	2016-12-18	\N	2018-01-01	1	906214234	\N	\N	\N	\N	1980-10-17	\N	\N	\N	\N	1	2	\N	\N	\N	\N	3	\N	\N	\N	163679	2017-06-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187	سالم أحمد سالم أبوسالم	\N	000187	2017-07-26	\N	\N	1	860054543	1	101	ابوشخيدم-رام الله	1101	1994-12-20	\N	\N	\N	\N	1	1	13	3201013	1001	\N	3	843711	\N	\N	163679	2017-07-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS56PALS045832010130993000000
188	شاكر ناصر شاكر ناصر	\N	000188	2017-07-30	\N	2017-08-07	1	851129452	1	101	مخيم الجلزون -	21	1993-03-26	\N	0568552196	0599368007	zlo0olz@hotmail.com	1	1	6	00000000903019264557	1004	2	8	\N	AB	\N	151843	2017-07-30	\N	1	0	0	0	0	\N	\N	\N	 المسجد القديم	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
122	عماد مصطفى محمود زيتاوي	\N	000122	2011-06-21	\N	\N	1	946589942	1	106	بيت ليد-طولكرم	1106	1984-12-06	092681854	0562500150	\N	imadzt@gmail.com	1	1	13	426463	1007	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\\x	92684235	\N	\N	PS09PALS046704264630993000000
189	محمد زهير عبدالرحمن قواسمة	\N	000189	2017-09-05	\N	\N	1	401587738	1	104	الخليل	1104	1995-09-25	\N	\N	\N	\N	1	1	13	3302298	1006	\N	8	876939	\N	\N	163679	2017-09-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	ps06pals04473302298099300000
190	وسيم جاد الله سليم عابد	\N	000190	2017-09-05	\N	2018-06-10	1	410886295	1	101	المزرعه الشرقية	1101	1995-11-08	\N	\N	\N	\N	1	1	1	1727425	1004	\N	8	\N	\N	\N	163679	2017-09-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	ps63pibc084317274250033101000
191	مصطفى محمد مصطفى هريش	\N	000191	2017-09-27	\N	\N	1	854855236	1	101	بيتونيا - رام الله	1101	1994-01-27	\N	\N	\N	mustafa.harish27@gmail.com	1	1	13	2222368	1004	\N	8	\N	\N	\N	163679	2017-09-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps24pals045822223680993000000
192	ميسر ضرار معروف خليل	\N	000192	2017-10-01	\N	\N	1	853873958	1	106	عتيل - طولكرم	1106	1992-05-23	\N	\N	\N	\N	2	1	6	538774	1001	\N	8	\N	\N	\N	163679	2017-10-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps50arb000000009270538774570
193	مجد زاهي عبدالكريم السعدي	\N	000193	2017-09-28	\N	\N	1	851749838	1	107	جنين	\N	1989-09-14	0569838511	0599838511	\N	\N	1	1	13	614174	1013	\N	1	\N	\N	\N	163679	2017-10-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps54pals0471061417409930000000
194	بشار زياد عبدابوعواد	\N	000194	2017-10-12	\N	\N	1	852271410	1	11	بير زيت	1103	1989-08-02	\N	\N	\N	\N	1	1	15	1700953	1004	\N	8	\N	\N	\N	163679	2017-10-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps46aldn047517009530420010000
195	احمد اياد سمير عبدالدايم	\N	000195	2017-11-01	\N	\N	1	402607733	\N	\N	رام الله	1101	1997-06-26	\N	\N	\N	\N	1	1	1	1727734	1003	\N	8	\N	\N	\N	163679	2017-11-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps14pibc084317277340033101
196	أمير جميل محمد خالد	\N	000196	2017-11-01	\N	2017-11-07	1	401641394	\N	\N	\N	\N	1995-12-02	\N	\N	\N	\N	1	1	\N	\N	1003	\N	8	\N	\N	\N	163679	2017-11-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
197	عدي اياد فايز ابوغانم	\N	000197	2017-11-27	\N	\N	1	402679542	1	101	البيرة - رام الله	1101	1997-11-19	\N	\N	\N	\N	1	1	1	1727789	1003	\N	3	848317	\N	\N	163679	2017-12-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	19	ps6pibc08431727789003310100
198	صلاح واصف احمد ابوصفية	\N	000198	2017-10-22	\N	\N	1	859963241	1	108	بديا - سلفيت	1102	1994-12-28	\N	0597861916	\N	\N	1	1	1	1860300	1009	\N	8	\N	\N	\N	163679	2017-12-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps98pibc084418603000033100000
200	بهاء الدين عبدالحميد نعيم صقر	\N	000200	2017-12-19	\N	\N	1	854753183	1	101	رام الله البيرة مخيم الأمعري	1101	1993-08-08	\N	\N	\N	\N	1	1	19	10010221	1003	\N	3	\N	\N	\N	163679	2017-12-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps645afk100100000780000099371
167865	كريم مصطفى جاسر دار بدر	Kareem Mustafa Jaser Dar Bader	167865	2017-12-12	2018-12-12	\N	1	412211823	1	101	دير السودان - رام الله	4	1988-06-07	022868885	0562504665	\N	kmustafa@mtit.pna.ps	1	1	13	237343	1001	3	1	782448	B+	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	الرئيسي	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	1	\N	303	2.33	\N	\N
66785	محمد عبدالمنان محمد بدر	\N	066785	1999-05-02	\N	\N	1	948299953	\N	\N	\N	\N	1971-05-20	092671710	0562500053	\N	mbader@mtit.gov.ps	1	2	4	3107909	1010	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\\x	410	\N	\N	\N
201	سارة محمد شفيق حلاق	\N	000201	2018-01-18	\N	2018-03-21	1	854338464	\N	\N	\N	\N	1992-11-27	022810742	0597979878	\N	\N	2	2	13	1221044	1001	\N	8	\N	\N	\N	163679	2018-01-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
203	احمد محمد عبداللطيف كنعان	\N	000203	2017-12-17	\N	\N	1	944807965	1	103	البيره -سطح مرحبا	1101	1994-08-20	\N	0599679723	\N	\N	1	1	1	1723134	1001	\N	13	\N	\N	\N	163679	2018-01-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	N	\N	3	\N	\N	\N	\N	ps68pibc084317231340033100000
210	نضال محمد حسين فرح	\N	000210	2018-02-19	\N	\N	1	853589505	1	115	اريحا	1115	1992-10-27	\N	\N	\N	\N	1	1	13	169111	1005	\N	8	\N	\N	\N	163679	2018-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	ps46pals045601691110993000000
213	معاذ جبرين محمد اليوسف	\N	000213	2018-02-13	\N	\N	1	853179810	1	102	كفر حارس	8	1991-08-01	092513029	0569010700	\N	muath.alyousef@palpost.ps	1	1	6	194868	1003	\N	8	\N	\N	\N	163679	2018-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	5	\N	259	\N	\N	ps22arab000000009030194868570
219	ابراهيم عزام سليم سنيورة	\N	000219	2018-02-18	\N	2020-03-09	1	851139246	1	106	طولكرم	6	1988-08-29	\N	\N	\N	\N	1	2	13	446518	1007	\N	8	\N	\N	\N	163679	2018-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	ps42pals046704465180993000000
216	رشيد زياد رشيد دراغمة	\N	000216	2018-02-18	\N	\N	1	860082478	1	114	طوباس	1102	1994-07-19	\N	\N	\N	\N	1	1	13	461523	1012	\N	1	723482	\N	\N	163679	2018-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps03pals046804615230993000000
167999	معاذ محي الدين عرابي حجي	\N	167999	2018-01-10	2017-01-10	\N	1	853249977	\N	\N	\N	\N	1993-05-06	\N	0562504614	\N	moathhaji@mtit.gov.ps	1	1	\N	\N	1001	\N	1	\N	\N	\N	163679	2018-01-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	460	\N	\N	\N
168139	عاصم هاشم عبدالغني يمك	\N	168139	2018-02-12	2018-02-12	\N	1	859016545	\N	\N	\N	\N	1993-05-07	\N	\N	\N	\N	1	1	13	2178342	1001	\N	1	\N	\N	\N	163679	2018-02-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
168092	ناديه نبيل عبدالكريم صوان	\N	168092	2018-01-24	\N	\N	1	850893926	\N	\N	\N	\N	1985-04-05	\N	\N	\N	\N	2	2	1	1727863	1001	\N	8	\N	\N	\N	163679	2018-01-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
168140	محمد محمود عبدالهادي العصافرة	\N	168140	2018-02-12	\N	\N	1	859864324	\N	\N	\N	\N	1995-06-03	\N	0562504625	\N	masafrah@mtit.gov.ps	1	1	1	1727933	1001	\N	8	\N	\N	\N	163679	2018-02-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	319	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
224	محمد عايد يوسف دار اعرج	\N	000224	2018-03-05	\N	\N	1	854273679	1	101	عبوين -رام الله	1101	1992-01-01	\N	\N	\N	\N	1	1	13	1214161	1001	\N	8	782030	\N	\N	163679	2018-03-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps21pals045812141610993000000
168091	محمد عصام محمد ابوفرحة	\N	941139	2018-01-22	\N	\N	1	941139651	\N	\N	\N	\N	1984-07-22	\N	\N	\N	\N	1	2	1	1404486	1001	\N	8	\N	\N	\N	163679	2018-01-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
229	عمر يوسف علي ابولطيفة	\N	000229	2018-03-14	\N	\N	1	859839896	1	109	بيت لحم -بيت ساحور	1109	1985-08-04	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	163679	2018-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
228	احمد فواز سامي محمود	\N	000228	2018-03-14	\N	\N	1	854360542	\N	\N	\N	1106	1991-09-22	\N	\N	\N	\N	1	1	15	255018	1007	\N	3	\N	\N	\N	163679	2018-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS08ALDN02202550180420061000
6611	عمر شاكر شاهين	\N	006611	1967-06-10	\N	\N	1	96926611	\N	\N	\N	\N	1922-01-20	\N	\N	\N	\N	1	2	\N	\N	\N	\N	4	\N	\N	\N	151843	2018-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	2	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
154	أشرف علي أسعد دمج	\N	000154	2016-11-02	\N	\N	1	852571157	1	107	جنين -مخيم جنين-حارة الدوح	1107	1991-07-07	\N	\N	\N	\N	1	1	13	1351510	1013	\N	3	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	PS32PALS044913515100993000000
118	وئام عمر حسن قب	\N	000118	2009-03-16	\N	\N	1	959120031	1	106	دير غصون	4	1975-06-06	\N	\N	\N	\N	2	2	2	3225466	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS06AISB030320110303225466001
61	خالد عزمي حسين حمدان	\N	000061	2013-09-09	\N	\N	1	852481928	1	101	رام الله	1101	1989-06-14	\N	\N	\N	\N	1	2	7	105411	1003	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS37TNBC000000000001001750603
67	عبدالفتاح نمر خراز	\N	000067	2001-02-15	\N	2018-09-20	1	931840359	1	101	سلواد	1101	1958-09-20	\N	\N	\N	\N	1	2	6	625669	1004	\N	4	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	18	\N	\N	\N	\N	PS79ARAB000000009030625669570
78	هيثم عليان احمد طنطور	\N	000078	2008-10-19	\N	\N	1	992530378	1	101	رام الله-نعلين	1103	1987-07-25	\N	\N	\N	\N	1	1	11	63523	1004	3	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS18HBHO040100635230424500000
85	جهاد جواد عبدالجواد عصفور	\N	000085	2012-05-21	\N	\N	1	850493263	1	101	رام الله سنجل	1101	1989-04-20	\N	0598558856	\N	jehad.asfour89@gmail	1	1	13	2206332	1004	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	022809008	\N	\N	PS06PALS045822063320993000000
5	عز الدين عماد فارس فارس	\N	000005	2014-01-08	\N	2018-09-13	1	859411258	1	115	اريحا فارعة الجفتلك	1102	1995-09-12	\N	\N	\N	\N	1	1	6	365437	1005	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	16	\N	\N	\N	\N	PS89ARAB000000009550365437570
220	سليمان حسن مصطفى شراكة	\N	000220	2018-04-11	\N	\N	1	854407707	\N	\N	\N	\N	1993-01-20	\N	\N	\N	\N	1	1	13	1231558	1003	\N	3	\N	\N	\N	163679	2018-04-11	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS47PALS045812315580993000000
223	خالد محمد جميل سيف	\N	000223	2018-04-11	\N	\N	1	402792543	\N	\N	\N	\N	1997-07-16	\N	\N	\N	\N	1	1	13	2220518	1001	\N	12	\N	\N	\N	163679	2018-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps70pals045822205180993000000
184833	محمد عبدداود جودة	\N	184833	2022-12-29	\N	\N	1	852402783	\N	\N	\N	\N	1990-07-14	\N	\N	\N	\N	1	2	15	\N	1001	\N	1	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
595	مجدي ابراهيم عيد الهذالين	\N	000595	2023-01-05	\N	\N	1	407435999	\N	\N	\N	\N	2002-02-13	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2023-01-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
57	بلال محمد صبحي ياسين سماحة	\N	000057	2012-01-22	\N	\N	1	938383569	1	101	رام الله - عين سينيا	1101	1984-06-20	022811348	\N	\N	\N	1	1	13	2205236	1001	\N	3	704257	A+	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS58PALS045822052360993000000
141	حسين صالح بدوي ناصر	\N	000141	2009-01-05	\N	\N	1	946629672	1	102	نابلس المخفية	1102	1965-07-25	\N	\N	\N	\N	1	2	6	430426	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS14ARAB000000009020430426570
28	ريما عبدالحميد ذيب عبدالحميد	\N	000028	2002-10-15	\N	\N	1	924638588	1	109	الخضر - بيت لحم	1109	1966-05-25	\N	\N	\N	\N	2	2	6	701112	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS58ARAB000000009050701112570
596	جواهر موسى ارحيل نجاده	\N	000596	2023-01-05	\N	\N	1	401139274	\N	\N	\N	\N	1997-04-28	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2023-01-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
598	محمد اسعاف انور الخطيب	\N	000598	2023-01-25	\N	\N	1	401516554	\N	\N	\N	\N	1995-12-05	05962111541	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-01-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
129	محمد رشيد محمد عامر	\N	000129	2003-03-10	\N	\N	1	986695252	1	105	كفر قدوم	1105	1959-04-14	\N	\N	\N	\N	1	2	12	303773500	1010	\N	4	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS38CAAB080800000660000961628
185783	دعاء عليان عبدالجمل	\N	185783	2023-01-26	\N	\N	1	850321720	\N	\N	\N	\N	1988-10-03	\N	\N	\N	\N	2	4	\N	\N	1006	\N	1	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
59	مرفت حسن أحمد فوراني	\N	000059	2013-03-06	\N	\N	1	410643316	1	101	بيتونيا	4	1969-01-01	\N	\N	\N	\N	2	2	6	677831	1003	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	N	N	\N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS80ARAB000000009490677831570
73	محمد اسماعيل محمود عدس	\N	000073	2006-02-25	\N	\N	1	993486125	1	101	عبوين - رام الله	1101	1960-09-23	02-2807201	\N	\N	\N	1	2	12	401046	1004	\N	4	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	4	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
11	محمد عيسى عبدالحميد العزبة	\N	000011	2004-05-01	\N	\N	1	984228163	1	104	بيت امر - الخليل	1104	1968-03-24	2521783	\N	\N	\N	1	2	9	2217957	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	6	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
1024	سوزي ابراهيم حسن ابوشعبان	\N	001024	2023-01-30	\N	\N	1	931689996	\N	\N	\N	\N	1983-02-23	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-01-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1023	سناء علي مصطفى خطيب	\N	001023	2023-01-30	\N	\N	1	914591953	\N	\N	\N	\N	1986-04-20	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-01-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
60000	ليث دراغمة الترددات	\N	060000	2023-02-01	\N	\N	1	518962333	\N	\N	\N	\N	2023-02-01	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	167865	2023-02-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185663	آيه عوني صالح الصالحي	\N	185663	2023-01-23	\N	\N	1	854407442	1	101	رام الله -مخيم الأمعري	1103	1993-02-22	022976091	0595181631	\N	\N	2	2	6	194710	1001	\N	1	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS59ARAB000000009030194710570
185666	أسيل طالب محمد مناع	\N	185666	2023-01-23	\N	\N	1	402673958	\N	\N	\N	\N	1997-11-14	\N	\N	\N	amanna@mtit.gov.ps	2	1	\N	6600604086465	1001	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS13CAAB080500000660004086465
185664	بيان محمد فؤاد داود	\N	185664	2023-01-23	\N	\N	1	403871296	\N	\N	\N	\N	1998-08-05	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-01-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185654	منار ماهر طه سلايمه	\N	185654	2023-01-23	\N	\N	1	853824522	\N	\N	\N	\N	1992-06-11	\N	\N	\N	manaro632@gmail.com	1	2	13	2309090	1006	\N	1	\N	\N	\N	163679	2018-10-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS04PALS044723090900993000000
208	نائل حسان عبدابوحمد	\N	000208	2017-12-31	\N	\N	1	850463761	1	102	نابلس	1102	1988-04-18	\N	\N	\N	\N	1	2	7	48585	\N	\N	3	9306200	\N	\N	163679	2018-02-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps65tnbc000000000001003960923
185665	نعيم جهاد نمر أبوحسان	\N	185665	2023-01-23	\N	\N	1	401402441	1	102	سلفيت	1102	1996-04-23	\N	\N	\N	\N	1	1	15	213657	1009	\N	1	687662	\N	\N	163679	2018-03-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	ps78aldn043002136570420017000
73470	وائل حسين محمود عوض	\N	073470	1996-10-15	\N	\N	1	953227873	\N	\N	\N	\N	1961-03-25	2282320	0598037675	\N	w_awad@palpost.ps	1	2	12	660000401412	1006	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	2228015	\N	\N	\N
185661	محمد عاطف توفيق شوبكي	\N	185661	2023-01-23	\N	\N	1	851786509	\N	\N	\N	\N	1990-08-30	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185672	محمد شعلان فزاع الجعبري	\N	185672	2023-01-23	\N	\N	1	851949024	1	104	\N	\N	1989-02-02	\N	0562504699	\N	mjabari@palpost.ps	1	1	1	1120841	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	02-2228900	\N	\N	PS43PIBC083911208410033101000
185788	وسام أحمد خميس أبوزخم	\N	185788	2023-01-31	\N	\N	1	410792914	\N	\N	\N	\N	1996-01-14	\N	\N	\N	\N	1	1	\N	291228	1006	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS32PINV09040291280030031000
185778	قصي نشأت صادق عواد	\N	185778	2023-01-29	\N	\N	1	858516180	1	107	كفيرت-جنين	1107	1994-12-24	\N	0562504768	\N	\N	1	1	13	2351982	1013	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	PS37PALS044923519820993000000
185708	عز الدين رياض عمر ارزيقات	\N	185708	2023-01-23	\N	\N	1	854742517	\N	\N	\N	\N	1994-02-16	022245071	562504928	\N	\N	1	1	\N	3318214	1006	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	022245254	\N	\N	PS9PALS044733182140993000000
81601	محمد عاطف محمد ميداني	Mohammed Atef Midani	081601	2003-11-01	2009-01-01	\N	1	410638902	1	101	رام الله	151501	1980-10-16	0562500072	0562500072	\N	m.midani@mtit.gov.ps	1	2	6	670576	1001	\N	1	\N	B+	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	رام الله	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	14	\\x	230	\N	4	\N
103	محمد عطا تميم تميمي	\N	000103	2013-11-01	\N	2017-03-12	1	852453570	\N	\N	\N	\N	1989-07-14	\N	\N	\N	\N	1	1	6	229616	1001	\N	3	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	N	N	\N	0	\N	\N	\N	6	N	\N	\N	\N	0	\N	\N	\N	N	\N	15	\\x	\N	\N	\N	\N
2760	ايمان بهيج شريف ابوعواد (مراقب)	\N	002760	2017-12-13	\N	\N	1	859826182	\N	\N	\N	\N	1995-07-04	\N	\N	\N	\N	1	1	\N	\N	1001	\N	9	\N	\N	\N	167865	2018-05-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
231	عز الدين اياد انور الشريف	\N	000231	2018-05-21	\N	\N	1	854725017	\N	\N	\N	\N	1995-05-21	\N	\N	\N	\N	1	1	13	3310029	1006	\N	8	\N	\N	\N	163679	2018-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	19	PS58PALS044733100290993000000
232	مؤمن عرفات ديب مسودة	\N	000232	2018-05-24	\N	2018-05-25	1	402720551	\N	\N	\N	\N	1997-08-29	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	163679	2018-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
217	جميل محمد جميل شواهنة	\N	000217	2018-02-18	\N	\N	1	854422953	1	105	قلقيلية	1105	1993-03-13	\N	\N	\N	\N	1	1	13	422190	1010	\N	3	6699333	\N	\N	163679	2018-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	ps84pals046604221900993000000
73438	عماد عبدالله علي اسليم	\N	073438	1991-05-01	\N	\N	1	934160870	\N	\N	\N	\N	1971-02-04	022814133	0562500256	\N	iattary@palpost.ps	1	2	12	660001858769	1009	\N	3	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	610	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\\x	022310621	\N	\N	\N
233	مروان جاسر محمد سباتين	\N	000233	2018-07-03	2018-06-25	\N	1	404364515	\N	\N	\N	\N	1999-02-25	\N	\N	\N	\N	1	1	12	660003485714	1011	\N	8	\N	\N	\N	163679	2018-07-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	19	PS80CAAB0820000006600003485714
85104	محمد عبدالله مسعود درويش	\N	085104	2018-05-01	\N	\N	1	905551651	\N	\N	\N	\N	1978-01-15	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2018-07-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
234	محمد احمد ابراهيم ابوغليون	\N	000234	2018-07-01	\N	\N	1	403196785	\N	\N	\N	\N	1998-01-17	\N	\N	\N	\N	1	1	15	0111197	1006	\N	1	\N	\N	\N	163679	2018-07-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS88ALDNO47201111970420010000
235	حمزه محمد حسن جلايطة	\N	000235	2018-07-24	\N	2018-08-07	1	401391362	\N	\N	\N	\N	1999-02-12	\N	\N	\N	\N	1	1	\N	\N	\N	\N	12	\N	\N	\N	163679	2018-07-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
237	محمود هاني عبدالجليل دلاش	\N	000237	2018-08-07	\N	\N	1	860092485	\N	\N	\N	\N	1994-10-13	\N	\N	\N	\N	1	1	\N	\N	\N	\N	3	\N	\N	\N	163679	2018-08-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
238	هيثم محمد عايش ابوحور	\N	000238	2018-09-02	2018-08-30	2018-12-09	1	859550030	\N	\N	\N	\N	1994-06-21	\N	\N	\N	\N	1	1	\N	\N	1011	\N	8	\N	\N	\N	163679	2018-09-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	19	\N
199	محمود شحدة احمد رجوب	\N	000199	2017-12-18	\N	\N	1	938392297	1	104	دورا -الخليل	1104	1984-07-02	\N	\N	\N	\N	1	1	13	2300299	1006	\N	8	\N	\N	\N	163679	2017-12-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	N	N	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	ps03pals044723002990993000000
239	مصعب خالد حسن الفواقسة	\N	000239	2018-09-12	\N	2018-09-25	1	860117217	\N	\N	\N	\N	1994-07-25	\N	\N	\N	\N	1	1	\N	\N	1011	\N	8	\N	\N	\N	163679	2018-09-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
243	عبدالقادر فهمي صالح ابولبدة	\N	000243	2021-11-08	\N	\N	1	901048553	\N	\N	\N	\N	1976-02-17	\N	0598624525	\N	\N	1	1	\N	\N	1010	\N	8	\N	\N	\N	163679	2018-09-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
241	منذر حسن حمودة شيخ قاسم	\N	000241	2018-09-20	\N	\N	1	406749234	\N	\N	\N	\N	2001-01-21	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	163679	2018-09-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
245	ايوب صبحي حسن وهدان	\N	000245	2018-09-30	\N	\N	1	400631172	\N	\N	\N	\N	1995-05-08	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	163679	2018-09-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
246	عمر عبدالمنعم حمد نصر	\N	000246	2018-10-07	\N	\N	1	920102225	\N	\N	\N	\N	1982-11-01	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	163679	2018-10-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
247	اسراء احسان يعقوب ديك	\N	000247	2018-10-07	\N	\N	4	858844889	\N	\N	\N	\N	1993-11-26	\N	\N	\N	\N	2	2	\N	\N	1001	\N	4	\N	\N	\N	163679	2018-10-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
73473	نشات حسن عبداحمد ابومحسن	\N	073473	1982-04-01	\N	\N	1	982674137	\N	\N	\N	\N	1962-06-14	092574987	0569-0599-32555	\N	nashat5555@hotmail.com	1	2	12	305131590	1012	\N	4	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\\x	042517550	\N	\N	\N
249	خليل سعيد صقر شعراوي	\N	000249	2018-10-23	\N	\N	1	402449896	\N	\N	\N	\N	1997-07-09	\N	\N	\N	\N	1	1	13	633514	\N	\N	12	\N	\N	\N	163679	2018-10-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS32PALS04720633514099300000
250	بهاء الدين محمد نعمان جندي	\N	000250	2018-10-23	\N	\N	1	403855174	\N	\N	\N	\N	1998-06-10	\N	\N	\N	\N	1	1	13	637618	1006	\N	1	\N	\N	\N	163679	2018-10-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	PS54PALS047206376180993000000
253	محمد محمود حسن دراويش	\N	000253	2018-11-18	\N	2019-01-06	1	405066267	\N	\N	\N	\N	1999-10-03	\N	\N	\N	\N	1	1	13	633900	\N	\N	8	\N	\N	\N	163679	2018-11-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS59PALS047206339000993000000
254	سامر عبدالرحيم جمعة حمدان	\N	000254	2018-11-18	\N	\N	1	853928943	\N	\N	\N	\N	1991-10-20	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	163679	2018-11-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
92003	سامي يوسف شاكر زيبادي	\N	092003	2008-11-04	\N	\N	1	906463617	\N	\N	\N	\N	1977-08-14	\N	0599113960/0562	\N	szebadi@palpost.ps	1	2	2	1034563	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\\x	240	\N	\N	\N
256	محمد صلاح الدين محمد سرحان	\N	000256	2018-12-23	\N	\N	1	402795231	\N	\N	\N	\N	1997-07-26	\N	0599597959	\N	msarhan@mtit.gov.ps	1	1	\N	\N	1003	\N	3	\N	\N	\N	163679	2018-12-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	121	\N	\N	\N
257	رامي محمود راجح قراريه	\N	000257	2018-12-23	\N	\N	1	850499195	\N	\N	\N	\N	1986-09-17	\N	\N	\N	\N	1	2	\N	\N	1013	\N	1	\N	\N	\N	163679	2018-12-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
258	كرم محمد حسن دراويش	\N	000258	2018-12-23	\N	\N	1	404720286	\N	\N	\N	\N	1999-06-10	\N	\N	\N	\N	1	1	13	633899	1006	\N	1	\N	\N	\N	163679	2018-12-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	PS24PALS047206338990993000000
259	أيوب موسى علي الذويب	\N	000259	2019-01-03	\N	\N	1	401446919	\N	\N	\N	\N	1996-04-22	\N	\N	\N	\N	1	1	\N	\N	1011	\N	8	\N	\N	\N	163679	2019-01-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
169356	عدنان عمار سامي الخندقجي	\N	169356	2018-12-16	\N	\N	1	852214493	1	106	طولكرم	1106	1989-07-10	\N	0562504666	\N	akhandakji@mtit.pna.ps	1	2	13	2219370	1001	\N	1	802952	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	2	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\\x	327	\N	22	\N
169355	وائل ضرار ابراهيم عز الدين	\N	169355	2018-12-16	\N	\N	1	853413185	1	107	عرابة - جنين	1102	1992-10-19	\N	0562504645	\N	wizddeen@mtit.gov.ps	1	1	6	266418	1001	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
169360	خالد هاشم عبداللطيف زهد	\N	169360	2018-12-16	\N	\N	1	851025023	1	108	سلفيت-نابلس	2	1988-03-17	\N	\N	\N	\N	1	2	6	498953	1001	\N	1	9817399	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	N	\N	\N	\N	0	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N
169358	سماح عبداللطيف محمود لحلوح	\N	169358	2018-12-16	\N	\N	1	852510676	1	107	عرابة - جنين	1107	1991-03-03	04-2468971	0597256368	\N	slahlooh@mtit.gov.ps	2	1	6	171930	1001	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	6	\N	414	\N	\N	\N
260	علي عيسى احمد ابورحمة	\N	000260	2019-01-13	\N	\N	1	405638586	\N	\N	\N	\N	2001-02-03	\N	\N	\N	\N	1	1	\N	\N	1005	\N	1	\N	\N	\N	163679	2019-01-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
85251	سماح حسني عبدالفتاح بكر	\N	085251	2005-05-21	\N	\N	1	914134184	\N	\N	\N	\N	1982-08-31	\N	\N	\N	\N	1	2	\N	\N	1001	\N	4	\N	\N	\N	167865	2019-01-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
261	أيسر سليمان محمود شملاوي	\N	000261	2019-01-20	\N	\N	1	851934042	\N	\N	\N	\N	1989-04-10	\N	\N	\N	\N	1	1	\N	\N	1009	\N	3	\N	\N	\N	163679	2019-01-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
264	وعد حسن ديب الفرارجة	\N	000264	2019-01-28	\N	\N	1	852757640	\N	\N	\N	\N	1992-01-12	\N	\N	\N	\N	2	2	6	744705	1001	\N	3	\N	\N	\N	163679	2019-01-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	19	\\x	\N	\N	\N	PS56ARAB000000009050744705570
265	احمد ابراهيم عيسى حديدي	\N	000265	2019-01-28	\N	\N	1	402282966	\N	\N	\N	\N	1997-01-02	\N	\N	\N	\N	1	1	\N	\N	1003	\N	3	\N	\N	\N	163679	2019-01-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
266	أحمد شهاب احمد عبدالوهاب	\N	000266	2019-01-28	\N	\N	1	853651818	\N	\N	\N	\N	1992-08-10	\N	\N	\N	\N	1	1	\N	\N	1001	\N	3	\N	\N	\N	163679	2019-01-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\\x	\N	\N	\N	\N
268	عزت زهير عزت زهد	\N	000268	2019-02-03	\N	\N	1	938161320	\N	\N	\N	\N	1984-07-02	\N	\N	\N	\N	1	2	13	00480985	1001	\N	8	\N	\N	\N	163679	2019-02-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	PS80PALS046904809850993000000
274	شرف الدين محمد شريف ابوبكر	\N	000274	2019-02-20	\N	\N	1	411447758	\N	\N	\N	\N	1995-02-13	\N	\N	\N	\N	1	1	1	1615835	1013	\N	3	\N	\N	\N	163679	2019-02-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	PS77PIBC084216158350033101000
170984	ايمن عمر عبدالرحمن ابوالرب	\N	170984	2019-02-17	\N	\N	1	854152501	\N	\N	\N	\N	1991-12-12	\N	0598549652	\N	aabualrub@mtit.gov.ps	1	1	\N	\N	1001	\N	1	\N	\N	\N	151843	2019-02-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\\x	424	\N	\N	\N
170983	محمد صلاح مصطفى جفال	\N	170983	2019-02-24	\N	\N	1	858591662	\N	\N	\N	\N	1993-04-19	\N	0597624467	\N	mjaffal@mtit.gov.ps	1	1	1	1507807	1001	\N	1	\N	\N	\N	151843	2019-02-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
170981	ايه عصام صالح دويكات	\N	170981	2019-02-20	\N	\N	1	854704806	\N	\N	\N	\N	1993-09-21	\N	\N	\N	\N	2	1	6	966355	1001	\N	1	\N	\N	\N	151843	2019-02-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
170982	نداء انور احمد الجرابعة	\N	062024	2019-02-25	\N	\N	1	853062024	\N	\N	\N	\N	1991-02-14	\N	\N	\N	\N	2	2	6	9230265678570	1001	\N	8	\N	\N	\N	151843	2019-02-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	14	\N	\N	\N	\N	\N
171020	يعرب اسحق ابراهيم عواد	\N	171020	2019-03-10	\N	\N	1	904582913	\N	\N	\N	\N	1978-09-14	\N	\N	\N	\N	1	2	13	230839	1001	\N	8	\N	\N	\N	163679	2019-03-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\\x	\N	\N	\N	\N
278	شادي يعقوب محمد شريف سدر	\N	000278	2019-04-14	\N	\N	1	851589267	\N	\N	\N	\N	1990-06-26	\N	\N	\N	\N	1	1	13	2300277	\N	\N	8	\N	\N	\N	163679	2019-04-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS09PALS044723002770993000000
88844	د.اسحق سدر	\N	088844	2019-04-14	\N	\N	1	964475271	\N	\N	\N	\N	1963-11-05	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	81601	2019-04-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
277	انس ابراهيم محمد شريف سدر	\N	000277	2019-04-22	\N	\N	1	854868155	\N	\N	\N	\N	1994-07-31	\N	\N	\N	\N	1	1	13	2309478	\N	\N	1	\N	\N	\N	163679	2019-04-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS04PALS044723094780993000000
67951	فارس أحمد حسين محمود	\N	067951	2019-07-21	2019-07-21	\N	1	414462119	\N	\N	\N	\N	1964-04-09	\N	\N	\N	drfares_kiev@hotmail.com	1	2	\N	\N	1008	\N	1	\N	\N	\N	167865	2019-07-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
320	نور الدين كمال عبدالعزيز دعاجنة	\N	000320	2020-10-27	\N	\N	1	403450976	\N	\N	\N	\N	1998-05-09	\N	\N	\N	\N	1	2	\N	660004053184	1011	\N	8	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS25CAAB082000000660004053184
280	ضرار محمد عبدالحميد ابوشيخة	\N	000280	2019-08-06	\N	\N	1	854323805	\N	\N	\N	\N	1992-11-13	\N	0594594913	\N	s.derar@cert.ps	1	1	2	13000063	1001	\N	8	\N	\N	\N	163679	2019-08-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	ps89AISB130220110313000063001
155135	ميادة حمزة يحيى عابد (مراقب)	\N	155135	2011-10-05	2011-10-05	\N	1	916525728	\N	\N	\N	\N	1981-08-18	\N	\N	\N	\N	1	1	\N	\N	1001	\N	3	\N	\N	\N	167865	2019-09-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
282	أبي محمد ياسر موسى الزغارنه	\N	000282	2019-10-23	\N	\N	1	853736700	\N	\N	\N	\N	1992-11-03	\N	\N	\N	\N	1	1	15	\N	1001	\N	3	\N	\N	\N	163679	2019-10-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
170712	فاطمة علي عبدالله حمودة	\N	170712	2019-01-02	\N	\N	1	914120639	\N	\N	\N	\N	1982-12-05	\N	\N	\N	\N	2	2	1	1404315	1001	\N	1	\N	\N	\N	167865	2019-10-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
88885	مروة شفيق موسى أبوشارب	\N	088885	2019-10-30	2019-10-30	2020-06-07	1	941465866	\N	\N	\N	\N	1985-02-28	\N	\N	\N	marwashafiq2005@yahoo.com	2	2	14	62503	1001	\N	9	\N	\N	\N	167865	2019-10-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
283	اكرام ظاهر محمود عودة	\N	000283	2019-11-04	\N	\N	1	859528721	\N	\N	\N	\N	1995-04-12	\N	\N	\N	\N	2	1	6	141411	1001	\N	8	\N	\N	\N	163679	2019-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS78ARAB000000009420141411570
152217	ابراهيم احمد ناصر أبوبكر	\N	152217	2011-02-01	\N	\N	1	948184387	\N	\N	\N	\N	1985-05-03	0562500081	0562500081	\N	ibrahim@mtit.gov.ps	1	2	13	000226493	1001	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	1	\\x	213	\N	\N	\N
81801	ضياء حسن يوسف حرب (مراقب)	\N	081801	2020-02-05	2004-12-13	\N	1	907722417	\N	\N	\N	\N	1981-03-24	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2020-02-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	2	\N
284	آيات عبدالمجيد أحمد عويس	\N	000284	2020-02-11	2020-02-11	\N	1	403433725	\N	\N	\N	\N	1998-04-15	\N	\N	\N	\N	2	1	2	1046358	1001	\N	8	\N	\N	\N	167865	2020-02-11	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS56AISB010320110301046358001
285	عصام حسن عبدالفتاح شلالدة	\N	000285	2020-02-19	2020-02-11	\N	1	402863948	\N	\N	\N	\N	1997-10-14	\N	\N	\N	\N	1	1	13	1222774	1001	\N	3	\N	\N	\N	167865	2020-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	ps67pals046212227740993000000
288	اسامه عبدالهادي توفيق جابر	\N	000288	2020-02-20	2020-02-02	\N	1	851173666	\N	\N	\N	\N	1987-12-31	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2020-02-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
289	عهود سعيد محمد جرار	\N	000289	2020-02-20	2020-02-02	\N	1	415348036	\N	\N	\N	\N	1985-03-14	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2020-02-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
290	تامر نظمي عبداللطيف اطرش	\N	000290	2020-03-01	\N	\N	1	850250838	\N	\N	\N	\N	1988-09-16	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2020-03-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
291	بركات عبدالرحيم بركات عبوه	\N	000291	2020-03-01	\N	\N	1	401493879	\N	\N	\N	\N	1996-03-21	\N	0562500282	\N	barakat@cert.ps	1	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2020-03-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
292	محمد فتحي عبدالمجيد شباك	\N	000292	2021-10-12	\N	\N	1	411421191	\N	\N	\N	\N	1994-07-11	\N	\N	\N	\N	1	1	13	3202358	1001	\N	1	\N	\N	\N	167865	2020-05-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS86PALS045832023580993000000
293	طارق محمود صالح عطاونه	\N	000293	2020-03-18	\N	\N	1	401433669	\N	\N	\N	\N	1996-08-07	\N	\N	\N	\N	1	1	6	80806	1006	\N	8	\N	\N	\N	167865	2020-05-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	17	\N	\N	\N	\N	PS08ARAB000000009040080806570
294	أصاله حاتم نصار امطير	\N	000294	2020-05-12	\N	\N	1	860099274	\N	\N	\N	\N	1995-07-18	\N	\N	\N	asala.imtair@mtit.gov.ps	1	1	6	696632	1001	\N	8	\N	\N	\N	167865	2020-05-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS36ARAB000000009340696632570
299	محمد عقاب صالح صبحة	\N	000299	2020-05-13	\N	\N	1	415358225	\N	\N	\N	\N	1995-10-09	\N	\N	\N	\N	1	1	13	752224	1001	\N	8	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS10PALS047507522240993000000
303	خليل ابراهيم محمود مطير	\N	000303	2020-05-12	\N	\N	1	859829848	\N	\N	\N	\N	1995-06-19	\N	\N	\N	\N	1	1	7	10040692	1004	\N	8	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS38TNBC000000000001005329497
301	توفيق طلال رضوان سيوري	\N	000301	2020-05-12	\N	\N	1	852767755	\N	\N	\N	\N	1990-12-18	0598170075	0568370075	\N	\N	1	1	1	3501223	1005	\N	1	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS94PIBC084835012230033101000
298	ربيع صلاح عبدالحافظ طميزة	\N	000298	2020-05-13	\N	\N	1	851849364	\N	\N	\N	\N	1992-02-26	\N	\N	\N	\N	1	1	\N	2214234	1001	\N	3	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS29PALS045822142340993000000
295	ناني رائد جمال حسان	\N	000295	2020-05-12	\N	\N	1	404394850	\N	\N	\N	\N	1999-02-26	\N	\N	\N	\N	1	1	6	374863	1001	\N	9	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	2	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS37ARAB000000009340374863570
296	علاء عبدالرحمن سعيد خلف	\N	000296	2020-05-12	\N	\N	1	850019274	\N	\N	\N	\N	1987-02-24	\N	\N	\N	\N	1	1	1	1415075	1001	\N	8	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS08PIBC083614150750033101000
297	حسن كايد محمود أبوشخيدم	\N	000297	2020-05-11	\N	\N	1	851123489	\N	\N	\N	\N	1995-07-13	\N	\N	\N	\N	1	1	13	3206648	1003	\N	3	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS80PALS045832066480993000000
73275	رضا يحيى رضا حمامي	\N	073275	2020-05-31	2020-05-28	\N	1	955467758	\N	\N	\N	\N	1969-09-17	\N	\N	\N	\N	1	1	\N	\N	1001	\N	9	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
91620	خلود خالد علي عمر	\N	091620	2008-09-29	\N	\N	1	944068162	\N	\N	\N	\N	1980-11-19	\N	\N	\N	kholoodkhreeshy@gmail.com	2	2	6	527590	1007	\N	1	\N	\N	\N	81601	2016-03-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
164907	عائشة عطا نمر حمدان	\N	164907	2015-12-31	2016-12-31	\N	1	850836859	\N	\N	\N	\N	1988-06-05	\N	\N	\N	\N	1	1	12	164907	1001	\N	1	\N	\N	\N	167865	2020-06-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
312	نسرين جمال روحي خليلي	\N	000312	2020-08-16	2020-08-16	\N	1	860191642	\N	\N	\N	\N	1995-02-21	\N	\N	\N	\N	2	1	\N	135907	1004	\N	8	\N	\N	\N	167865	2020-08-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS39ARAB000000009370135907670
315	ابراهيم أحمد ابراهيم صايمه	\N	000315	2020-08-16	2020-08-16	\N	1	400518205	\N	\N	\N	\N	1994-12-31	\N	\N	\N	\N	1	1	\N	3-201103-1046942-1	1001	\N	8	\N	\N	\N	167865	2020-08-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS85AISB01320110301046942001
311	أحمد هاني أحمد شاهين	\N	000311	2020-08-18	2020-08-18	\N	1	402328264	\N	\N	\N	\N	1997-01-25	\N	\N	\N	\N	1	1	\N	28393	1006	\N	8	\N	\N	\N	167865	2020-08-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS80HBHO04050028393042100000
317	ميس بشار نمر بصلات	\N	000317	2020-09-30	\N	2021-04-22	1	859775124	\N	\N	\N	\N	1995-11-16	\N	\N	\N	maysbassalat315@gmail.com	2	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2020-10-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
316	امير عامر عمران حموري	\N	000316	2020-08-10	\N	\N	1	401118534	\N	\N	\N	\N	1998-02-09	\N	\N	\N	\N	1	1	6	382013	1006	\N	8	\N	\N	\N	167865	2020-09-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	PS02ARAB000000009640382013570
172358	نور يوسف محمد نصار	\N	172358	2020-08-20	\N	\N	1	410815245	\N	\N	\N	\N	1995-10-11	\N	0562500035	\N	nnassar@mtit.gov.ps	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2020-08-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	152	\N	\N	\N
321	عثمان احمد ابراهيم غوانمة	\N	000321	2020-10-27	\N	2021-06-06	1	400634895	\N	\N	\N	\N	1995-06-26	\N	\N	\N	\N	1	2	\N	366348	1005	\N	8	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS58ARAB000000009550366348570
318	ليلى عبدالرحمن أحمد يدك	\N	000318	2020-10-27	\N	\N	1	852326891	\N	\N	\N	\N	1990-05-13	\N	\N	\N	\N	2	2	\N	419840	1010	\N	1	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS90PALS046604198400993000000
323	رجاء رفيق فائق عيسى	\N	000323	2020-10-27	\N	\N	1	411770852	\N	\N	\N	\N	1978-09-30	\N	\N	\N	\N	2	2	\N	068471	1001	\N	8	\N	\N	\N	167865	2020-11-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS32ARAB000000009030068471570
326	محمود عماد بدوي عودة	\N	000326	2020-11-30	\N	\N	1	405321704	\N	\N	\N	\N	1999-10-17	\N	0562504810	\N	mahmod.imad23@gmail.com	1	1	\N	903006896757	1001	\N	8	\N	\N	\N	167865	2020-12-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS46ARAB000000009030068967570
327	باهر حسن مصطفى شنابلة	\N	000327	2020-11-30	\N	\N	1	406828718	\N	\N	\N	\N	2001-05-11	\N	\N	\N	\N	1	1	\N	9030381598570	1001	\N	3	\N	\N	\N	167865	2020-12-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS46ARAB00000000903038159857
172637	لارا نصري خليل ابوجيش	\N	172637	2020-11-24	\N	\N	1	402107809	\N	\N	\N	\N	1994-12-21	\N	\N	\N	labujaish@mtit.gov.ps	2	1	13	727433	1001	\N	1	\N	\N	\N	163679	2018-09-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	12	\N	214	\N	\N	\N
328	سعود عيسى اسعد دوابشة	\N	000328	2020-12-01	\N	\N	1	853489516	\N	\N	\N	\N	1991-05-22	\N	\N	\N	\N	1	1	\N	2208141	1004	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS77PALS045822081410993000000
329	خليل محمد خليل أبوربيع	\N	000329	2020-12-20	\N	\N	1	850355355	\N	\N	\N	\N	1988-06-01	\N	\N	\N	\N	1	1	\N	2208255	1001	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PA90PALS045822082550993000000
330	ايهاب خميس عباس خرمة	\N	000330	2020-12-22	\N	\N	1	854710076	\N	\N	\N	\N	1993-07-09	\N	\N	\N	\N	1	1	\N	2212704	1001	\N	8	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS23PALS045822127040993000000
331	عبدالرحمن عبدالرحمن سنجق	\N	000331	2020-12-22	\N	\N	1	850605866	\N	\N	\N	\N	1988-04-13	\N	\N	\N	\N	1	1	\N	10024294	1007	\N	8	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS47TNBC000000000001004871398
332	أحمد وليد ابراهيم أبوالعوف	\N	000332	2020-12-24	\N	\N	1	411981921	\N	\N	\N	\N	1985-12-30	\N	\N	\N	\N	1	1	\N	3242652	1007	\N	8	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	PS10AISB030320110303242652001
336	امال محمود عثمان كرامة	\N	000336	2020-12-29	\N	\N	1	402066807	\N	\N	\N	\N	1996-11-15	\N	\N	\N	\N	2	1	\N	4300137	1006	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS06PALS044743001370993000000
338	يزن عمر سعيد القزق	\N	000338	2020-12-29	\N	\N	1	402601421	\N	\N	\N	\N	1997-05-20	\N	\N	\N	\N	1	1	\N	1871620	1009	\N	8	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS15PIBC085118716200033101000
152471	منار نزيه عبدالله قاسم	\N	152471	2011-01-10	\N	\N	1	914508189	\N	\N	\N	\N	1984-11-27	\N	\N	\N	\N	1	2	\N	\N	1003	\N	1	\N	\N	\N	167865	2021-01-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
334	نادين شريف محمد خطيب	\N	000334	2020-12-23	\N	\N	1	412970196	\N	\N	\N	\N	1993-04-18	\N	\N	\N	\N	2	2	\N	3206557	1004	\N	1	\N	\N	\N	167865	2021-01-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS96PALS045832065570993000000
343	عبدالرحيم عساف حسن خولي	\N	000343	2020-12-15	\N	\N	1	949322150	\N	\N	\N	\N	1964-03-26	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-01-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
91752	منذر يوسف عبدالهادي سمارة	\N	091752	2021-02-01	2021-01-24	\N	1	911580157	\N	\N	\N	\N	1987-09-21	\N	0562504726	\N	monthersamara92@gmail.com	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-02-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
344	رامي سليمان علي خضر	\N	000344	2021-01-24	\N	\N	1	911509230	\N	\N	\N	\N	1982-04-18	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-02-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
345	محمد ربيع كمال موسى شلالدة	\N	000345	2021-01-06	\N	\N	1	852198464	\N	\N	\N	\N	1991-05-01	\N	\N	\N	\N	1	2	13	4310605	1006	\N	1	\N	\N	\N	167865	2021-02-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS17PALS044743106050993000000
346	ملغي	\N	000346	2021-01-19	\N	\N	1	411981921	\N	\N	\N	\N	1985-12-30	\N	\N	\N	\N	1	1	2	\N	\N	\N	3	\N	\N	\N	167865	2021-02-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
349	اديب احمد فارس فارس	\N	000349	2021-02-01	\N	\N	1	406605048	\N	\N	\N	\N	2001-02-03	\N	\N	\N	\N	1	1	\N	\N	1005	\N	3	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
348	فادي فارس حسين عرينات	\N	000348	2021-02-03	\N	\N	1	850859000	\N	\N	\N	\N	1988-02-20	\N	\N	\N	\N	1	1	\N	\N	1005	\N	1	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
350	اليانا اندراوس الياس بنورة	\N	000350	2021-02-04	\N	\N	1	402588271	\N	\N	\N	\N	1997-07-03	\N	\N	\N	\N	2	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2021-04-14	\N	2	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
351	انس محمد عدنان بالي	\N	000351	2021-02-01	\N	\N	1	405640665	\N	\N	\N	\N	2000-11-24	\N	\N	\N	\N	1	1	\N	\N	1005	\N	8	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
353	ثراء عبدالرؤوف محمد صلاحات	\N	000353	2021-02-09	\N	\N	1	851983940	\N	\N	\N	\N	1990-06-20	\N	\N	\N	\N	2	1	\N	\N	1012	\N	1	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
354	ثائر كمال زهدي بالي	\N	000354	2021-03-01	\N	2021-04-30	1	852894526	\N	\N	\N	\N	1989-06-20	\N	\N	\N	\N	1	1	\N	\N	1006	\N	8	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
355	محمد حسين محمد لولو	\N	000355	2021-03-30	\N	\N	1	854003506	\N	\N	\N	\N	1992-05-12	\N	0562504613	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\\x	355	\N	\N	\N
72934	فراس احمد سعيد حماد	\N	072934	2017-01-18	2017-01-18	\N	1	943443366	\N	\N	\N	\N	1974-06-08	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	14	\N
169958	سامر كمال محمد علي احمد	\N	169958	2021-04-15	\N	\N	1	123456789	\N	\N	\N	\N	1980-05-06	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-05-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
358	محمد فتحي كمال عابد	\N	000358	2021-04-12	\N	\N	1	853997641	\N	\N	\N	\N	1992-01-08	\N	\N	\N	\N	1	1	\N	\N	1003	\N	3	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
361	بيسان حسن عبدالواحد حميد	\N	000361	2021-04-21	\N	\N	1	854094612	\N	\N	\N	\N	1992-11-12	\N	\N	\N	\N	2	1	\N	\N	1011	\N	8	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
362	عز الدين عارف عبدالكريم صوافطة	\N	000362	2021-04-21	\N	\N	1	806650523	\N	\N	\N	\N	2002-05-17	\N	\N	\N	\N	1	1	\N	\N	1012	\N	8	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
363	وفاء عبدالحكيم جميل قدوم	\N	000363	2021-04-21	\N	\N	1	406932186	\N	\N	\N	\N	2001-01-10	\N	\N	\N	\N	2	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
10000	HR POST	\N	010000	2021-05-23	\N	\N	1	998877665	\N	\N	\N	\N	2021-05-23	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	167865	2021-05-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
372	حنين حسن علي مساعيد	\N	000372	2021-05-16	\N	\N	1	852169200	\N	\N	\N	\N	1991-06-12	\N	\N	\N	\N	2	1	\N	\N	1001	\N	12	\N	\N	\N	167865	2021-06-29	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	N	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	N	\N	\N	\N	\N	\N	\N	\N
375	زهدي نايف زهدي جرار	\N	000375	2021-04-15	\N	\N	1	985136753	\N	\N	\N	\N	1970-10-31	\N	0592980008	\N	zjarrar@mtit.gov.ps	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-07-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
69493	ايمن محمد مصطفى القدري	\N	069493	2000-09-16	\N	\N	1	907977482	\N	\N	\N	\N	1980-08-30	\N	0562500208	\N	aymanqadre@yahoo.com	1	2	12	303716310	1010	\N	1	\N	\N	\N	81601	2016-03-15	\N	\N	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	287    107	\N	\N	\N
374	نور بهجت مصطفى دراغمة	\N	000374	2021-06-24	\N	\N	1	402692362	\N	\N	\N	\N	1997-04-08	\N	\N	\N	\N	2	1	\N	\N	1012	\N	1	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
376	نمر لؤي أحمد بدوان	\N	000376	2021-07-01	\N	\N	1	410127302	\N	\N	\N	\N	1988-03-11	\N	\N	\N	\N	1	1	\N	\N	1010	\N	8	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
377	فداء فضل محمد مخامرة	\N	000377	2021-06-15	\N	\N	1	411343650	\N	\N	\N	\N	1995-12-06	\N	\N	\N	\N	2	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
378	نور شحدة فيصل نتشة	\N	000378	2021-06-15	\N	\N	1	404699126	\N	\N	\N	\N	1999-05-17	\N	\N	\N	\N	2	1	\N	\N	1006	\N	8	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
369	رأفت محمد فواز فايز ابوشخيدم	\N	000369	2021-06-01	\N	\N	1	854029931	\N	\N	\N	\N	1992-01-06	\N	\N	\N	\N	1	1	\N	\N	1006	\N	8	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
380	محمود مؤيد محمود خضور	\N	000380	2021-06-17	\N	\N	1	852906262	\N	\N	\N	\N	1992-02-29	\N	0568151214	\N	mahmmodayyad@hotmail.com	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
379	رزان أحمد حرب ابوسيف	\N	000379	2021-07-25	\N	\N	1	850414236	\N	\N	\N	\N	1990-04-02	\N	\N	\N	\N	2	2	\N	\N	1003	\N	1	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
381	هبة عبدالرحيم سميح نزال	\N	000381	2021-07-06	\N	\N	1	401384904	\N	\N	\N	\N	1996-05-24	\N	\N	\N	\N	2	1	\N	\N	1	\N	8	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
384	حسام جميل محمد اسماعيل	\N	000384	2021-07-01	\N	\N	1	410755789	\N	\N	\N	\N	1977-04-01	\N	\N	\N	\N	1	1	\N	\N	1006	\N	8	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
385	يوسف أحمد موسى حريبات	\N	000385	2021-07-01	\N	\N	1	859726119	\N	\N	\N	\N	1995-01-07	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
386	دينا عبدالستار زهير عواد	\N	000386	2021-07-06	\N	\N	1	403980246	\N	\N	\N	\N	1998-09-20	\N	\N	\N	\N	2	1	\N	\N	1009	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
388	مجد محمد أحمد سعدي	\N	000388	2021-07-01	\N	\N	1	402756969	\N	\N	\N	\N	1997-08-15	\N	\N	\N	\N	1	1	\N	\N	1013	\N	3	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
389	محمد محمود خالد ابوطبيخ	\N	000389	2021-07-01	\N	\N	1	402617740	\N	\N	\N	\N	1997-03-06	\N	\N	\N	\N	1	1	\N	\N	1013	\N	3	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
390	صالح عماد أحمد ابوشرار	\N	000390	2022-10-27	\N	\N	1	401125141	\N	\N	\N	\N	1996-05-24	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
393	غزل فيكتور نصري كوكالي	\N	000393	2021-07-01	\N	\N	1	854846581	\N	\N	\N	\N	1994-01-26	\N	\N	\N	\N	2	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
394	محمد ابراهيم أحمد جبرين	\N	000394	2021-08-02	\N	\N	1	402844104	\N	\N	\N	\N	1997-09-22	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
400	ولاء أمين يونس زهران	Walaa zahran	000400	2021-09-12	\N	\N	1	852411537	\N	\N	\N	\N	1992-01-24	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-09-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
383	عبير فخري يوسف دراغمة	\N	000383	2021-08-02	\N	\N	1	853319960	\N	\N	\N	\N	1985-03-12	\N	\N	\N	\N	2	1	\N	\N	1012	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
391	ايهم عدنان صادق الشاعر	\N	000391	2021-08-18	\N	\N	1	406335448	\N	\N	\N	\N	1985-03-07	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
398	روان جلال عبدالرحيم بشير	\N	000398	2021-09-07	\N	\N	1	853903813	\N	\N	\N	\N	1991-11-07	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
399	علي احمد صالح خطيب	\N	000399	2021-09-09	\N	\N	1	853087260	\N	\N	\N	\N	1991-10-19	\N	\N	\N	\N	1	1	\N	\N	1001	\N	3	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
402	لينا محمد محمود نشوية	\N	000402	2021-07-15	\N	\N	1	852053024	\N	\N	\N	\N	1989-12-30	\N	\N	\N	\N	2	1	\N	\N	1008	\N	8	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
403	انغيم محمد حسن القاضي	\N	000403	2021-09-05	\N	\N	1	405505587	\N	\N	\N	\N	2000-09-16	\N	\N	\N	\N	2	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
404	باسل طلال محمود الرواشدة	\N	000404	2021-08-03	\N	\N	1	407429794	\N	\N	\N	\N	1985-03-02	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
405	احمد رائد احمد شروف	\N	000405	2021-09-05	\N	\N	1	854057239	\N	\N	\N	\N	1992-05-02	\N	\N	\N	\N	1	1	\N	\N	1006	\N	8	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
406	رشا عماد جميل مصاروة	\N	000406	2021-09-21	\N	\N	1	402412464	\N	\N	\N	\N	1997-04-10	\N	\N	\N	\N	2	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-09-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
174851	هبه محمد يوسف حمد	\N	174851	2021-08-03	\N	\N	1	854199197	\N	\N	\N	\N	1991-10-19	\N	\N	\N	\N	2	2	6	9270-078474-570	1001	\N	1	\N	\N	\N	163679	2019-03-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
174856	شروق محمد موسى جودة	\N	174856	2021-08-03	\N	\N	1	850894510	\N	\N	\N	\N	1985-03-05	\N	\N	\N	\N	2	1	6	9020166465570	1001	\N	1	\N	\N	\N	163679	2019-02-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	20	\N	\N	\N	\N	\N
408	فيليتسيا رجا محمد عموري	\N	000408	2021-09-05	\N	\N	1	403990070	\N	\N	\N	\N	1998-09-18	\N	\N	\N	\N	2	1	\N	\N	1003	\N	1	\N	\N	\N	167865	2021-10-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
410	ربى حسني محمد ناصر الدين	\N	000410	2021-10-03	\N	\N	1	900100611	\N	\N	\N	\N	1974-04-18	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-10-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
407	ربيع رمزي زهير دار معالي	\N	000407	2021-07-18	\N	\N	1	407470889	\N	\N	\N	\N	2002-07-18	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	167865	2021-10-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
411	أحمد عبدالكريم عبدالفتاح الحمادنه	\N	000411	2021-09-22	\N	\N	1	412076234	\N	\N	\N	\N	1999-09-21	\N	\N	\N	\N	1	1	6	\N	1001	\N	8	\N	\N	\N	305	2021-10-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	\N
433	بشرى عبدالفتاح مصطفى عياش	\N	000433	2021-10-12	\N	\N	1	401559455	\N	\N	\N	\N	1996-02-09	\N	\N	\N	\N	2	2	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-10-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
426	ناهده مصطفى محمد ازمقنا	\N	000426	2021-09-26	\N	\N	1	406460089	\N	\N	\N	\N	2000-06-22	\N	\N	\N	\N	2	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-10-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
175307	سها احمد خيري زرعي	\N	175307	2021-09-01	\N	\N	1	853905131	1	106	دير غصون -طولكرم	1102	1991-07-07	092666766	0562504612	\N	szerie@mtit.gov.ps	2	2	6	265725	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
435	مي نافع محمود عيسى	\N	000435	2021-10-03	\N	\N	1	403889025	\N	\N	\N	\N	1998-08-20	\N	\N	\N	\N	2	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2021-10-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
427	لينا هاني حسن خطيب	\N	000427	2021-09-26	\N	\N	1	850394008	\N	\N	\N	\N	1991-02-05	\N	\N	\N	\N	2	2	\N	\N	1001	\N	3	\N	\N	\N	167865	2021-10-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
174871	محمد فتحي يونس صباح	\N	000269	2021-08-03	\N	\N	1	850201419	\N	\N	\N	\N	1988-03-03	\N	\N	\N	msabbah@mtit.gov.ps	1	2	6	168071	1001	\N	1	\N	\N	\N	163679	2019-02-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	\N
174849	محمد ربحي عبدالفتاح ياسين	\N	000271	2021-08-03	\N	\N	1	853321412	\N	\N	\N	\N	1989-04-21	042432493	0569393939	\N	myasin@mtit.gov.ps	1	1	13	1353666	1001	\N	1	\N	\N	\N	151843	2019-02-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	8	\N	522	\N	\N	\N
174850	ايه جمال نعيم فاخوري	\N	174850	2021-08-03	\N	\N	1	850093295	\N	\N	\N	\N	1990-02-25	\N	\N	\N	\N	2	2	6	190779	1001	\N	1	\N	\N	\N	163679	2019-03-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
174873	آلاء زياد محمود غانم	\N	174873	2021-08-03	\N	\N	1	854879640	\N	\N	\N	\N	1994-07-24	\N	0562504626	\N	aghanem@mtit.gov.ps	2	1	2	3239359	1001	\N	1	\N	\N	\N	151843	2019-02-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
174874	عبدالرحمن علي صدقي الأحمد	\N	174874	2021-08-03	\N	\N	1	859177826	\N	\N	\N	\N	1989-08-14	042451285	0562504668	\N	\N	1	1	13	2362654	1003	\N	4	\N	\N	\N	163679	2019-02-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	\N
174875	إياد عامر محمود شعبان	\N	174875	2021-03-08	\N	\N	1	851833111	\N	\N	\N	\N	2000-01-01	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2020-11-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
171072	نصر محمد رمضان عبدالرحيم الرجبي	\N	435653	2019-03-21	\N	\N	1	859435653	\N	\N	الخليل	\N	1994-07-29	\N	0598734232	\N	nasr.al.rajabe7@gmail.com	1	1	13	2308863	1006	\N	1	\N	\N	\N	151843	2019-03-25	\N	1	0	0	0	0	\N	\N	\N	خلة مناع	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
415	دانه فوزي نيازي جرار	\N	000415	2021-10-03	\N	\N	1	851401158	\N	\N	\N	\N	1989-09-23	\N	\N	\N	\N	2	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
419	محمد نمر حامد رمضان	\N	000419	2021-10-03	\N	\N	1	851992180	\N	\N	\N	\N	1988-08-12	\N	0562111431	\N	mramadan@mtit.gov.ps	1	2	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
418	ماجدولين محمد أحمد صالح	\N	000418	2021-10-03	\N	\N	1	850176389	\N	\N	\N	\N	1987-09-12	\N	\N	\N	\N	2	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
412	أسماء رائد حسين نصر	\N	000412	2021-10-03	\N	\N	1	406499848	\N	\N	\N	\N	2001-07-03	\N	\N	\N	\N	2	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
423	يوسف اياد يوسف حمادنه	\N	000423	2021-10-03	\N	\N	1	860191824	\N	\N	\N	\N	1995-02-25	\N	0562111435	\N	Yhamadnah@mtit.gov.ps	1	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
417	رزان عماد صالح نوفل	\N	000417	2021-10-03	\N	\N	1	404956005	\N	\N	\N	\N	1999-07-01	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
422	يوسف عبدالفتاح فتح الله تمام	\N	000422	2021-11-02	\N	\N	1	906488804	\N	\N	\N	\N	1980-10-09	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
431	أكرم خيري عبدالنبي بعيرات	\N	000431	2021-11-02	\N	\N	1	906259734	\N	\N	\N	\N	1980-12-06	\N	0562504746	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	203	\N	\N	\N
500	سوسن عبدالكريم أحمد كنعان	\N	000500	2021-11-01	\N	\N	1	850994096	\N	\N	\N	\N	1987-03-28	\N	\N	\N	\N	2	1	\N	\N	1001	\N	3	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
428	لمياء محمود علي فرج	\N	000428	2021-09-26	\N	\N	1	401111331	\N	\N	\N	\N	1996-02-28	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
429	نذير العبدفرح علوي	\N	000429	2021-09-01	\N	\N	1	401646807	\N	\N	\N	\N	1995-12-08	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
430	كاتيا زهير عيسى عازر	\N	000430	2021-09-01	\N	\N	1	314929050	\N	\N	\N	\N	1999-04-20	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
174872	عبدالله محمد خالد سمودي	\N	000272	2021-08-03	\N	\N	1	411781990	\N	\N	\N	\N	1995-12-03	\N	0599544225	\N	samoodi.abdallah@gmail.com	1	1	1	1414468	1001	\N	1	\N	\N	\N	151843	2019-02-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	9	\N	209	\N	\N	PS06PIBC083614144680033101000
425	فايز محمود فايز علاريه	\N	000425	2021-10-12	\N	\N	1	852599661	\N	\N	\N	\N	1992-02-14	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2021-11-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
434	ضرار سميح عبدالعزيز خضر	\N	000434	2021-10-12	\N	\N	1	945485985	\N	\N	\N	\N	1970-04-29	\N	0562111408	\N	d.khader@cert.ps	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
439	حلا ماهر محمد رمزي شقو	\N	000439	2021-07-18	\N	\N	1	404891053	\N	\N	\N	\N	1999-09-15	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
440	دانيا نعيم محمد جمعة	\N	000440	2021-09-05	\N	\N	1	406843516	\N	\N	\N	\N	2021-01-30	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
441	شيماء مثقال يوسف المساعيد	\N	000441	2021-09-26	\N	\N	1	851398974	\N	\N	\N	\N	1989-10-10	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
442	طارق زياد رشيد عاشور	\N	000442	2021-09-05	\N	\N	1	850556994	\N	\N	\N	\N	1989-01-23	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
443	خالد وليد راتب صلاح	\N	000443	2021-09-05	\N	\N	1	400213427	\N	\N	\N	\N	1993-05-11	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
444	امين نادر صبحي قمحاوي	\N	000444	2021-09-05	\N	\N	1	853944957	\N	\N	\N	\N	1992-11-15	\N	\N	\N	\N	1	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
445	أحمد عدلي وليد اشتيه	\N	000445	2021-09-06	\N	\N	1	404495582	\N	\N	\N	\N	1998-12-29	\N	\N	\N	\N	1	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
446	برهان محمد يوسف العمور	\N	000446	2021-09-05	\N	\N	1	908083371	\N	\N	\N	\N	1980-07-18	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
447	مراح محمد حسن عزموطي	\N	000447	2021-10-10	\N	\N	1	853316941	\N	\N	\N	\N	2020-01-01	\N	\N	\N	\N	2	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
448	اسمهان رفعت عزيز قبها	\N	000448	2021-03-01	\N	\N	1	947595377	\N	\N	\N	\N	1985-02-13	\N	\N	\N	\N	2	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
449	ورود احمد ابراهيم قبها	\N	000449	2021-03-01	\N	\N	1	858594526	\N	\N	\N	\N	1995-05-02	\N	\N	\N	\N	2	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
450	عبدالله يوسف عبدالحليم زيادة	\N	000450	2021-09-09	\N	\N	1	850998626	\N	\N	\N	\N	1985-01-22	\N	\N	\N	\N	2	1	\N	\N	1009	\N	8	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	0562500277	\N	\N	\N
451	عبدالرحمن كمال محمد علي احمد	\N	000451	2021-08-24	\N	\N	1	858824741	\N	\N	\N	\N	1985-03-08	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
452	احمد محمد سلمان سلمان	\N	000452	2021-09-08	\N	\N	1	853641348	\N	\N	\N	\N	1993-01-19	\N	0598254961	\N	dodo_salman@hotmail.com 	2	1	\N	\N	1009	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	0562500279	\N	\N	\N
453	أميرة راشد هشام بزار	\N	000453	2022-04-06	\N	\N	1	402846430	\N	\N	\N	\N	1997-09-30	\N	\N	\N	\N	2	2	\N	\N	1004	\N	8	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
544	سيف الدين وائل عطيه فقيات	\N	000544	2022-04-04	\N	\N	1	402239909	\N	\N	\N	\N	1996-12-16	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
455	عبدالقادر محمد جميل صوافطة	\N	000455	2021-08-16	\N	\N	1	407334168	\N	\N	\N	\N	1985-03-14	\N	\N	\N	\N	1	1	\N	\N	1012	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
401	قصي أيمن حسن زماعرة	\N	000401	2021-08-01	\N	\N	1	411641509	\N	\N	\N	\N	1995-01-18	\N	0595296666	\N	qusay.numan@yahoo.com	1	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	0569500220	\N	\N	\N
456	محمد عيسى عبدالحليم زماعرة	\N	000456	2021-09-19	\N	\N	1	403940448	\N	\N	\N	\N	1998-12-22	\N	\N	\N	\N	1	1	\N	\N	1006	\N	8	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
457	محمد عبدالرحمن سعد غياضة	\N	000457	2021-07-11	\N	\N	1	404101735	\N	\N	\N	\N	1985-03-14	\N	\N	\N	\N	1	1	\N	\N	1011	\N	8	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
458	نور علي جبرين شكارنه	\N	000458	2021-09-22	\N	\N	1	860110758	\N	\N	\N	\N	1995-06-10	\N	\N	\N	\N	1	1	\N	\N	1011	\N	8	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
459	احمد سالم محمد ابوعبيد	\N	000459	2021-09-23	\N	\N	1	405364456	\N	\N	\N	\N	2000-03-25	\N	\N	\N	\N	1	1	\N	\N	1014	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
460	ليث الدين أحمد خليل محسن	\N	000460	2021-07-11	\N	\N	1	404290017	\N	\N	\N	\N	1985-03-04	\N	\N	\N	\N	1	1	\N	\N	1014	\N	1	\N	\N	\N	167865	2021-11-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
463	روان جمال كمال فقهاء	\N	000463	2021-11-17	\N	\N	1	850146093	\N	\N	\N	\N	1987-11-25	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	400	2021-11-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
645	ملغي	\N	000645	2021-11-01	\N	\N	1	بيءةنرلات	\N	\N	\N	\N	1996-08-20	\N	\N	\N	\N	2	1	\N	\N	1001	\N	3	\N	\N	\N	400	2021-11-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
465	ياسمين حازم حاتم حميدات	\N	000465	2021-11-01	\N	\N	1	401361357	\N	\N	\N	\N	1996-08-29	\N	0562504999	\N	YHIMEDAT@MTIT.gov.ps	2	1	\N	\N	1014	\N	1	\N	\N	\N	400	2021-11-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
438	شذى عبدالرؤوف أحمد محمود حسين	\N	000438	2021-11-07	\N	\N	1	851691212	\N	\N	\N	\N	1986-10-02	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
461	حسام عنان سعد سعد	\N	000461	2021-11-01	\N	\N	1	852420470	\N	\N	\N	\N	1990-03-13	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	400	2021-11-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
96304	علا عبدالقادر حسن اسدي	\N	096304	2021-11-29	\N	\N	1	941339855	\N	\N	\N	\N	1983-06-27	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-29	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
472	ساره محمد سليم شعبان	\N	000472	2021-12-01	\N	\N	1	859177784	\N	\N	\N	\N	1992-09-03	\N	\N	\N	\N	2	1	\N	\N	1001	\N	8	\N	\N	\N	400	2021-12-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
467	حنان نصري عمر ذيب	\N	000467	2021-11-11	\N	\N	1	936502475	\N	\N	\N	\N	1983-08-30	\N	\N	\N	\N	2	2	\N	\N	1003	\N	8	\N	\N	\N	167865	2021-12-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
176207	غدير فاروق حسين زهور	\N	176207	2021-10-28	\N	\N	1	852588854	\N	\N	\N	\N	1990-03-23	\N	0598857299	\N	gzuhour@mtit.gov.ps	2	2	6	254238	1001	\N	1	\N	\N	\N	167865	2020-06-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	\N
176205	ايه سليمان عبدالله الفقهاء	\N	176205	2021-10-28	\N	\N	1	854360492	1	106	طولكرم-عنبتا	1106	1991-10-16	\N	0595256401	\N	afouqha@mtit.gov.ps	2	1	2	3235046	1001	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	N	N	N	\N	0	\N	\N	\N	Y	\N	2	\N	420	\N	\N	ps12aisb030320110303235046001
176206	طارق محمد جميل سوالمة	\N	176206	2021-10-28	\N	\N	1	850798463	1	\N	مخيم الفارعه	1102	1988-06-08	092578112	0598557506	\N	tsawameh@palpost.ps	1	1	13	441917	1012	\N	1	\N	\N	\N	163679	2018-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	N	N	N	\N	0	\N	\N	\N	Y	\N	3	\\x	0562504834	\N	19	ps27pals046704419170993000000
176204	بيسان اسامة جلال جرار	\N	176204	2021-10-28	\N	\N	1	860188416	1	101	البيرة	1101	1995-03-05	\N	\N	\N	\N	2	1	2	1040750	1001	\N	1	\N	\N	\N	163679	2018-01-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	N	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	ps10aisb010321010401040750001
176208	مسعود حمدان نصري عارضه	\N	176208	2021-10-28	\N	\N	1	850741794	1	107	عرابة - جنين	1107	1989-12-28	\N	0562504674	\N	mardah@mtit.gov.ps	1	1	6	9230264165570	1001	\N	1	\N	\N	\N	163679	2017-03-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	ps75arab000000009230264165570
176215	اقبال عطا ابراهيم أبوحجلة	\N	176215	2021-10-28	\N	\N	1	906846639	1	102	دير استيا-نابلس	4	1979-05-11	\N	0597868525	\N	\N	2	2	6	9020163261/570	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
176209	ريما عزام فوزي الحاج يوسف	\N	176209	2021-10-31	\N	\N	1	410126601	1	101	رام الله	2	1992-10-04	\N	\N	\N	\N	2	1	13	1216115	1001	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS41PALS0458121611500130000000
478	مرفت خالد لطفي نصر الله	\N	000478	2021-12-16	\N	\N	1	402836563	\N	\N	\N	\N	1997-11-29	\N	\N	\N	\N	2	2	\N	\N	1001	\N	8	\N	\N	\N	400	2021-12-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
482	عاصم حسن عوض شاهين	\N	000482	2021-12-20	\N	\N	1	406608000	\N	\N	\N	\N	2001-06-07	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-12-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
475	فيصل غازي فيصل زيد الكيلاني	\N	000475	2021-12-01	\N	\N	1	859244592	\N	\N	\N	\N	1994-07-16	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-12-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
484	اشرف محمود صالح عبدالهادي	\N	000484	2022-01-02	\N	\N	1	976859082	\N	\N	\N	\N	1974-08-21	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	400	2022-01-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
485	رغد تحسين عبدالرحيم حمايدي	\N	000485	2022-01-11	\N	\N	1	403612773	\N	\N	\N	\N	1998-06-16	\N	0562111453	\N	r.hamaydi@cert.ps	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-01-11	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
466	عبدالسلام نبيل عبدالكريم الشوبكي	\N	000466	2021-10-03	\N	\N	1	853534006	\N	\N	\N	\N	2000-01-01	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2022-01-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
436	انور اسعاف انور خطيب	\N	000436	2021-11-01	\N	\N	1	854402815	\N	\N	\N	\N	1993-04-08	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	167865	2022-01-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
486	سلين محمود سمير عمرو	\N	000486	2022-01-19	\N	\N	1	403342835	\N	\N	\N	\N	1998-02-21	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2022-01-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
490	قاسم محمود أحمد اسماعيل	\N	000490	2022-01-30	\N	\N	1	404450728	\N	\N	\N	\N	1999-03-27	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-01-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
479	رؤى رائد جمال شيخ عبدالفتاح	\N	000479	2021-12-13	\N	\N	1	405493172	\N	\N	\N	\N	1999-12-27	\N	\N	\N	\N	2	1	\N	\N	1008	\N	1	\N	\N	\N	400	2022-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
493	خليفه وليد اسحق القشقيش	\N	000493	2021-12-23	\N	\N	1	405750654	\N	\N	\N	\N	2000-11-05	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	400	2022-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
494	ايمان محمد عبدالمجيد ابوعمر	\N	000494	2021-11-14	\N	\N	1	853759355	\N	\N	\N	\N	1992-04-17	\N	\N	\N	\N	2	2	\N	\N	1006	\N	1	\N	\N	\N	400	2022-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
495	محمد عايش عدنان شبانه	\N	000495	2022-01-01	\N	\N	1	405502212	\N	\N	\N	\N	2009-02-24	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	400	2022-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
497	محمد ناصر عبدالرؤوف بدر	\N	000497	2022-02-09	\N	\N	1	859832982	\N	\N	\N	\N	1995-06-06	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	400	2022-02-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
176331	محمد ابراهيم محمد علي	\N	176331	2021-11-03	\N	\N	1	938390762	1	101	البيرة	1101	1984-05-09	022904848	0599778309	\N	mo-haj-84@hotmail.com	1	2	12	432500	1001	\N	1	786430	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS06CAAB080500000660000130931
488	ياسر محمد أحمد نابلسية	\N	000488	2021-11-11	\N	\N	1	853388643	\N	\N	\N	\N	1989-10-01	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	167865	2022-02-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
505	آلاء محمد احمد عيد	\N	000505	2021-11-10	\N	\N	1	854321106	\N	\N	\N	\N	1992-05-07	\N	\N	\N	\N	2	2	\N	\N	1006	\N	1	\N	\N	\N	167865	2022-02-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
477	رياض ايمن محمود معالي	\N	000477	2021-12-12	\N	\N	1	408599413	\N	\N	\N	\N	1999-01-01	\N	\N	\N	\N	1	1	\N	\N	1003	\N	3	\N	\N	\N	167865	2022-02-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
511	عزت محمد عزت حزين	\N	000511	2022-01-30	\N	\N	1	403351315	\N	\N	\N	\N	1998-03-25	\N	\N	\N	\N	1	1	\N	\N	1014	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
515	نرمين ماجد يوسف أبوعودة	\N	000515	2021-11-07	\N	\N	1	403890411	\N	\N	\N	\N	1998-07-18	\N	\N	\N	\N	2	2	\N	\N	1011	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
518	ميخائيل جورج ميخائيل حجل	\N	000518	2022-01-05	\N	\N	1	911068245	\N	\N	\N	\N	1986-02-10	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	400	2022-02-27	\N	2	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
506	لينا ابراهيم نمر عبدالرازق	\N	000506	2022-02-07	\N	\N	1	907151872	\N	\N	\N	\N	1980-06-24	\N	\N	\N	\N	2	2	\N	\N	1012	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
513	باسل سليمان أحمد شاعر	\N	000513	2021-11-09	\N	\N	1	859853558	\N	\N	\N	\N	1995-01-24	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
517	محمد يوسف محمد ديك	\N	000517	2022-02-22	\N	\N	1	404898306	\N	\N	\N	\N	1999-10-16	\N	\N	\N	\N	1	1	\N	\N	1001	\N	3	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
510	عبدالله حسين سعيد ابوهلال	\N	000510	2022-01-23	\N	\N	1	404342933	\N	\N	\N	\N	1998-11-09	\N	0562111440	\N	\N	1	1	\N	\N	1014	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
503	عبداللطيف اياد عبداللطيف يونس	\N	000503	2021-12-14	\N	\N	1	858512387	\N	\N	\N	\N	1995-01-21	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
520	ديانا خالد علي صلاح	\N	000520	2021-12-15	\N	\N	1	859552366	\N	\N	\N	\N	1994-05-09	\N	0598358566	\N	dianasalah95@gmail.com	2	2	\N	\N	1014	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	0562111436	\N	\N	\N
522	محمد أحمد راجح دار سمحان	\N	000522	2021-11-30	\N	\N	1	406667493	\N	\N	\N	\N	2001-05-27	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	167865	2022-03-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
523	علاء عاهد محمد جبر	\N	000523	2021-12-06	\N	\N	1	858535131	\N	\N	\N	\N	1994-08-22	\N	0562111404	\N	\N	1	1	\N	\N	1007	\N	1	\N	\N	\N	167865	2022-03-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
525	احمد يوسف حمد صدقه	\N	000525	2022-03-01	\N	\N	1	404305658	\N	\N	\N	\N	1998-10-30	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	400	2022-03-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
526	عمر كمال صدقي خميس	\N	000526	2021-12-08	\N	\N	1	405685652	\N	\N	\N	\N	2001-03-31	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2022-03-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
100689	اياد محمود فلاح عبدالفتاح	\N	100689	2000-06-03	\N	\N	1	994311983	\N	\N	\N	\N	1974-08-09	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2022-03-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
176359	شروق احمد ابراهيم عصفور	\N	176359	2021-11-02	\N	\N	1	860148139	1	101	سنجل - رام الله	1101	1994-07-29	\N	0562504967	\N	sasfour@mtit.gov.ps	2	1	12	21018809	1001	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	N	N	N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS28CAAB080500000660003016188
502	فدا موسىفايز ابوصفيه	\N	000502	2021-09-19	\N	\N	1	859757726	\N	\N	\N	\N	1995-03-17	\N	\N	\N	\N	1	2	\N	\N	1009	\N	1	\N	\N	\N	167865	2022-03-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
507	وعد عبدالله نوسى ابوزر	\N	000507	2021-11-23	\N	\N	1	854908548	\N	\N	\N	\N	1993-11-17	\N	\N	\N	\N	1	1	\N	\N	1009	\N	1	\N	\N	\N	167865	2022-03-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
508	معين هشام مصطفى موقدي	\N	000508	2021-11-23	\N	\N	1	854359114	\N	\N	\N	\N	1992-02-06	\N	\N	\N	\N	1	1	\N	\N	1009	\N	1	\N	\N	\N	167865	2022-03-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
176213	سيلينا ناصر عبدالحافظ حسونة	\N	176213	2021-11-07	\N	\N	1	858609571	1	106	زيتا - طولكرم	1106	1994-07-10	\N	\N	\N	\N	2	1	6	276367	1001	\N	1	\N	\N	\N	163679	2018-01-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps17arab000000009070276367670
176217	غدير ابراهيم عارف سايس	\N	176217	2021-11-02	\N	\N	1	852530237	1	101	رام الله -كفر نعمة	1103	1992-02-02	\N	0595601088	\N	\N	2	2	6	258995	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	N	\N	\N	\N	0	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	PS91ARAB000000009230258995570
176275	حسان أحمد محمد مسلط	\N	176275	2021-11-02	\N	\N	1	400649901	1	101	رام الله -البيرة	1101	1995-11-30	\N	0597176368	لايوجد	hham4ever@hotmail.com	1	1	18	1033480	1001	3	1	\N	\N	\N	163679	2018-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	N	Y	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	22	ps50aisb010320110301033480001
176328	أمير حسن عارف الخطيب	\N	176328	2021-11-02	\N	\N	1	854401783	1	103	حزما-القدس	1103	1993-04-01	022353922	0598649327	\N	akhateeb@mtit.gov.ps	1	2	6	\N	1001	\N	1	634634	\N	\N	163679	2017-01-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	ps62ARAB9230266656570
176333	محمد عادل راغب خصيب	\N	176333	2021-11-03	\N	\N	1	851610659	1	101	عارورة-رام الله	6	1987-12-02	\N	0597010087	\N	\N	1	1	12	430924	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	N	N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS79CAAB080200000660001900951
176358	وئام هاني راتب زيدان	\N	176358	2021-11-02	\N	\N	1	850094194	1	106	رامين-طولكرم	1106	1990-02-09	\N	0562504604	\N	wzidan@mtit.gov.ps	1	1	12	356158	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	N	N	\N	\N	0	\N	\N	\N	Y	\N	7	\N	\N	\N	\N	PS36CAAB080100000660001292797
176360	خليل جمال جابر الخضر	\N	176360	2021-11-02	\N	\N	1	410201032	1	107	يعبد- جنين	2	1988-06-11	0569810812	0595736367	\N	khalilabubakr2015@gmail.com	1	1	6	191957	1001	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	2	Y	\N	\N	\N	0	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	ps56arab000000009030191957570
179124	منال عبدالحفيظ حسن تميمي	\N	179124	2021-12-14	\N	\N	1	934160714	1	101	النبي صالح - رام الله	1101	1973-06-18	\N	\N	\N	mtamimi@mtit.gov.ps	2	2	11	42450072001	1004	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS2SHBH0040100720010424500000
181171	اسلام عبداللطيف عارف دار خليفة	\N	181171	2022-01-26	\N	\N	1	904591310	1	101	كفر نعمة - رام الله	1103	1979-12-12	022489536	\N	\N	\N	1	2	11	37907	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
181173	ابراهيم شريف محمد محمد	\N	181173	2022-01-26	\N	\N	1	414526541	1	101	رام الله	2	1987-03-14	\N	\N	\N	\N	1	1	13	248508	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	19	PS70PALS045802485080993000000
181175	يسري سيف مصطفى رضوان	\N	181175	2022-01-26	\N	\N	1	936456342	1	101	البيرة - رام الله	1101	1984-05-04	\N	0547711476	\N	postman-3000@hotmail.com	1	1	1	180740	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	ps54pibc084317266820033101000
181207	خميس وليد موسى ياسين	\N	181207	2022-01-26	\N	\N	1	936078823	1	102	نابلس	1102	1983-01-30	022339042	\N	\N	\N	1	1	9	2110313	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	\N
181209	يزيد زامل محمود غشاش	\N	181209	2022-01-26	\N	\N	1	941041543	\N	\N	\N	\N	1984-08-01	092931928	0599927891	\N	yghashash@palpost.ps	1	1	6	552318	1010	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	\N
181211	كمال محمد ابراهيم عساكرة	\N	181211	2022-01-26	\N	\N	1	920282720	1	109	نابلس رفيدية	1109	1983-02-21	\N	\N	\N	\N	1	2	1	1205065	1011	\N	1	9837976	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS12PIBC083812050650033101000
181223	اشرف نبيل ابراهيم زبن	\N	181223	2022-01-26	\N	\N	1	850897026	1	106	طولكرم - قفين	2	1981-07-13	\N	0568219048	\N	\N	1	1	2	3217054	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS58AISB030320110303217054001
181225	محمد موفق محمد مجادبه	\N	181225	2022-01-26	\N	\N	1	850017153	1	106	علار -طولكرم	1106	1987-04-29	\N	\N	\N	\N	1	1	13	428903	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS49PLAS046704289030993000000
181227	أمين عبدالله سعيد عوض الله	\N	181227	2022-01-26	\N	\N	1	900725466	1	109	بيت ساحور - بيت لحم	1109	1977-11-16	022775488	\N	\N	\N	1	2	13	304472460	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	\N
181228	خالد محمد ابراهيم درعاوي	\N	181228	2022-01-26	\N	\N	1	906907902	1	109	العبيدية	4	1983-01-01	\N	\N	\N	\N	1	1	17	7763	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS25JONB084404077630030021000
181229	حسين باجس حسين دار الشيخ	\N	181229	2022-01-26	\N	\N	1	950581074	\N	\N	\N	\N	1986-09-26	\N	\N	\N	\N	1	1	6	672805	1014	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	\N	\\x	\N	\N	\N	\N
181231	نبيل حسين محمد عبدالله	\N	181231	2022-01-26	\N	\N	1	949692651	1	104	بني نعيم - الخليل	1104	1973-07-21	022218536	\N	\N	\N	1	2	1	1106021	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
181232	مجدي محمد ماجد رشيد زلوم	\N	181232	2022-01-26	\N	\N	1	933231193	1	104	الخليل - بئر السبع	1104	1976-02-29	2294421	\N	\N	\N	1	2	1	1014590	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
181233	مصطفى عبدالحميد نمر مجاهد	\N	181233	2022-01-26	\N	\N	1	921666525	1	104	\N	1104	1984-08-06	2258282	0599340491	\N	\N	1	1	1	1018137	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	\N
181234	اياد محمود اسماعيل أبوالكباش	\N	181234	2022-01-26	\N	\N	1	851419051	1	104	السموع - الخليل	1103	1988-02-15	\N	\N	\N	\N	1	2	7	22987	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	ps16tnbc271300030022987100101
181235	سامر عاصم عبدالله عمرو	\N	181235	2022-01-26	\N	\N	1	901396010	1	104	الخليل	1104	1976-07-15	\N	\N	\N	\N	1	2	6	778903/570	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	ps28arab000000009040778903570
181242	محمد صالح محمود دراغمة	\N	181242	2022-01-26	\N	\N	1	904462587	1	114	طوباس	1114	1973-02-19	\N	0562504835	\N	mdaraghm@pal post.ps	1	2	13	460177	1012	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	3	\N	092574510	\N	\N	PS35PALS046804601770993000000
181351	عرفات عبدالمعطي عثمان لدادوة	\N	181351	2022-02-17	\N	\N	1	945333722	1	101	المزرعة القبلية	1101	1977-10-15	\N	0597220445	\N	\N	1	2	12	433564	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS82CAAB080500000660000135771
181353	مراد فريد محمود سباعنة	\N	181353	2022-01-26	\N	\N	1	938027364	1	107	قباطية-جنين	1107	1983-07-25	\N	\N	\N	\N	1	1	13	366938	1013	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	PS93PALS047403669380993000000
181358	محمد عدنان ساري مرشد	\N	181358	2022-01-30	\N	\N	1	852434117	1	107	كفر راعي - جنين	1107	1991-02-25	\N	\N	\N	\N	1	1	2	1030643	1013	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS90AISB010320110301030643001
181360	ابراهيم منير ابراهيم سلامة	\N	181360	2022-01-26	\N	\N	1	940548225	1	102	نابلس	1102	1978-08-26	\N	\N	\N	\N	1	2	12	20354219	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	13	\N	\N	\N	\N	PS06CAAB080100000660000801062
181362	صبحي رباح حسن مصالحة	\N	181362	2022-01-26	\N	\N	1	910564178	1	105	حجة -قلقيلية	1102	1985-12-16	\N	\N	\N	\N	1	1	6	551617	1010	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS96ARAB000000009080551617570
181379	شادي محمود مصطفى الغنيمات	\N	181379	2022-02-17	\N	\N	1	901399832	1	104	صوريف	1104	1976-10-01	\N	\N	\N	\N	1	2	6	793495	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	\N
181381	حسن علي حسن وهدان	\N	181381	2022-02-17	\N	\N	1	852689371	1	115	اريحا مخيم عقبة جبر	1115	1989-03-12	\N	\N	\N	\N	1	1	13	159216	1005	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	7	\\x	\N	\N	19	PS11PALS045601592160993000000
181382	سلام سليم محمد بركات	\N	181382	2022-02-17	\N	\N	1	978154516	1	108	بروقين - سلفيت	1101	1974-01-25	09-2512067	0599205780	\N	\N	1	2	6	406199570	1009	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	\N
181395	جاسر حاتم احمد معالي	\N	181395	2022-02-17	\N	\N	1	908083462	1	107	جنين - عجة	1107	1977-08-26	\N	\N	\N	\N	1	2	13	368542	1013	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	PS15PALS044903685420993000000
181460	هبة فالح احمد صوافطة	\N	181460	2022-02-23	\N	\N	1	907593693	1	115	بردلا	1107	1980-01-31	\N	0599255476	\N	\N	2	2	13	458578	1012	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	216	\N	\N	ps39pals04680458780993000000
181208	اسعد ابراهيم اسعد علي	\N	181208	2022-01-26	\N	\N	1	411389547	1	105	كفر قدوم - قلقيلية	1105	1994-09-21	xxxxxx	xxxxxx	\N	xxxxxx	1	1	12	580168	1010	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	xxxxxx	\N	\N	ps20caab080800000660001542788
499	اسيل جمال عبدالكريم ابوشنب	\N	000499	2021-12-23	\N	\N	1	404999328	\N	\N	\N	\N	1999-12-30	\N	\N	\N	\N	2	1	\N	\N	1007	\N	1	\N	\N	\N	167865	2022-03-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
509	صفاء عدنان محمد رياحي	\N	000509	2022-03-01	\N	\N	1	411114689	\N	\N	\N	\N	1983-05-15	\N	\N	\N	\N	2	2	\N	\N	1008	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
531	محمد نعمان رباح ثلثين	\N	000531	2022-03-24	\N	\N	1	401497789	\N	\N	\N	\N	1996-10-22	\N	\N	\N	\N	1	1	\N	\N	1001	\N	4	\N	\N	\N	400	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
519	ايمان محمد خميس عمرو	\N	000519	2021-10-10	\N	\N	1	904572211	\N	\N	\N	\N	1979-09-10	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
533	عبدالله محمد عبداللطيف العدم	\N	000533	2021-12-01	\N	\N	1	851590554	\N	\N	\N	\N	1990-06-30	\N	\N	\N	\N	1	2	\N	\N	1006	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
532	ترتيل عز الدين عبدالحفيظ جلاد	\N	000532	2022-03-27	\N	\N	1	404992893	\N	\N	\N	\N	1999-11-05	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
529	محمود عناد صادق نعيرات	\N	000529	2022-03-06	\N	\N	1	851773598	\N	\N	\N	\N	1991-10-17	\N	0562111498	\N	Mahmoudzabt@gmail.com	1	1	\N	\N	1003	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\\x	529	\N	\N	\N
534	عمير محمود سعيد عزام	\N	000534	2021-12-12	\N	\N	1	851866103	\N	\N	\N	\N	1989-06-06	042446006	0562111463	\N	omairazzam2022@gmail.com	1	2	\N	\N	1013	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
535	عروه معن محمد موسى	\N	000535	2021-11-30	\N	\N	1	408919157	\N	\N	\N	\N	2003-09-06	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	167865	2022-03-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
536	ماهر جمال حسن ولد علي	\N	000536	2021-12-13	\N	\N	1	854955507	\N	\N	\N	\N	1994-05-09	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	167865	2022-03-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
537	عثمان فالح أحمد بزور	\N	000537	2021-12-12	\N	\N	1	941032633	\N	\N	\N	\N	1985-02-23	\N	\N	\N	\N	1	2	\N	\N	1013	\N	1	\N	\N	\N	167865	2022-03-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
514	ساهر رمزي عيسى انضوني	\N	000514	2021-10-07	\N	\N	1	852830223	\N	\N	\N	\N	1990-01-01	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2022-03-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
20000	خالد زهد (الخدمات العامة)	\N	020000	2022-01-01	\N	\N	1	851025023	\N	\N	\N	\N	1988-03-17	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	167865	2022-03-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
541	عبدالله باسل محمد شلهوب	\N	000541	2022-04-06	\N	\N	1	852327220	\N	\N	\N	\N	1990-05-28	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-04-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
543	عبير ماهر عبدالكريم سوالمة	\N	000543	2022-04-07	\N	\N	1	858520240	\N	\N	\N	\N	1993-10-01	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-04-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
547	صبحه سمير موسى الحسين	\N	000547	2022-03-01	\N	\N	1	851394601	\N	\N	\N	\N	1989-10-26	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	469	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
548	تسنيم عزام فايز عنبوسي	\N	000548	2022-04-04	\N	\N	1	401339593	\N	\N	\N	\N	1996-05-24	\N	\N	\N	\N	1	2	\N	\N	\N	\N	8	\N	\N	\N	469	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
549	فراس يونس محمد دراغمه	\N	000549	2022-04-04	\N	\N	1	936536960	\N	\N	\N	\N	1984-02-23	\N	\N	\N	\N	1	2	\N	\N	1012	\N	12	\N	\N	\N	469	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
550	احمد زياد احمد شعيبات	\N	000550	2022-03-24	\N	\N	1	406776807	\N	\N	\N	\N	2022-02-15	\N	\N	\N	\N	1	1	\N	\N	\N	\N	8	\N	\N	\N	469	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
546	ديالا فراس محمد دودين	\N	000546	2022-04-04	\N	\N	1	402865174	\N	\N	\N	\N	1997-11-10	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
30000	اسلام عارضة (علاقات عامة)	\N	030000	2022-01-01	\N	\N	1	123456123	\N	\N	\N	\N	1990-01-01	\N	\N	\N	\N	2	1	\N	\N	\N	\N	1	\N	\N	\N	167865	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
552	محمد حسين محمد الحافظ	\N	000552	2022-05-08	\N	\N	1	404709743	\N	\N	\N	\N	1999-06-03	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-05-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
554	محمد يوسف محمد دراغمه	\N	000554	2022-05-15	\N	\N	1	406520213	\N	\N	\N	\N	2001-08-19	\N	\N	\N	\N	1	1	\N	\N	1012	\N	1	\N	\N	\N	469	2022-06-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
555	رامي صالح سعيد البيطار	\N	000555	2022-03-27	\N	\N	1	908583941	\N	\N	\N	\N	1977-11-14	\N	\N	\N	\N	1	2	\N	\N	1006	\N	8	\N	\N	\N	469	2022-06-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
553	محمد جمال روحي خليلي	\N	000553	2022-05-22	\N	\N	1	403809700	\N	\N	\N	\N	1998-06-10	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1017	ربيحة أحمد محمد عوض الله	\N	001017	2022-06-19	\N	\N	1	850875030	\N	\N	\N	\N	1976-01-01	\N	\N	\N	\N	1	2	\N	\N	1004	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1002	دعاء طاهر محمود سلعوس	\N	001002	2022-06-16	\N	\N	1	902932433	\N	\N	\N	\N	1978-01-09	\N	\N	\N	\N	1	2	\N	\N	1001	\N	8	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1011	ولاء تيسير محمد تيم	\N	001011	2022-06-16	\N	\N	1	946502853	\N	\N	\N	\N	1988-06-13	\N	\N	\N	\N	2	4	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1004	جلال فتحي رشيد منصور	\N	001004	2022-06-16	\N	\N	1	905168555	\N	\N	\N	\N	1978-11-27	\N	\N	\N	\N	1	2	\N	\N	1003	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1007	خالد محمد علي عبسي	\N	001007	2022-06-19	\N	\N	1	408637452	\N	\N	\N	\N	2002-12-25	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1006	قصي جميل عبدالحافظ مزاحم	\N	001006	2022-06-19	\N	\N	1	408320299	\N	\N	\N	\N	2002-03-06	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1015	ندى محمود حسين شقور	\N	001015	2022-06-16	\N	\N	1	907802078	\N	\N	\N	\N	1981-10-01	\N	\N	\N	\N	1	1	\N	\N	1001	\N	3	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1001	زينب علي احمد قواسمه	\N	001001	2022-06-19	\N	\N	1	850900150	\N	\N	\N	\N	1981-09-27	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1013	فياز جوده عبدخليل	\N	001013	2022-06-20	\N	\N	1	958721904	\N	\N	\N	\N	1975-05-09	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1010	جيهان عطاالله زايد فوده	\N	001010	2022-06-27	\N	\N	1	850974056	\N	\N	\N	\N	1986-04-05	\N	\N	\N	\N	2	2	\N	\N	1001	\N	8	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1012	صابرين نزير ابراهيم سلامة	\N	001012	2022-06-16	\N	\N	1	911584092	\N	\N	\N	\N	1987-04-23	\N	\N	\N	\N	2	2	\N	\N	1001	\N	8	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1003	منال جمعة محمود زيدان	\N	001003	2022-09-26	\N	\N	1	954112140	\N	\N	\N	\N	1972-06-11	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1016	وداد نبيل حسين ابوحمد	\N	001016	2022-06-19	\N	\N	1	910634468	\N	\N	\N	\N	1982-08-27	\N	\N	\N	\N	2	4	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1009	سجى هاشم ابراهيم الهوارين	\N	001009	2022-06-19	\N	\N	1	404702979	\N	\N	\N	\N	2000-03-05	\N	\N	\N	\N	2	1	\N	\N	1001	\N	8	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1008	تحرير سمير حسن زيات	\N	001008	2022-06-19	\N	\N	1	859621567	\N	\N	\N	\N	1995-09-19	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1014	محمد انيس محمد دراج	\N	001014	2022-06-19	\N	\N	1	409570686	\N	\N	\N	\N	2003-11-29	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-06-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
556	منصور مؤيد محمود منصور	\N	000556	2022-06-09	\N	\N	1	407483585	\N	\N	\N	\N	2001-11-04	\N	\N	\N	\N	1	1	\N	\N	1003	\N	8	\N	\N	\N	469	2022-07-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
557	فيصل نضال جميل اسماعيل	\N	000557	2022-03-22	\N	\N	1	450111695	\N	\N	\N	\N	2002-05-10	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-07-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
560	مؤمن تحسين عبدالله شاهين	\N	000560	2022-05-10	\N	\N	1	859396327	\N	\N	\N	\N	1995-08-06	\N	\N	\N	\N	1	2	\N	\N	1009	\N	1	\N	\N	\N	469	2022-07-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
561	فاتنة فرحان شكري دار ابوزيدان	ا	000561	2022-06-01	\N	\N	1	403157456	\N	\N	\N	\N	1997-12-17	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-07-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
563	ثائر محمود سليم سليمان	\N	000563	2022-05-10	\N	\N	1	401556550	\N	\N	\N	\N	1996-01-24	\N	\N	\N	\N	1	1	\N	\N	1007	\N	8	\N	\N	\N	469	2022-07-25	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
40000	مركز الاتصال الوطني	\N	040000	2022-07-27	2022-08-27	\N	1	985623568	\N	\N	\N	\N	2022-01-01	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	167865	2022-07-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
562	انوار محمد يحيى عطا فنون	\N	000562	2022-08-01	\N	\N	1	859871402	\N	\N	\N	\N	1994-10-20	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-08-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
559	مهند صادق رزق علي	\N	000559	2022-08-01	\N	\N	1	860051481	\N	\N	\N	\N	1994-12-28	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-08-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1018	احمد حسام شحادة عقل	\N	001018	2022-08-03	\N	\N	1	401757257	\N	\N	\N	\N	2003-08-22	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2022-08-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
565	محمد تيسير مفظي خواجا	\N	000565	2022-08-21	\N	\N	1	401105333	\N	\N	\N	\N	1996-02-03	\N	\N	\N	\N	1	1	\N	\N	1003	\N	8	\N	\N	\N	469	2022-08-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
182640	معاذ محمد عبدالغني ملحم	\N	182640	2022-07-31	\N	\N	1	850061821	\N	\N	\N	\N	1991-03-20	\N	0562504643	\N	mmelhem@mtit.gov.ps	1	1	1	1905298	1001	\N	1	\N	\N	\N	163679	2018-12-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	8	\N	266	\N	\N	PS87PIBC084619052980033101000
564	روان ناجي فضل فرحان	\N	000564	2022-06-20	\N	\N	1	852799402	\N	\N	\N	\N	1992-05-03	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	469	2022-08-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
566	روان عبدالهادي مصطفى ابوحسين	\N	000566	2022-06-20	\N	\N	1	402351043	\N	\N	\N	\N	1997-10-17	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-08-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
567	محمد محمود محمد عواوده	\N	000567	2022-06-01	\N	\N	1	854510732	\N	\N	\N	\N	1992-12-30	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	469	2022-08-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
568	محمد شاكر محمود ابوكنعان	\N	000568	2022-05-17	\N	\N	1	854011194	\N	\N	\N	\N	1992-05-01	\N	\N	\N	\N	1	1	\N	\N	1005	\N	8	\N	\N	\N	469	2022-08-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
569	لبنى تحسين عزات عبدالغني	\N	000569	2022-06-14	\N	\N	1	914241112	\N	\N	\N	\N	1986-07-30	\N	\N	\N	\N	1	1	\N	\N	1013	\N	1	\N	\N	\N	469	2022-08-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1020	رنا سليمان محمد شوامره	\N	001020	2022-08-28	\N	\N	1	850790668	\N	\N	\N	\N	1989-08-22	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2022-08-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1019	احلام صبحي حسين مطير	\N	001019	2022-08-21	\N	\N	1	412550881	\N	\N	\N	\N	1982-05-20	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2022-08-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
570	علي تيسير محمود عودة	\N	000570	2022-08-28	\N	\N	1	407372549	\N	\N	\N	\N	2001-09-10	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-08-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
182801	مجد سفيان محمد أبوحاكمة	\N	182801	2022-07-26	\N	\N	1	852361427	\N	\N	\N	\N	1991-02-15	\N	00972598670955	\N	mabuhakmeh@mtit.gov.ps	1	2	\N	247767	1001	\N	1	\N	\N	\N	167865	2020-08-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	00972562500283	\N	\N	PS34PALS045802477670993000000
182802	سارة نبيل احمد ابوسرور	\N	182802	2022-07-31	\N	\N	1	858556806	\N	\N	\N	\N	1995-02-10	\N	\N	\N	saraabusroor@gmail.com	2	2	\N	1615497	1001	\N	1	\N	\N	\N	163679	2020-08-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS81PIBC084216154970033101000
182812	رزق سليمان محمد حميد	\N	182812	2022-08-11	\N	\N	1	913450680	1	109	بيت لحم- طقوع	1109	1988-08-27	\N	\N	\N	\N	1	1	13	393086	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS64PALS045003930860993000000
182806	اسماعيل جعفر اسماعيل حرب	\N	182806	2022-08-11	\N	\N	1	852273507	1	101	رام الله - عبوين	1101	1990-08-08	\N	\N	\N	\N	1	1	13	234070	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS13PALS045802340700993000000
182803	محمد عدنان رزق عرموش	\N	182803	2022-08-11	\N	\N	1	860150135	\N	\N	\N	\N	1994-07-18	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	163679	2018-11-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
182811	سامح ربحي حسين غفري	\N	182811	2022-08-11	\N	\N	1	860044049	\N	\N	\N	\N	1995-05-06	\N	\N	\N	\N	1	1	7	10040763	1004	\N	1	\N	\N	\N	167865	2020-05-31	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS93TNBC000000000001005328604
182804	عبدالرحيم ناصر عبدالرحيم شتيه	\N	182804	2022-08-10	\N	\N	1	401831466	1	108	سلفيت	1108	1996-01-01	\N	\N	\N	\N	1	1	15	215348	1003	\N	1	687788	\N	\N	163679	2018-03-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	PS9ALDN043002153480450017000
182805	عبير  محمد راضي عبدالجليل صالح	\N	182805	2022-08-10	\N	\N	1	858819899	\N	\N	\N	\N	1994-09-12	\N	\N	\N	\N	2	1	\N	\N	1009	\N	1	\N	\N	\N	163679	2018-09-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
182838	فادي غالب شلالش نجوم	\N	182838	2022-08-16	\N	\N	1	910909415	1	115	أريحا	1101	1986-06-26	\N	0599933437	\N	\N	1	2	13	167239	1005	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	16	\N	\N	\N	22	PS98PALS0445601672390993000000
182834	حمزة عبدالعزيز محمود غشاش	\N	182834	2022-08-14	\N	\N	1	850345646	1	105	\N	1105	1988-07-29	\N	0562504877	\N	\N	1	1	6	555565	1010	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\\x	\N	\N	\N	PS15ARAB000000009080555565570
182836	محمد يوسف محمد المرداوي	\N	182836	2022-08-14	\N	\N	1	938145661	1	105	حبلة - قلقيلية	1105	1983-08-11	\N	\N	\N	\N	1	1	12	573833	1010	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS62CAAB080800000660000968568
182837	رائد محمد عبدالحميد جبارين	\N	182837	2022-08-15	\N	\N	1	937285112	1	104	الخليل- السعير	1104	1987-01-20	\N	0562504695	\N	\N	1	1	12	198404	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	022562125	\N	\N	PS77CAAB080300000660000249815
182835	محمد انيس محمد بطه	\N	182835	2022-08-14	\N	\N	1	909852246	1	106	حجة - طولكرم	13	1983-12-12	\N	\N	\N	\N	1	1	13	416332	1010	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	5	\N	\N	\N	\N	PS15PALS046604163320993000000
182852	محمود نبيل محمود معلا	\N	182852	2022-08-15	\N	\N	1	913454773	1	109	بيت جالا	1109	1988-04-16	\N	\N	\N	\N	1	1	13	398592	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS35PALS045003985920993000000
182850	اياد محمود امين ابونصار	\N	182850	2022-08-15	\N	\N	1	851476085	1	109	بيت جالا	1103	1989-10-24	\N	\N	\N	\N	1	1	13	398324	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS64PALS045003983240993000000
182846	وائل فايز حسين حساسنة	\N	182846	2022-08-16	\N	2022-10-01	1	853824415	1	109	العبيدية	1109	1992-06-07	\N	\N	\N	\N	1	1	13	393352	1011	\N	8	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS62PALS045003933520993000000
182839	محمد عيسى علي الديريه	\N	182839	2022-08-15	\N	\N	1	920231099	1	109	بيت فجار - بيت لحم	1109	1988-08-17	\N	\N	\N	\N	1	1	13	388928	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	6	\N	\N	\N	\N	PS34PALS045003889280993000000
176435	مهدي جمال احمد سعد	\N	000251	2021-11-02	\N	\N	1	850863051	\N	\N	\N	\N	1988-10-26	\N	0562504749	\N	mahdisaad2020@hotmail.com	1	2	\N	\N	1011	\N	1	\N	\N	\N	163679	2018-11-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	2	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
571	عز عبدالمحسن محمد ابوريان	\N	000571	2022-09-08	\N	\N	1	850881400	\N	\N	\N	\N	1986-04-14	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-09-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
572	محمد يعقوب عبدالعزيز قواسمه	\N	000572	2022-09-08	\N	\N	1	406230763	\N	\N	\N	\N	2001-05-06	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-09-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
182939	محمد نبيل محمود هصيص	\N	182939	2022-08-28	\N	\N	1	858563380	1	107	وادي عز الدين - جنين	1107	1993-12-04	042414877	0562504791	\N	kere-2020@hotmail.com	1	1	13	2370580	1013	\N	1	\N	\N	\N	163679	2018-01-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	8	\\x	\N	\N	\N	PS97PALS044923705800993000000
182940	وضاح امجد فريد حمدان	\N	182940	2022-08-28	\N	\N	1	853977809	1	107	عرابة - جنين	1102	1992-09-22	\N	\N	\N	\N	1	1	7	204964	1013	\N	1	679762	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps58tnbc271400030204964900101
182919	أيمن سامي مصطفى طعمة	\N	182919	2022-08-21	\N	\N	1	859585283	1	106	طولكرم-قفين	1106	1994-10-10	\N	0595184181	\N	ayman.tomeh94@gmail.com	1	1	1	1809178	1007	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	4	\\x	\N	\N	\N	PS56P1BCO84418091780033101000
182915	محمد احمد جميل ابوعلي	\N	182915	2022-08-14	\N	\N	1	852630524	1	106	عنبتا-طولكرم	1106	1990-07-25	0562504852	0593080440	\N	\N	1	1	15	252631	1003	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS21ALDN02022526310420017000
182916	الطيب نمر خالد يوسف	\N	182916	2022-08-14	\N	\N	1	850380924	1	106	نور شمس	1106	1989-07-20	\N	0598317717	\N	\N	1	1	13	1426082	1007	\N	1	664395	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	\N	\\x	\N	\N	\N	ps35pals046714260820993000000
182920	معتز عبدالمعطي مكحول	\N	182920	2022-08-11	\N	\N	1	850064882	1	106	عتيل-طولكرم	1106	1987-09-27	\N	\N	\N	\N	1	1	13	429569	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS79PALS046704295690993000000
182918	علي عبدالكريم ابراهيم حسن	\N	182918	2022-08-14	\N	\N	1	854775970	1	106	طولكرم شويكة	1106	1994-01-07	\N	\N	\N	\N	1	1	6	282032	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\\x	\N	\N	\N	PS33ARAB000000009070282032570
182941	خالد شعبان احمد مصطفى	\N	182941	2022-08-28	\N	\N	1	850117912	1	107	عرابة - جنين	1107	1989-02-25	\N	0598102047	\N	KACC_1989@HOTMAIL.COM	1	1	6	267832	1013	\N	1	\N	\N	\N	163679	2017-01-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	ARAB000000009230267832570
182960	محمد احمد محمد ابوطه	\N	182960	2022-08-28	\N	\N	1	850902636	1	104	يطا الخليل	1103	1985-03-27	\N	\N	\N	\N	1	1	13	1300190	1006	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	11	\N	\N	\N	\N	PS51PALS047213001900993000000
182961	بكر عطا الله سميح سعد	\N	182961	2022-08-30	\N	\N	1	950584383	\N	\N	\N	\N	1987-09-12	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	163679	2018-07-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
182973	فريد جلال محمد أبوتك	\N	182973	2022-08-30	\N	\N	1	414976209	1	107	جنين	15	1989-08-07	\N	\N	\N	\N	1	2	9	2198614	1013	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS39BJOR00504353032198614016
182966	طارق حسن توفيق مصلح	\N	182966	2022-08-31	\N	\N	1	853648681	1	101	نعلين	1103	1992-02-19	\N	\N	\N	\N	1	1	14	66336	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS18HBHO040100663360424500000
182967	محمد زكريا صالح طينة	\N	182967	2022-08-31	\N	\N	1	910761899	1	101	رام الله - البيرة - الأمعري	1101	1986-01-11	\N	\N	\N	\N	1	1	15	43131	1004	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	PS94ALDN040200431310420017000
182971	معتصم محمد جابر ابوبكر	\N	182971	2022-08-30	\N	\N	1	412182529	1	107	يعبد	2	1970-07-12	\N	\N	\N	\N	1	2	13	1363482	1013	\N	1	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	PS12PALS044913634820993000000
182974	سمير خليل محمد المقيطي	\N	182974	2022-08-28	\N	\N	1	941169773	1	115	اريحا عقبة جبر	1115	1988-07-20	\N	0562504689	\N	smaqeti@palpost.ps	1	2	6	363756	1005	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	Y	\N	0	\N	\N	\N	Y	\N	16	\N	\N	\N	\N	PS13ARAB000000009550363756570
574	احمد جاسر هلال ابوطه	\N	000574	2022-09-04	\N	\N	1	405716218	\N	\N	\N	\N	2000-09-07	\N	\N	\N	\N	1	1	\N	\N	1009	\N	1	\N	\N	\N	400	2022-09-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
573	لميس سلام شريف شديد	\N	000573	2022-10-10	\N	\N	1	411286685	\N	\N	\N	\N	1997-07-02	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-10-10	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183086	محمد موسى خميس ابراهيم	\N	183086	2022-09-04	\N	\N	1	907307839	1	109	بيت لحم	1109	1982-07-24	\N	\N	\N	\N	1	1	6	742772	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	19	PS12ARAB000000009050742772570
183090	احمد نادر محمد ابوتمام	\N	183090	2022-09-11	\N	\N	1	411548688	1	106	طولكرم	2	1991-10-24	\N	\N	\N	\N	1	1	13	440701	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	PS50PALS046704407010993000000
183091	محمد جمال (محمد فضل)  دقة	\N	183091	2022-09-13	\N	\N	1	853218295	1	106	عتيل- طولكرم	2	1990-09-05	\N	\N	\N	\N	1	1	15	72764	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	N	N	\N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS44ALDN047100727640420017000
183087	بهاء الدين عصام مدحت مرمش	\N	183087	2022-09-04	\N	\N	1	855061180	1	102	نابلس-كفير	1102	1993-12-26	2340580	0598120722	\N	\N	1	1	16	9991	1008	\N	1	\N	\N	\N	163679	2016-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	N	N	N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS47JONB084101099910030021000
183089	تسنيم محمود فواز حمد	\N	183089	2022-09-13	2020-02-11	\N	1	308125228	\N	\N	\N	\N	1994-01-24	\N	\N	\N	thamad@mtit.gov.ps	2	1	13	2221291	1001	\N	1	\N	\N	\N	167865	2020-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS62PALS045822212910993000000
183092	ناصر ابراهيم عبدالفتاح القب	\N	183092	2022-09-08	\N	\N	1	938104676	1	106	دير الغصون - طولكرم	1106	1985-04-13	\N	\N	\N	\N	1	1	6	534398/670	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	ps36arab00000000927053439870
183093	هيثم خليل أحمد سباعنه	\N	183093	2022-09-11	\N	\N	1	921525283	1	107	الزبابدة - جنين	1107	1980-12-12	\N	\N	\N	\N	1	1	13	2351957	1012	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	8	\N	\N	\N	\N	ps35pals044923519570993000000
577	بشار اسحق محمد ابونجمة	\N	000577	2022-08-22	\N	\N	1	406828988	\N	\N	\N	\N	2001-06-21	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	469	2022-10-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
578	 ايهاب علي موسى عبيات	\N	000578	2022-07-18	\N	\N	1	401735477	\N	\N	\N	\N	1997-03-16	\N	\N	\N	\N	1	1	\N	\N	1011	\N	8	\N	\N	\N	469	2022-10-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
575	محمد زياد عبدالرحمن العرجه	\N	000575	2022-10-17	\N	\N	1	852003169	\N	\N	\N	\N	1989-01-07	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-10-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
576	فاطمة يوسف حسن طه	\N	000576	2022-10-17	\N	\N	1	406671123	\N	\N	\N	\N	2001-06-08	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-10-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\\x	\N	\N	\N	\N
183088	خيري رياض توفيق اعمير	\N	183088	2022-09-07	\N	\N	1	941329682	1	106	طولكرم-بلعا	1106	1983-08-08	\N	0597957360	\N	kheiriimair@yahoo.com	1	1	6	281775	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	\N	\N	\N	0	\N	\N	\N	Y	\N	3	\N	\N	\N	\N	PS41ARAB000000009070281775570
183301	امجد موسى احمد عدوين	\N	183301	2022-09-20	\N	\N	1	975304957	1	109	بيت لحم	1109	1974-02-17	\N	\N	\N	\N	1	2	12	660000228858	1011	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	9	\N	\N	\N	\N	PS85CAAB080700000660000228858
183522	ابراهيم عصام محمد شهوان	\N	183522	2022-10-11	\N	\N	1	403992753	\N	\N	\N	\N	1999-01-24	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	163679	2018-09-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1021	محمد هشام هاشم الزقزوق	\N	001021	2022-11-08	\N	\N	1	804742609	\N	\N	\N	\N	1994-04-10	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2022-10-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1022	معاذ فايق ابراهيم ابونصر	\N	001022	2022-10-16	\N	\N	1	804807220	\N	\N	\N	\N	2000-10-16	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-10-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183593	لميس صادق حسن ابوزهيد	\N	183593	2022-10-18	\N	\N	1	853293355	\N	\N	\N	\N	1992-07-03	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-06-29	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183571	شروق احمد عبدالله صلاحات	\N	183571	2022-10-18	\N	\N	1	853195071	\N	\N	\N	\N	1991-02-22	092578370	0598927102	\N	shsalahat@mtit.gov.ps	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-06-29	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183592	امال زكريا عبدالمعطي سلاودة	\N	183592	2022-10-18	\N	\N	1	401001284	\N	\N	\N	\N	1995-10-09	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183591	حنين هاني راشد صلاحات	\N	183591	2022-10-18	\N	\N	1	851643650	\N	\N	\N	\N	1992-03-11	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183594	امنة ابراهيم محمد مصري	\N	183594	2022-10-18	\N	\N	1	850411760	\N	\N	\N	\N	1989-02-02	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-05-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183704	مهند ابراهيم احمد الأطرش	\N	183704	2022-10-18	\N	\N	1	930183991	1	104	خربة الطبقه -دورا-الخليل	1104	1975-09-16	\N	\N	\N	\N	1	2	13	301245	1006	\N	1	832385	\N	\N	163679	2018-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	10	\N	\N	\N	\N	ps86pals044703012450993000000
183711	همام فواز فارس أبورميلة تميمي	\N	183711	2022-10-19	\N	\N	1	854031861	\N	\N	\N	\N	1993-04-17	\N	\N	\N	\N	1	1	13	3311926	1006	\N	1	\N	\N	\N	167865	2020-06-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS08PALS044733119260993000000
186713	علاء خالد احمد دراغمة	\N	186713	2023-05-09	\N	\N	1	858558588	\N	\N	\N	\N	1995-02-03	\N	\N	\N	\N	1	2	\N	\N	1012	\N	1	\N	\N	\N	469	2023-05-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183713	امجد اسعد محمد خموس	\N	183713	2022-10-11	\N	\N	1	852380336	1	102	نابلس-حوارة	1102	1990-01-01	\N	\N	\N	\N	1	1	10	20424	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS98PINV089800204240030031000
579	ولاء مصطفى محمد ابوصالحة	\N	000579	2022-11-09	\N	\N	1	85440926	\N	\N	\N	\N	1986-09-01	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-11-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
580	احمد هاشم طالب صباح	\N	000580	2022-11-14	\N	\N	1	851718643	\N	\N	\N	\N	1989-06-06	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2022-11-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183822	الاء خالد قاسم أبوسريس	\N	183822	2022-10-25	\N	\N	1	946457801	1	106	نور شمس - طولكرم	1106	1985-06-17	\N	\N	\N	\N	2	4	13	73/0445375	1007	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	4	\N	\N	\N	\N	ps98pals046704453750993000000
183844	مهند مرشد يحيى عثامنة	\N	183844	2022-10-18	\N	\N	1	942291881	1	102	عصيرة الشمالية - نابلس	2	1984-05-26	\N	0598245621	\N	mohand-mm2000@hotmail.com	1	1	13	2191198	1008	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	12	\N	\N	\N	\N	PS89PALS045721911980993000000
183821	أحمد منير محمد الحلايقة	\N	183821	2022-10-18	\N	\N	1	921510384	1	104	الشويخ  - الخليل	1104	1986-11-20	0598107481 واتس	0562504701	\N	 ahmadhalayqa10@gmail.com  / Ahmad2015press@gmail.com	1	1	13	1322685	1006	2	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\\x	2228900	\N	19	ps6pals04471322685993000000
581	ساري احمد عبدالحميد السويطي	\N	000581	2022-11-13	\N	\N	1	852948629	\N	\N	\N	\N	1989-12-21	\N	\N	\N	\N	1	1	\N	\N	1006	\N	8	\N	\N	\N	469	2022-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
582	امجد عبدالرؤوف فلاح خطيب	\N	000582	2022-11-13	\N	\N	1	850148644	\N	\N	\N	\N	1988-12-22	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-11-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
584	ساري احمد عبدالحميد سويطي	\N	000584	2022-11-13	\N	\N	1	852948629	\N	\N	\N	\N	1989-12-21	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-11-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
587	امير سليم حمدان سليمان	\N	000587	2022-10-27	\N	\N	1	407588185	\N	\N	\N	\N	2004-05-04	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	469	2022-11-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
586	صهيب محمود ابراهيم فقها	\N	000586	2022-09-01	\N	\N	1	858572555	\N	\N	\N	\N	1993-06-11	\N	\N	\N	\N	1	1	\N	\N	1007	\N	1	\N	\N	\N	469	2022-11-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
585	عدي رسلان محمد ابوزياد	\N	000585	2022-11-28	\N	\N	1	401980669	\N	\N	\N	\N	1996-10-10	\N	\N	\N	\N	1	1	\N	\N	1014	\N	1	\N	\N	\N	469	2022-11-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
583	منجد محمد حسن محمود قيمري	\N	000583	2022-11-28	\N	\N	1	859525263	\N	\N	\N	\N	1995-08-05	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2022-11-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
3067	اثير طالب وجيه جبر ( مراقب مالي )	\N	003067	2022-12-01	\N	\N	1	854269008	\N	\N	\N	\N	1992-07-17	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2022-12-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
588	لمى سعد سليمان دراغمة	\N	000588	2022-11-29	\N	\N	1	853482909	\N	\N	\N	\N	1988-08-11	\N	\N	\N	\N	1	1	\N	\N	1012	\N	1	\N	\N	\N	469	2022-12-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
589	حسام عمر جميل الحساسنة	\N	000589	2022-12-07	\N	\N	1	405060179	\N	\N	\N	\N	1999-11-13	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	469	2022-12-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
183907	آلاء سعيد صلاح حبايب	\N	183907	2022-10-30	2020-08-16	\N	1	402183131	\N	\N	\N	\N	1997-07-19	\N	\N	\N	\N	2	1	\N	1441123	1007	\N	1	\N	\N	\N	167865	2020-08-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS51PALS046714411230993000000
50000	شكاوى واستفسارات البريد	\N	050000	2022-12-01	\N	\N	1	519195265	\N	\N	\N	\N	2022-12-01	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	\N	\N	167865	2022-12-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185711	باسل اسامة عيسى زغب	\N	185711	2023-01-23	\N	\N	1	853586139	1	115	أريحا	1115	1992-10-09	2322802	0599830915	\N	bzaghab@palpost.ps	1	1	6	367277	1005	\N	1	\N	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	Y	Y	\N	\N	0	\N	\N	\N	Y	\N	16	\\x	0562504690	\N	20	\N
185709	أيات محمود احمد دراغمة	\N	185709	2023-01-23	\N	\N	1	854971660	\N	\N	\N	\N	1994-07-12	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-06-29	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185718	عبدالحميد عصام عبدالحميد	\N	185718	2023-01-24	\N	\N	1	853085835	1	101	كوبر - رام الله	1101	1990-08-07	\N	\N	\N	\N	1	1	13	240646	1003	\N	1	700849	\N	\N	1	2016-04-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	1	1	1	\N	0	0	\N	Y	N	\N	0	\N	\N	\N	3	\N	\N	\N	\N	0	\N	\N	\N	Y	\N	1	\N	\N	\N	\N	PS89PALS045802406460993000000
185710	نجوى عادل كمال ابوعصب الحسيني	\N	185710	2023-01-23	\N	\N	1	946487568	\N	\N	\N	\N	1985-01-13	\N	\N	\N	\N	2	1	\N	1135609	1006	\N	1	\N	\N	\N	167865	2021-01-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS10PIBC083911356090033101000
185719	مرام فارس محمد دراغمة	\N	185719	2023-01-23	\N	\N	1	853124576	\N	\N	\N	\N	1991-06-20	\N	0562500230	\N	\N	2	1	\N	\N	1005	\N	1	\N	\N	\N	167865	2021-04-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
599	علي حامد عبدالحزيز حامد	\N	000599	2023-02-13	\N	\N	1	852841659	\N	\N	\N	\N	1991-02-11	\N	\N	\N	\N	1	1	\N	\N	1011	\N	1	\N	\N	\N	469	2023-02-15	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185862	مراد جاد الله صالح ياغي	\N	185862	2023-01-26	\N	\N	1	400635652	1	115	اريحا	1115	1995-08-14	02-2313423	0597388935	\N	myaghy@palpost.ps	1	1	13	167086	1005	\N	1	\N	\N	\N	163679	2018-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	2	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	7	\\x	\N	\N	19	ps78pals045601670860993000000
185861	فداء صبحي احمد عوضات	\N	185861	2023-01-29	\N	\N	1	939075479	\N	\N	\N	\N	1983-03-01	\N	\N	\N	\N	2	5	\N	\N	1005	\N	1	\N	\N	\N	163679	2019-01-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
185860	أميرة إياد نجي نزال	\N	185860	2023-01-31	2020-02-11	\N	1	411452212	\N	\N	\N	\N	1996-06-20	\N	\N	\N	anazzal@mtit.gov.ps	2	1	6	748345	1001	\N	1	\N	\N	\N	167865	2020-02-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	425	\N	\N	ps06arab000000009060748345570
185667	بلقيس باسم محمود معالي	\N	185667	2023-01-23	\N	\N	1	401384631	\N	\N	\N	\N	1996-11-08	\N	\N	\N	\N	2	1	\N	152075	1001	\N	1	\N	\N	\N	167865	2021-01-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS48PINV0902015207500332348000
600	رغد احمد سعيد صباح	\N	000600	2023-02-23	\N	\N	1	403831266	\N	\N	\N	\N	1998-09-02	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-02-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1025	شاكر عبدالجواد محمد محارب	\N	001025	2023-03-07	\N	\N	1	407623677	\N	\N	\N	\N	2002-08-12	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2023-03-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
606	سجود عبدالرحمن نمر ابوالرب	\N	000606	2023-03-16	\N	\N	1	401419569	\N	\N	\N	\N	1996-04-28	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
603	علي حسين محمد اسماعيل	\N	000603	2023-03-16	\N	\N	1	851912162	\N	\N	\N	\N	1988-11-08	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
605	نادين محمد عودة مصلح	\N	000605	2023-03-16	\N	\N	1	402609424	\N	\N	\N	\N	1997-06-20	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
604	ريناد توفيق صالح شريتح	\N	000604	1998-03-20	\N	\N	1	403336431	\N	\N	\N	\N	1998-03-20	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186374	شروق محمد اسماعيل حموده	\N	186374	2023-03-29	\N	\N	1	402403083	\N	\N	\N	\N	1998-05-12	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186260	ربا كمال احمد عيد	\N	186260	2023-03-21	\N	\N	1	854773348	\N	\N	\N	\N	1994-08-12	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186256	ايام رابح رشيد اسعد	\N	186256	2023-03-21	\N	\N	1	852638428	\N	\N	\N	\N	1990-10-03	0595727298	0562111545	\N	aasaad@mtit.gov.ps	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	415	\N	\N	\N
186258	ايمان برهان عارف مزيد	\N	186258	2023-03-21	\N	\N	1	411559826	\N	\N	\N	\N	1994-12-12	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186255	محمد عماد عبدالعزيز عيسى	\N	186255	2023-03-21	\N	\N	1	404375644	\N	\N	\N	\N	1999-04-23	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
607	رهف محمد نافز عساف	\N	000607	2023-03-19	\N	\N	1	403972078	\N	\N	\N	\N	1998-10-03	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
613	دعاء نعيم عبدالله ابولطيفة	\N	000613	2023-03-21	\N	\N	1	852275130	\N	\N	\N	\N	1990-05-12	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
614	شروق زهير مصطفى ابوهديل	\N	000614	2023-03-01	\N	\N	1	408497113	\N	\N	\N	\N	1996-12-31	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
615	علاء منذر فؤاد خواجا	\N	000615	2023-04-02	\N	\N	1	406402776	\N	\N	\N	\N	2000-04-30	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186259	امير رائد عبدالقادر مناصرة	\N	186259	2023-03-21	\N	\N	1	404373532	\N	\N	\N	\N	1999-04-28	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-23	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186372	فراس عيسى صبري الزير	\N	186372	2023-03-29	\N	\N	1	850374760	\N	\N	\N	\N	1989-03-07	\N	0598596085	\N	\N	1	1	\N	\N	1009	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186339	براء منصور عبداللطيف صوص	\N	186339	2023-03-15	\N	\N	1	853100857	\N	\N	\N	\N	1991-04-07	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-03-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186379	محمود احمد محمود الكوع	\N	186379	2023-03-30	\N	\N	1	850924374	1	106	بيت ليد-طولكرم	13	1981-12-06	\N	\N	\N	\N	1	2	2	7173131	1007	\N	1	\N	\N	\N	163679	2017-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	2	\N	\N	\N	\N	PS49AISB070320110307173131001
186394	علا عماد شريف ابوعواد	\N	186394	2023-03-29	\N	\N	1	404950784	\N	\N	\N	\N	1999-06-18	\N	\N	\N	\N	2	1	\N	\N	1004	\N	1	\N	\N	\N	167865	2021-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186366	نور مروان الياس بنوره	\N	186366	2023-03-29	\N	\N	1	403453558	\N	\N	\N	\N	1998-04-17	\N	\N	\N	\N	2	1	\N	\N	1011	\N	1	\N	\N	\N	167865	2022-02-24	\N	2	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186367	معاذ ابراهيم محمد صوافطة	\N	186367	2023-03-29	\N	\N	1	401822564	\N	\N	\N	\N	1996-06-24	\N	\N	\N	\N	1	1	\N	\N	1012	\N	1	\N	\N	\N	167865	2021-08-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186377	يوسف فائق سعيد صوافطة	\N	186377	2023-04-02	\N	\N	1	410849798	\N	\N	\N	\N	1995-10-11	\N	\N	\N	\N	1	1	\N	\N	1012	\N	1	\N	\N	\N	469	2023-04-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186371	يعقوب جمال يعقوب صلاح	\N	186371	2023-04-02	\N	\N	1	854279759	\N	\N	\N	\N	1992-12-29	\N	\N	\N	\N	1	1	\N	\N	1009	\N	1	\N	\N	\N	469	2023-04-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186378	مرام احمد علي خرمه	\N	186378	2023-03-30	\N	\N	1	852340314	\N	\N	\N	\N	1990-07-16	\N	\N	\N	\N	2	2	\N	\N	1008	\N	1	\N	\N	\N	167865	2022-03-13	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186415	أحمد توفيق عبدعبيد	\N	186415	2023-04-05	\N	\N	1	411525124	\N	\N	\N	\N	1995-09-19	\N	0566333322	\N	ahmadobaid675@gmail.com	1	1	\N	\N	1008	\N	1	\N	\N	\N	167865	2021-08-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186368	محمد ماجد رزق طميزه	\N	186368	2023-03-29	\N	\N	1	853607893	\N	\N	\N	\N	1993-02-01	0562504708	0595998089	\N	mtomiza@palpost.ps	1	1	7	1004416275	1006	\N	1	\N	\N	\N	163679	2019-01-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	6	\N	2206650	\N	\N	PS20TNBC000000000001004416275
186396	أماني حسام مصطفى أبوفرحة	\N	186396	2023-03-29	\N	\N	1	914237268	\N	\N	\N	\N	1986-06-16	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-10-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
167886	لنا محمود بكر حجازي	\N	167886	2023-04-04	\N	\N	1	410212930	\N	\N	\N	\N	1986-08-14	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186375	عبدالله تيسير جبر رجوب	\N	186375	2023-03-29	\N	\N	1	401703582	\N	\N	\N	\N	1996-09-01	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186383	شذى محمد حسن حمد	\N	186383	2023-03-29	\N	\N	1	404881161	\N	\N	\N	\N	2022-08-18	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-04-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186395	جهاد مؤيد يوسف عبيد	\N	186395	2023-03-29	\N	\N	1	402829782	\N	\N	\N	\N	1997-09-08	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-09-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186385	اسلام يوسف امين وراسنه	\N	186385	2023-03-30	\N	\N	1	402359079	\N	\N	\N	\N	1997-05-06	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-03-22	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
621	كرم رفيق حمدان خرمه	\N	000621	2023-04-13	\N	\N	1	403398050	\N	\N	\N	\N	1998-04-14	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
622	احمد جاسر خليل الحاج علي	\N	000622	2023-04-26	\N	\N	1	852619345	\N	\N	\N	\N	1991-01-21	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186586	اريج سليمان عزات شراب	\N	186586	2023-04-06	\N	\N	1	401439872	\N	\N	\N	\N	1996-04-13	\N	\N	\N	\N	2	2	\N	\N	1008	\N	1	\N	\N	\N	469	2023-04-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
1026	روبي جمال جميل حامد	\N	001026	2023-05-17	\N	\N	1	850495755	\N	\N	\N	\N	1989-03-27	\N	\N	\N	\N	1	1	\N	\N	1007	\N	1	\N	\N	\N	469	2023-05-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	7	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
639	عبدالسلام ذياب عبدالسلام درامنه	\N	000639	2023-05-25	\N	\N	1	852415645	\N	\N	\N	\N	1992-12-24	\N	\N	\N	\N	1	1	\N	\N	1001	\N	8	\N	\N	\N	469	2023-05-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
626	ولاء علي خير الدين برهم	\N	000626	2023-04-26	\N	\N	1	401552518	\N	\N	\N	\N	1995-12-25	\N	\N	\N	\N	1	1	\N	\N	1008	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
627	ميس عاهد فريد غنام	\N	000627	2023-04-26	\N	\N	1	403827173	\N	\N	\N	\N	1998-07-27	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186593	حلا محمد غالب ظاهر	\N	186593	2023-04-25	\N	\N	1	402917728	\N	\N	\N	\N	1997-04-21	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186674	دام العز خليل ابراهيم شلو	\N	186674	2023-04-25	\N	\N	1	403327901	\N	\N	\N	\N	1998-03-31	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	469	2023-05-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186595	مرام عدنان حسين الدباغ	\N	186595	2023-04-25	\N	\N	1	854274552	\N	\N	\N	\N	1992-06-08	\N	0562111557	\N	maldabbagh@mtit.gov.ps	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186685	حلوة امجد حسن بعدين	\N	186685	2023-04-27	\N	\N	1	859763013	\N	\N	\N	\N	1995-08-15	\N	\N	\N	hbaden@mtit.gov.ps	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
632	عمار عدنان هاشم صلاح	\N	000632	2023-04-30	\N	\N	1	901400028	\N	\N	\N	\N	1977-10-13	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	1	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186547	نداء ياسر محمد عواوده	\N	186547	2023-04-12	\N	\N	1	854385564	\N	\N	\N	\N	1993-01-01	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186545	سعيد معن سعيد شبيطه	\N	186545	2023-04-13	\N	\N	1	852535210	\N	\N	\N	\N	1991-01-11	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2023-04-26	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186686	ابراهيم علي حسن حوشيه	\N	186686	2023-04-27	\N	\N	1	401359328	\N	\N	\N	\N	1997-01-23	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186675	مريم مفيد عوض حرب	\N	186675	2023-05-09	\N	\N	1	854101276	\N	\N	\N	\N	1992-01-05	022486168	0595410054	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	469	2023-05-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186622	ريم عبدالرؤوف صالح ابوبكر	\N	186622	2023-04-30	\N	\N	1	852566355	\N	\N	\N	\N	1991-04-18	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2022-01-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186615	ادم حافظ محمد حلايقة	\N	186615	2023-04-27	\N	\N	1	406575639	\N	\N	\N	\N	2000-10-06	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186625	انتماء محمد جابر حامد	\N	186625	2023-04-27	\N	\N	1	858602576	\N	\N	\N	\N	1991-02-07	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-04-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
181740	رشيد اكرم رشيد العرب	\N	181740	2023-05-09	\N	\N	1	854629748	\N	\N	\N	\N	1994-12-01	\N	0598474979	\N	ralarab@mtit.gov.ps	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-05-09	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186710	محمد خالد حماد عمري	\N	186710	2023-05-09	\N	\N	1	852123785	\N	\N	\N	\N	1991-11-24	\N	0568600808	\N	MOHOMARY@PALPOST.PS	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2023-05-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	0562111700	\N	\N	\N
186708	ايات عادل عبدالقادر سعدة	\N	186708	2023-05-09	\N	\N	1	853173953	\N	\N	\N	\N	1990-06-04	\N	\N	\N	\N	1	1	\N	\N	1003	\N	1	\N	\N	\N	469	2023-05-24	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186779	رويده منير صبحي دار موسى	\N	186779	2023-05-21	\N	\N	1	854105749	\N	\N	\N	\N	1993-04-30	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	469	2022-04-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186731	نور عدنان محمود عمرو	\N	186731	2023-05-11	\N	\N	1	858648603	\N	\N	\N	\N	1991-07-07	\N	\N	\N	\N	2	2	\N	\N	1006	\N	1	\N	\N	\N	469	2023-05-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186915	رولا كنعان يوسف شريتح	\N	186915	2023-05-28	2023-05-28	\N	1	853655165	\N	\N	\N	\N	1992-08-11	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	400	2021-11-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186917	شهد عفيف لطفي ظاهر	\N	186917	2023-05-24	2023-05-24	\N	1	404488652	\N	\N	\N	\N	1999-02-04	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-02-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186921	نهاوند موسى عيسى ابوعفيفه	\N	186921	2023-05-28	\N	\N	1	852851765	\N	\N	\N	\N	1989-05-24	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-02-21	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186888	لنا جلال محمود الجابري	\N	186888	2023-05-28	\N	\N	1	400289674	\N	\N	\N	\N	1995-09-15	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186918	امال عادل سعيد خير الدين	\N	186918	2023-05-28	2023-05-28	\N	1	086087871	\N	\N	\N	\N	1991-02-10	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-12-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186920	ضياء محمد خالد شعلة	\N	186920	2023-05-28	2023-05-28	\N	1	854946506	\N	\N	\N	\N	1993-10-13	\N	\N	\N	\N	1	1	13	1441450	1001	\N	1	\N	\N	\N	167865	2020-08-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS50PALS046714414500993000000
186919	عمر عاطف فائق شحادة	\N	186919	2023-05-28	\N	\N	1	411662802	\N	\N	\N	\N	1996-08-28	\N	\N	\N	\N	1	1	\N	332900	1001	\N	1	\N	\N	\N	167865	2020-07-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	PS39ARAB000000009100332900570
186884	ايه عبدالسلام ابراهيم دار اسليم	\N	186884	2023-05-28	\N	\N	1	853614220	\N	\N	\N	\N	1992-10-14	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-12-05	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186886	جهاد خالد محمد اليعاقبه	\N	186886	2023-05-28	\N	\N	1	855085387	\N	\N	\N	\N	1993-10-03	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-02-01	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
186916	رئال احمد خضر زبادي	\N	186916	2023-05-24	2023-05-24	\N	1	406426700	\N	\N	\N	\N	2000-12-03	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-04-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
640	درين ايمن حمد الحامد	\N	000640	2023-06-11	\N	\N	1	404449431	\N	\N	\N	\N	1999-04-15	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	469	2023-06-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
641	هيلين جاك سليمان دحدل	\N	000641	2023-06-18	\N	\N	1	203593140	\N	\N	\N	\N	1992-02-09	\N	\N	\N	\N	1	1	\N	\N	1004	\N	1	\N	\N	\N	469	2023-06-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
642	موسى بسام موسى شلالده	\N	000642	2023-06-18	\N	\N	1	406367425	\N	\N	\N	\N	2000-05-24	\N	\N	\N	\N	1	1	\N	\N	1006	\N	1	\N	\N	\N	469	2023-06-18	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	6	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187090	اسامه عاصم مصطفى عودة	\N	187090	2023-05-29	\N	\N	1	402604680	\N	\N	\N	\N	1997-05-06	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-12-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187021	رنين حسام بدر أبوعلان	\N	187021	2023-05-31	\N	\N	1	403620503	\N	\N	\N	\N	1998-04-03	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-03-16	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187045	تالا جمال نظام عيروط	\N	187045	2023-05-28	\N	\N	1	403926892	\N	\N	\N	\N	1998-08-08	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2022-03-20	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187069	ريم محمد سليمان بلاطيه	\N	187069	2023-05-29	\N	\N	1	859763070	\N	\N	\N	\N	1995-08-16	\N	0562500036	\N	rbalatiah@mtit.gov.ps	2	2	\N	\N	1001	\N	1	\N	\N	\N	400	2021-12-19	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187016	اميره محمد عوض عوض	\N	187016	2023-05-28	\N	\N	1	406303560	\N	\N	\N	\N	1999-08-09	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	469	2022-04-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187094	محمد كامل محمد كميل	\N	187094	2023-05-29	\N	\N	1	852128859	\N	\N	\N	\N	1994-08-27	0569971002	0562111454	\N	mkmail@mtit.gov.ps	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2022-01-12	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187091	باسل عبدالمنعم طه شتيه	\N	187091	2023-05-30	\N	\N	1	860184175	\N	\N	\N	\N	1995-04-02	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187044	محمود عبدالقادر محمد خلاف	\N	187044	2023-05-29	\N	\N	1	853563518	\N	\N	\N	\N	1992-01-04	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-11-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187093	ضياء أسامه فهمي مرقه	\N	187093	2023-05-29	\N	\N	1	914600135	\N	\N	\N	\N	1986-05-05	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-08	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187095	انسام ناصر شريف سلامة	\N	187095	2023-05-29	\N	\N	1	854972833	\N	\N	\N	\N	1994-07-16	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-04	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187067	صفاء نضال راغب سيف	\N	187067	2023-05-29	\N	\N	1	853589299	\N	\N	\N	\N	1992-12-23	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	400	2022-03-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187062	نورا انور توفيق لحلوح	\N	187062	2023-05-30	\N	\N	1	401328695	\N	\N	\N	\N	1996-08-04	\N	\N	\N	\N	2	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-11-14	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187106	رايه محمود حامد اسماعيل	\N	187106	2023-06-01	\N	\N	1	853078996	\N	\N	\N	\N	1989-09-06	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187097	ماهر خالد عثمان الحروب	\N	187097	2023-05-31	\N	\N	1	943333054	\N	\N	\N	\N	1984-01-03	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	400	2021-12-06	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187110	هيا عبدالمجيد محمود قبها	\N	187110	2023-06-01	\N	\N	1	852403450	\N	\N	\N	\N	1990-06-17	\N	\N	\N	\N	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187115	عبدالستار سالم محمد صبيح	\N	187115	2023-06-04	\N	\N	1	853650414	\N	\N	\N	\N	1992-08-22	\N	0562111437	\N	\N	1	1	\N	\N	1014	\N	1	\N	\N	\N	400	2022-02-27	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187096	يزن طارق محمد شيخ	\N	187096	2023-05-31	\N	\N	1	407246073	\N	\N	\N	\N	2021-08-13	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187174	جمانه أحمد حسين خضور	\N	187174	2023-05-31	\N	\N	1	852914571	\N	\N	\N	\N	1991-07-22	\N	\N	\N	jomair@mtit.gov.ps	2	2	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187107	خديجة نادي أحمد بركات	\N	187107	2023-06-01	\N	\N	1	850292574	\N	\N	\N	\N	1989-04-10	\N	\N	\N	khadeeja.barakat@hotmail.com	2	4	\N	\N	1001	\N	1	\N	\N	\N	167865	2021-11-02	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187113	صالح رايق مصطفى عامر	\N	187113	2023-05-31	\N	\N	1	407622539	\N	\N	\N	\N	2002-09-09	\N	\N	\N	\N	1	1	\N	\N	1009	\N	1	\N	\N	\N	167865	2022-03-03	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187140	يحيى نادر موسى غانم	\N	187140	2023-05-31	\N	\N	1	411147788	\N	\N	\N	\N	1996-04-22	\N	0562111418	\N	\N	1	2	\N	\N	1003	\N	1	\N	\N	\N	167865	2022-02-07	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187065	محمد حاتم شحادة محفوظ	\N	187065	2023-05-29	\N	\N	1	853183663	\N	\N	\N	\N	1992-06-13	\N	\N	\N	\N	1	2	\N	\N	1001	\N	1	\N	\N	\N	400	2021-11-17	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
187047	محمد غالب رجا صبرا	\N	187047	2023-05-30	\N	\N	1	851724880	\N	\N	\N	\N	1988-09-21	\N	\N	\N	\N	1	2	\N	\N	1004	\N	1	\N	\N	\N	469	2023-05-30	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
469	محمد ابراهيم مصطفى جبر	\N	000469	2023-05-29	\N	\N	1	40263268	\N	\N	\N	\N	1997-07-03	\N	\N	\N	\N	1	1	\N	\N	1001	\N	1	\N	\N	\N	400	2021-11-28	\N	1	0	0	0	0	\N	\N	\N	\N	1	1	2	1	1	\N	0	0	\N	Y	Y	\N	0	0	\N	\N	3	Y	Y	N	\N	0	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3929 (class 0 OID 49312)
-- Dependencies: 258
-- Data for Name: att_org_chart; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.att_org_chart (parent_id, node_id, node_order, node_level, dept_type, dept_value, emp_numbers, state, active, node_icon, note) FROM stdin;
53	285	3	6	6	51	0	\N	Y	\N	\N
53	286	4	6	6	52	0	\N	Y	\N	\N
284	287	1	7	9	3	1	\N	Y	\N	\N
284	288	2	7	7	73	0	\N	Y	\N	\N
284	289	3	7	7	74	0	\N	Y	\N	\N
285	290	1	7	9	3	1	\N	Y	\N	\N
285	291	2	7	7	75	0	\N	Y	\N	\N
285	292	3	7	7	76	0	\N	Y	\N	\N
286	293	1	7	9	3	1	\N	Y	\N	\N
286	294	2	7	7	77	0	\N	Y	\N	\N
286	295	3	7	7	78	0	\N	Y	\N	\N
54	298	1	6	9	2	1	\N	Y	\N	\N
54	299	3	6	6	53	0	\N	Y	\N	\N
54	300	4	6	6	54	0	\N	Y	\N	\N
54	301	5	6	6	55	0	\N	Y	\N	\N
299	302	1	7	9	3	1	\N	Y	\N	\N
299	303	2	7	7	79	0	\N	Y	\N	\N
299	304	3	7	7	80	0	\N	Y	\N	\N
300	305	1	7	9	3	1	\N	Y	\N	\N
300	306	2	7	7	81	0	\N	Y	\N	\N
300	307	3	7	7	82	0	\N	Y	\N	\N
301	308	1	7	9	3	1	\N	Y	\N	\N
301	309	2	7	7	83	0	\N	Y	\N	\N
301	310	3	7	7	84	0	\N	Y	\N	\N
55	311	1	6	9	2	1	\N	Y	\N	\N
55	312	2	6	6	56	0	\N	Y	\N	\N
55	313	3	6	6	57	0	\N	Y	\N	\N
55	314	4	6	6	58	0	\N	Y	\N	\N
55	315	5	6	6	59	0	\N	Y	\N	\N
312	316	1	7	9	3	1	\N	Y	\N	\N
312	317	2	7	7	85	0	\N	Y	\N	\N
312	318	3	7	7	86	0	\N	Y	\N	\N
313	319	1	7	9	3	1	\N	Y	\N	\N
313	320	2	7	7	87	0	\N	Y	\N	\N
313	321	3	7	7	88	0	\N	Y	\N	\N
314	322	1	7	9	3	1	\N	Y	\N	\N
314	323	2	7	7	89	0	\N	Y	\N	\N
314	324	3	7	7	90	0	\N	Y	\N	\N
315	325	1	7	9	3	1	\N	Y	\N	\N
315	326	2	7	7	91	0	\N	Y	\N	\N
315	327	3	7	7	92	0	\N	Y	\N	\N
56	328	1	6	9	2	1	\N	Y	\N	\N
56	329	2	6	6	60	0	\N	Y	\N	\N
56	330	3	6	6	61	0	\N	Y	\N	\N
56	331	4	6	6	62	0	\N	Y	\N	\N
329	332	1	7	9	3	1	\N	Y	\N	\N
329	333	2	7	7	93	0	\N	Y	\N	\N
329	334	3	7	7	94	0	\N	Y	\N	\N
330	335	1	7	9	3	1	\N	Y	\N	\N
330	336	2	7	7	95	0	\N	Y	\N	\N
330	337	3	7	7	96	0	\N	Y	\N	\N
331	338	1	7	9	3	1	\N	Y	\N	\N
331	339	2	7	7	97	0	\N	Y	\N	\N
331	340	3	7	7	98	0	\N	Y	\N	\N
57	341	1	6	9	2	1	\N	Y	\N	\N
57	342	3	6	6	63	0	\N	Y	\N	\N
57	343	4	6	6	64	0	\N	Y	\N	\N
57	344	5	6	6	65	0	\N	Y	\N	\N
342	345	1	7	9	3	1	\N	Y	\N	\N
342	346	2	7	7	99	0	\N	Y	\N	\N
342	347	3	7	7	100	0	\N	Y	\N	\N
343	348	1	7	9	3	1	\N	Y	\N	\N
343	349	2	7	7	101	0	\N	Y	\N	\N
343	350	3	7	7	102	0	\N	Y	\N	\N
344	351	1	7	9	3	1	\N	Y	\N	\N
344	352	2	7	7	103	0	\N	Y	\N	\N
344	353	3	7	7	104	0	\N	Y	\N	\N
20	354	3	5	9	34	0	\N	Y	\N	\N
20	355	4	5	9	7	1	\N	Y	\N	\N
20	356	5	5	9	34	0	\N	Y	\N	\N
34	357	1	5	9	1	1	\N	Y	\N	\N
34	358	2	5	9	34	1	\N	Y	\N	\N
34	359	5	5	9	34	1	\N	Y	\N	\N
79	360	1	6	9	2	1	\N	Y	\N	\N
79	361	2	6	6	66	0	\N	Y	\N	\N
79	362	3	6	6	67	0	\N	Y	\N	\N
79	363	4	6	6	68	0	\N	Y	\N	\N
80	364	1	6	9	2	1	\N	Y	\N	\N
80	365	2	6	6	69	0	\N	Y	\N	\N
80	366	3	6	6	70	0	\N	Y	\N	\N
81	367	1	6	9	2	1	\N	Y	\N	\N
81	368	2	6	6	71	0	\N	Y	\N	\N
81	369	3	6	6	72	0	\N	Y	\N	\N
32	370	3	5	9	34	1	\N	Y	\N	\N
32	371	5	5	9	34	1	\N	Y	\N	\N
82	372	1	6	9	2	1	\N	Y	\N	\N
82	373	3	6	6	73	0	\N	Y	\N	\N
82	374	4	6	6	74	0	\N	Y	\N	\N
33	375	1	5	9	1	1	\N	Y	\N	\N
33	376	3	5	9	34	2	\N	Y	\N	\N
33	377	4	5	9	7	3	\N	Y	\N	\N
33	378	6	5	9	34	2	\N	Y	\N	\N
83	379	1	6	9	2	1	\N	Y	\N	\N
83	380	2	6	6	75	0	\N	Y	\N	\N
83	381	3	6	6	76	0	\N	Y	\N	\N
84	382	1	6	9	2	1	\N	Y	\N	\N
84	383	2	6	6	77	0	\N	Y	\N	\N
84	384	3	6	6	78	0	\N	Y	\N	\N
85	385	1	6	9	2	1	\N	Y	\N	\N
85	386	2	6	6	79	0	\N	Y	\N	\N
85	387	3	6	6	80	0	\N	Y	\N	\N
85	388	4	6	6	81	0	\N	Y	\N	\N
85	389	5	6	6	82	0	\N	Y	\N	\N
361	391	1	7	9	3	1	\N	Y	\N	\N
361	392	2	7	7	105	0	\N	Y	\N	\N
361	393	3	7	7	106	0	\N	Y	\N	\N
362	394	1	7	9	3	1	\N	Y	\N	\N
362	395	2	7	7	107	0	\N	Y	\N	\N
362	396	3	7	7	108	0	\N	Y	\N	\N
363	397	1	7	9	3	1	\N	Y	\N	\N
363	398	2	7	7	109	0	\N	Y	\N	\N
363	399	3	7	7	110	0	\N	Y	\N	\N
365	400	1	7	9	3	1	\N	Y	\N	\N
365	401	2	7	7	111	0	\N	Y	\N	\N
365	402	3	7	7	112	0	\N	Y	\N	\N
366	403	1	7	9	3	1	\N	Y	\N	\N
366	404	2	7	7	113	0	\N	Y	\N	\N
366	405	3	7	7	114	0	\N	Y	\N	\N
368	406	1	7	9	3	1	\N	Y	\N	\N
368	407	2	7	7	115	0	\N	Y	\N	\N
368	408	\N	7	\N	\N	\N	\N	Y	\N	\N
369	409	1	7	9	3	1	\N	Y	\N	\N
369	410	2	7	7	116	0	\N	Y	\N	\N
373	411	1	7	9	3	1	\N	Y	\N	\N
373	412	2	7	7	117	0	\N	Y	\N	\N
374	413	1	7	9	3	1	\N	Y	\N	\N
374	414	2	7	7	118	0	\N	Y	\N	\N
380	415	1	7	9	3	1	\N	Y	\N	\N
380	416	2	7	7	119	0	\N	Y	\N	\N
381	417	1	7	9	3	1	\N	Y	\N	\N
381	418	2	7	7	120	0	\N	Y	\N	\N
383	419	1	7	9	3	1	\N	Y	\N	\N
383	420	2	7	7	121	0	\N	Y	\N	\N
384	421	1	7	9	3	1	\N	Y	\N	\N
384	422	2	7	7	122	0	\N	Y	\N	\N
59	423	1	6	9	2	1	\N	Y	\N	\N
59	424	2	6	6	83	0	\N	Y	\N	\N
59	425	3	6	6	84	0	\N	Y	\N	\N
59	426	5	6	6	85	0	\N	Y	\N	\N
59	428	6	6	6	86	0	\N	Y	\N	\N
424	429	1	7	9	3	1	\N	Y	\N	\N
424	430	2	7	7	127	0	\N	Y	\N	\N
424	431	3	7	7	128	0	\N	Y	\N	\N
386	432	1	7	9	3	1	\N	Y	\N	\N
386	433	2	7	7	123	0	\N	Y	\N	\N
425	434	1	7	9	3	1	\N	Y	\N	\N
425	435	2	7	7	129	0	\N	Y	\N	\N
425	436	3	7	7	130	0	\N	Y	\N	\N
387	437	1	7	9	3	1	\N	Y	\N	\N
387	438	2	7	7	124	0	\N	Y	\N	\N
388	439	1	7	9	3	1	\N	Y	\N	\N
388	440	2	7	7	125	0	\N	Y	\N	\N
389	441	1	7	9	3	1	\N	Y	\N	\N
389	442	2	7	7	126	0	\N	Y	\N	\N
59	443	4	6	6	99	0	\N	Y	\N	\N
443	444	1	7	9	3	1	\N	Y	\N	\N
443	445	2	7	7	131	0	\N	Y	\N	\N
443	446	3	7	7	132	0	\N	Y	\N	\N
426	447	1	7	9	3	1	\N	Y	\N	\N
426	448	2	7	7	133	0	\N	Y	\N	\N
426	449	3	7	7	134	0	\N	Y	\N	\N
428	450	1	7	9	3	1	\N	Y	\N	\N
428	451	2	7	7	135	0	\N	Y	\N	\N
428	452	3	7	7	136	0	\N	Y	\N	\N
60	453	1	6	9	2	1	\N	Y	\N	\N
60	454	4	6	6	87	0	\N	Y	\N	\N
60	455	5	6	6	88	0	\N	Y	\N	\N
454	456	1	7	9	3	1	\N	Y	\N	\N
454	457	2	7	7	137	0	\N	Y	\N	\N
454	458	3	7	7	138	0	\N	Y	\N	\N
455	459	1	7	9	3	1	\N	Y	\N	\N
455	460	2	7	7	139	0	\N	Y	\N	\N
455	461	3	7	7	140	0	\N	Y	\N	\N
455	462	4	7	7	141	0	\N	Y	\N	\N
61	463	1	6	9	2	1	\N	Y	\N	\N
61	464	2	6	6	89	0	\N	Y	\N	\N
61	465	3	6	6	90	0	\N	Y	\N	\N
61	466	4	6	6	91	0	\N	Y	\N	\N
464	467	1	7	9	3	1	\N	Y	\N	\N
464	468	2	7	7	142	0	\N	Y	\N	\N
465	469	1	7	9	3	1	\N	Y	\N	\N
465	470	3	7	7	143	0	\N	Y	\N	\N
466	471	1	7	9	3	1	\N	Y	\N	\N
466	472	2	7	7	144	0	\N	Y	\N	\N
62	473	1	6	9	2	1	\N	Y	\N	\N
62	474	3	6	6	92	0	\N	Y	\N	\N
62	475	4	6	6	93	0	\N	Y	\N	\N
62	476	5	6	6	94	0	\N	Y	\N	\N
474	477	1	7	9	3	1	\N	Y	\N	\N
474	478	2	7	7	145	3	\N	Y	\N	\N
475	479	1	7	9	3	1	\N	Y	\N	\N
475	480	2	7	7	146	0	\N	Y	\N	\N
476	481	1	7	9	3	1	\N	Y	\N	\N
476	482	2	7	7	147	0	\N	Y	\N	\N
63	483	1	6	9	2	1	\N	Y	\N	\N
63	484	2	6	6	95	0	\N	Y	\N	\N
63	485	3	6	6	96	0	\N	Y	\N	\N
63	486	4	6	6	97	0	\N	Y	\N	\N
63	487	5	6	6	98	0	\N	Y	\N	\N
484	488	1	7	9	3	1	\N	Y	\N	\N
484	489	2	7	7	148	0	\N	Y	\N	\N
485	490	1	7	9	3	1	\N	Y	\N	\N
485	491	2	7	7	149	0	\N	Y	\N	\N
486	492	1	7	9	3	1	\N	Y	\N	\N
486	493	2	7	7	150	0	\N	Y	\N	\N
486	494	3	7	7	151	0	\N	Y	\N	\N
486	495	4	7	7	152	0	\N	Y	\N	\N
487	496	1	7	9	3	1	\N	Y	\N	\N
487	497	2	7	7	153	0	\N	Y	\N	\N
23	499	2	6	9	5	1	\N	Y	\N	\N
247	500	1	7	10	6	1	\N	Y	\N	\N
247	501	\N	7	\N	\N	\N	\N	Y	\N	\N
247	502	\N	7	\N	\N	0	\N	Y	\N	\N
25	503	2	6	6	100	0	\N	Y	\N	\N
25	504	3	6	6	101	0	\N	Y	\N	\N
24	505	3	6	6	102	0	\N	Y	\N	\N
24	506	4	6	6	103	0	\N	Y	\N	\N
28	507	3	6	6	104	0	\N	Y	\N	\N
28	508	4	6	6	105	0	\N	Y	\N	\N
28	509	5	6	6	106	0	\N	Y	\N	\N
65	510	1	5	9	1	1	\N	Y	\N	\N
65	511	2	5	9	34	1	\N	Y	\N	\N
65	512	6	5	9	34	1	\N	Y	\N	\N
96	513	1	6	9	2	1	\N	Y	\N	\N
96	514	3	6	6	107	0	\N	Y	\N	\N
96	515	4	6	6	108	0	\N	Y	\N	\N
514	516	1	7	9	3	1	\N	Y	\N	\N
514	517	2	7	7	156	0	\N	Y	\N	\N
515	518	1	7	9	3	1	\N	Y	\N	\N
515	519	2	7	7	157	0	\N	Y	\N	\N
97	520	1	6	9	2	1	\N	Y	\N	\N
97	521	2	6	6	109	0	\N	Y	\N	\N
97	522	3	6	6	110	0	\N	Y	\N	\N
521	523	1	7	9	3	1	\N	Y	\N	\N
521	524	2	7	7	158	0	\N	Y	\N	\N
522	525	1	7	9	3	1	\N	Y	\N	\N
522	526	2	7	7	159	0	\N	Y	\N	\N
98	527	1	6	9	2	1	\N	Y	\N	\N
98	528	2	6	6	111	0	\N	Y	\N	\N
98	529	3	6	6	112	1	\N	Y	\N	\N
528	530	1	7	9	3	1	\N	Y	\N	\N
528	531	2	7	7	160	0	\N	Y	\N	\N
529	532	1	7	9	3	1	\N	Y	\N	\N
529	533	2	7	7	161	3	\N	Y	\N	\N
99	534	1	6	9	2	1	\N	Y	\N	\N
99	535	2	6	6	113	0	\N	Y	\N	\N
99	536	3	6	6	114	0	\N	Y	\N	\N
535	537	1	7	9	3	1	\N	Y	\N	\N
535	538	2	7	7	162	0	\N	Y	\N	\N
536	539	1	7	9	3	1	\N	Y	\N	\N
536	540	2	7	7	163	0	\N	Y	\N	\N
100	541	1	6	9	2	1	\N	Y	\N	\N
100	542	2	6	6	115	0	\N	Y	\N	\N
100	543	3	6	6	116	0	\N	Y	\N	\N
542	544	1	7	9	3	1	\N	Y	\N	\N
542	545	2	7	7	164	0	\N	Y	\N	\N
543	546	1	7	9	3	1	\N	Y	\N	\N
543	547	2	7	7	165	0	\N	Y	\N	\N
101	548	1	6	9	2	1	\N	Y	\N	\N
101	549	2	6	6	117	0	\N	Y	\N	\N
101	550	3	6	6	118	0	\N	Y	\N	\N
549	551	1	7	9	3	1	\N	Y	\N	\N
549	552	2	7	7	166	0	\N	Y	\N	\N
550	553	1	7	9	3	1	\N	Y	\N	\N
550	554	2	7	7	167	0	\N	Y	\N	\N
111	555	2	7	7	168	0	\N	Y	\N	\N
113	556	2	7	7	169	0	\N	Y	\N	\N
112	557	2	7	7	170	0	\N	Y	\N	\N
503	558	1	7	9	3	1	\N	Y	\N	\N
503	559	2	7	7	180	0	\N	Y	\N	\N
504	560	1	7	9	3	1	\N	Y	\N	\N
504	561	2	7	7	181	0	\N	Y	\N	\N
117	562	1	7	7	171	0	\N	Y	\N	\N
118	563	2	7	7	172	0	\N	Y	\N	\N
121	564	2	7	7	173	0	\N	Y	\N	\N
122	565	2	7	7	174	0	\N	Y	\N	\N
505	566	1	7	9	3	1	\N	Y	\N	\N
505	567	2	7	7	175	0	\N	Y	\N	\N
506	568	1	7	9	3	1	\N	Y	\N	\N
506	569	2	7	7	176	0	\N	Y	\N	\N
507	570	1	7	9	3	1	\N	Y	\N	\N
507	571	2	7	7	177	0	\N	Y	\N	\N
508	572	1	7	9	3	1	\N	Y	\N	\N
508	573	2	7	7	178	0	\N	Y	\N	\N
509	574	1	7	9	3	1	\N	Y	\N	\N
509	575	2	7	7	179	0	\N	Y	\N	\N
70	576	1	6	9	2	1	\N	Y	\N	\N
\N	577	\N	\N	\N	\N	0	\N	Y	\N	\N
247	578	\N	7	\N	\N	1	\N	Y	\N	\N
247	579	2	7	7	154	0	\N	Y	\N	\N
247	580	3	7	7	155	0	\N	Y	\N	\N
70	581	2	6	6	119	0	\N	Y	\N	\N
70	582	3	6	6	125	0	\N	Y	\N	\N
70	583	4	6	6	120	0	\N	Y	\N	\N
70	584	5	6	6	121	0	\N	Y	\N	\N
70	585	6	6	6	122	0	\N	Y	\N	\N
70	586	7	6	6	123	0	\N	Y	\N	\N
70	587	8	6	6	124	0	\N	Y	\N	\N
581	588	1	7	9	3	1	\N	Y	\N	\N
581	589	2	7	7	182	0	\N	Y	\N	\N
582	590	1	7	9	3	1	\N	Y	\N	\N
582	591	2	7	7	183	0	\N	Y	\N	\N
583	592	1	7	9	3	1	\N	Y	\N	\N
583	593	2	7	7	184	0	\N	Y	\N	\N
583	594	3	7	7	185	0	\N	Y	\N	\N
584	595	1	7	9	3	1	\N	Y	\N	\N
584	596	2	7	7	186	0	\N	Y	\N	\N
584	597	3	7	7	187	0	\N	Y	\N	\N
584	598	4	7	7	188	0	\N	Y	\N	\N
585	599	1	7	9	3	1	\N	Y	\N	\N
585	600	2	7	7	189	0	\N	Y	\N	\N
585	601	3	7	7	190	0	\N	Y	\N	\N
585	602	4	7	7	191	0	\N	Y	\N	\N
586	603	1	7	9	3	1	\N	Y	\N	\N
586	604	2	7	7	192	0	\N	Y	\N	\N
586	605	3	7	7	193	0	\N	Y	\N	\N
586	606	4	7	7	194	0	\N	Y	\N	\N
587	607	1	7	9	3	1	\N	Y	\N	\N
587	608	2	7	7	195	0	\N	Y	\N	\N
587	609	3	7	7	196	0	\N	Y	\N	\N
71	610	1	6	9	2	1	\N	Y	\N	\N
71	611	3	6	6	126	0	\N	Y	\N	\N
71	612	4	6	6	127	0	\N	Y	\N	\N
71	613	5	6	6	128	0	\N	Y	\N	\N
71	614	6	6	6	129	0	\N	Y	\N	\N
71	615	7	6	6	130	0	\N	Y	\N	\N
71	616	8	6	6	131	0	\N	Y	\N	\N
71	617	9	6	6	132	0	\N	Y	\N	\N
71	618	10	6	6	133	0	\N	Y	\N	\N
71	619	11	6	6	134	0	\N	Y	\N	\N
71	620	12	6	6	135	0	\N	Y	\N	\N
611	621	1	7	9	3	1	\N	Y	\N	\N
611	622	2	7	7	197	0	\N	Y	\N	\N
611	623	3	7	7	198	0	\N	Y	\N	\N
611	624	4	7	7	199	0	\N	Y	\N	\N
611	625	5	7	7	200	0	\N	Y	\N	\N
612	626	1	7	9	3	1	\N	Y	\N	\N
612	627	2	7	7	201	0	\N	Y	\N	\N
612	628	3	7	7	202	0	\N	Y	\N	\N
613	629	1	7	9	3	1	\N	Y	\N	\N
613	630	2	7	7	203	0	\N	Y	\N	\N
613	631	3	7	7	204	0	\N	Y	\N	\N
614	632	1	7	9	3	1	\N	Y	\N	\N
614	633	2	7	7	205	0	\N	Y	\N	\N
614	634	3	7	7	206	0	\N	Y	\N	\N
616	635	1	7	9	3	1	\N	Y	\N	\N
616	636	2	7	7	207	0	\N	Y	\N	\N
616	637	3	7	7	208	0	\N	Y	\N	\N
618	638	1	7	9	3	1	\N	Y	\N	\N
618	639	2	7	7	209	0	\N	Y	\N	\N
618	640	3	7	7	210	0	\N	Y	\N	\N
619	641	1	7	9	3	1	\N	Y	\N	\N
619	642	2	7	7	211	0	\N	Y	\N	\N
619	643	3	7	7	212	0	\N	Y	\N	\N
620	644	1	7	9	3	1	\N	Y	\N	\N
620	645	2	7	7	213	0	\N	Y	\N	\N
620	646	3	7	7	214	0	\N	Y	\N	\N
72	647	1	6	9	2	1	\N	Y	\N	\N
72	648	2	6	6	136	0	\N	Y	\N	\N
72	649	3	6	6	137	0	\N	Y	\N	\N
72	650	4	6	6	138	0	\N	Y	\N	\N
72	651	5	6	6	139	0	\N	Y	\N	\N
72	652	6	6	6	140	0	\N	Y	\N	\N
72	653	7	6	6	141	0	\N	Y	\N	\N
648	654	1	7	9	3	1	\N	Y	\N	\N
648	655	2	7	7	215	0	\N	Y	\N	\N
649	656	1	7	9	3	1	\N	Y	\N	\N
649	657	2	7	7	216	0	\N	Y	\N	\N
650	658	1	7	9	3	1	\N	Y	\N	\N
650	659	2	7	7	217	0	\N	Y	\N	\N
651	660	1	7	9	3	1	\N	Y	\N	\N
651	661	3	7	7	218	0	\N	Y	\N	\N
652	662	1	7	9	3	1	\N	Y	\N	\N
652	663	2	7	7	219	0	\N	Y	\N	\N
653	664	1	7	9	3	1	\N	Y	\N	\N
653	665	1	7	7	220	0	\N	Y	\N	\N
73	666	1	6	9	2	1	\N	Y	\N	\N
73	667	2	6	6	142	0	\N	Y	\N	\N
73	668	3	6	6	143	0	\N	Y	\N	\N
667	669	1	7	9	3	1	\N	Y	\N	\N
667	670	2	7	7	221	0	\N	Y	\N	\N
668	671	1	7	9	3	1	\N	Y	\N	\N
668	672	2	7	7	222	0	\N	Y	\N	\N
75	701	1	6	9	2	1	\N	Y	\N	\N
75	702	2	6	6	150	0	\N	Y	\N	\N
75	703	3	6	6	151	0	\N	Y	\N	\N
75	704	4	6	6	152	0	\N	Y	\N	\N
75	705	5	6	6	153	0	\N	Y	\N	\N
75	706	6	6	6	154	0	\N	Y	\N	\N
75	707	\N	6	\N	\N	\N	\N	Y	\N	\N
702	708	1	7	9	3	1	\N	Y	\N	\N
702	709	2	7	7	238	0	\N	Y	\N	\N
702	710	3	7	7	239	0	\N	Y	\N	\N
702	711	4	7	7	240	0	\N	Y	\N	\N
702	712	5	7	7	241	0	\N	Y	\N	\N
702	713	\N	7	\N	\N	\N	\N	Y	\N	\N
703	714	1	7	9	3	1	\N	Y	\N	\N
703	715	2	7	7	242	0	\N	Y	\N	\N
703	716	3	7	7	243	0	\N	Y	\N	\N
704	717	1	7	9	3	1	\N	Y	\N	\N
704	718	2	7	7	244	0	\N	Y	\N	\N
705	719	1	7	9	3	1	\N	Y	\N	\N
705	720	2	7	7	245	0	\N	Y	\N	\N
705	721	3	7	7	246	0	\N	Y	\N	\N
705	722	4	7	7	247	0	\N	Y	\N	\N
706	723	1	7	9	3	1	\N	Y	\N	\N
706	724	2	7	7	248	0	\N	Y	\N	\N
706	725	3	7	7	249	0	\N	Y	\N	\N
706	726	4	7	7	250	0	\N	Y	\N	\N
76	727	1	6	9	2	1	\N	Y	\N	\N
76	728	2	6	6	155	0	\N	Y	\N	\N
76	729	3	6	6	156	0	\N	Y	\N	\N
728	730	1	7	9	3	1	\N	Y	\N	\N
728	731	2	7	7	251	0	\N	Y	\N	\N
728	732	3	7	7	252	0	\N	Y	\N	\N
728	733	4	7	7	253	0	\N	Y	\N	\N
728	734	5	7	7	254	0	\N	Y	\N	\N
729	735	1	7	9	3	1	\N	Y	\N	\N
729	736	2	7	7	255	0	\N	Y	\N	\N
729	737	3	7	7	256	0	\N	Y	\N	\N
729	738	4	7	7	257	0	\N	Y	\N	\N
729	739	5	7	7	258	0	\N	Y	\N	\N
11	740	1	4	9	1	1	\N	Y	\N	\N
11	741	3	4	2	6	0	\N	Y	\N	\N
11	742	4	4	2	7	0	\N	Y	\N	\N
742	743	3	5	9	34	3	\N	Y	\N	\N
13	744	2	4	9	52	1	\N	Y	\N	\N
13	745	3	4	9	34	1	\N	Y	\N	\N
13	746	4	4	5	51	0	\N	Y	\N	\N
13	747	5	4	5	52	0	\N	Y	\N	\N
14	748	1	4	9	8	1	\N	Y	\N	\N
14	749	3	4	9	34	1	\N	Y	\N	\N
14	750	4	4	5	53	0	\N	Y	\N	\N
14	751	5	4	5	54	0	\N	Y	\N	\N
15	752	1	4	9	8	1	\N	Y	\N	\N
15	753	3	4	9	34	1	\N	Y	\N	\N
15	754	4	4	5	55	1	\N	Y	\N	\N
15	755	5	4	5	56	1	\N	Y	\N	\N
16	756	1	4	9	8	1	\N	Y	\N	\N
16	758	4	4	5	57	0	\N	Y	\N	\N
16	759	5	4	5	58	0	\N	Y	\N	\N
17	760	1	4	9	2	1	\N	Y	\N	\N
17	761	2	4	6	157	0	\N	Y	\N	\N
17	762	3	4	6	158	0	\N	Y	\N	\N
17	763	4	4	6	159	0	\N	Y	\N	\N
132	765	1	8	9	4	1	\N	Y	\N	\N
203	766	1	7	9	3	1	\N	Y	\N	\N
153	769	1	8	9	21	1	\N	Y	\N	\N
153	770	2	8	9	29	2	\N	Y	\N	\N
171	771	1	8	9	33	3	\N	Y	\N	\N
170	772	1	8	9	4	1	\N	Y	\N	\N
108	774	2	8	9	21	1	\N	Y	\N	\N
158	776	1	8	9	26	3	\N	Y	\N	\N
91	777	1	6	5	59	0	\N	Y	\N	\N
91	778	2	6	5	60	0	\N	Y	\N	\N
91	779	3	6	5	61	0	\N	Y	\N	\N
91	780	4	6	5	62	0	\N	Y	\N	\N
91	781	5	6	5	63	0	\N	Y	\N	\N
91	782	6	6	5	64	0	\N	Y	\N	\N
91	783	7	6	5	65	0	\N	Y	\N	\N
91	784	8	6	5	66	0	\N	Y	\N	\N
91	785	9	6	5	67	0	\N	Y	\N	\N
91	786	10	6	5	68	0	\N	Y	\N	\N
91	787	11	6	5	69	0	\N	Y	\N	\N
777	788	1	7	9	2	1	\N	Y	\N	\N
777	789	2	7	6	32	0	\N	Y	\N	\N
777	790	3	7	6	33	0	\N	Y	\N	\N
789	791	1	8	9	3	1	\N	Y	\N	\N
789	792	2	8	7	259	0	\N	Y	\N	\N
790	793	1	8	9	3	1	\N	Y	\N	\N
790	794	2	8	7	260	0	\N	Y	\N	\N
778	795	1	7	9	2	1	\N	Y	\N	\N
778	796	4	7	6	162	5	\N	Y	\N	\N
778	797	5	7	6	163	5	\N	Y	\N	\N
796	798	1	8	9	3	1	\N	Y	\N	\N
796	799	2	8	7	269	0	\N	Y	\N	\N
797	801	1	8	9	3	1	\N	Y	\N	\N
797	802	2	8	7	270	0	\N	Y	\N	\N
779	803	1	7	9	2	1	\N	Y	\N	\N
779	804	2	7	6	164	0	\N	Y	\N	\N
779	805	3	7	6	165	0	\N	Y	\N	\N
804	806	1	8	9	3	1	\N	Y	\N	\N
804	807	2	8	7	271	0	\N	Y	\N	\N
805	808	1	8	9	3	1	\N	Y	\N	\N
805	809	2	8	7	272	0	\N	Y	\N	\N
780	810	1	7	9	2	1	\N	Y	\N	\N
780	811	2	7	6	166	0	\N	Y	\N	\N
780	812	3	7	6	167	0	\N	Y	\N	\N
781	813	1	7	9	2	1	\N	Y	\N	\N
781	814	3	7	6	168	0	\N	Y	\N	\N
781	815	4	7	6	169	0	\N	Y	\N	\N
782	816	1	7	9	2	1	\N	Y	\N	\N
782	817	3	7	6	170	0	\N	Y	\N	\N
782	818	4	7	6	171	0	\N	Y	\N	\N
783	819	1	7	9	2	1	\N	Y	\N	\N
783	820	2	7	6	172	0	\N	Y	\N	\N
783	821	3	7	6	173	0	\N	Y	\N	\N
784	822	1	7	9	2	1	\N	Y	\N	\N
784	823	2	7	6	174	0	\N	Y	\N	\N
784	824	3	7	6	175	0	\N	Y	\N	\N
785	825	1	7	9	2	1	\N	Y	\N	\N
785	826	2	7	6	176	0	\N	Y	\N	\N
785	827	3	7	6	177	0	\N	Y	\N	\N
786	828	1	7	9	2	1	\N	Y	\N	\N
786	829	2	7	6	178	0	\N	Y	\N	\N
786	830	3	7	6	179	0	\N	Y	\N	\N
787	831	1	7	9	2	1	\N	Y	\N	\N
787	832	3	7	6	180	0	\N	Y	\N	\N
787	833	4	7	6	181	0	\N	Y	\N	\N
811	834	1	8	9	3	1	\N	Y	\N	\N
811	835	2	8	7	273	0	\N	Y	\N	\N
812	836	1	8	9	3	1	\N	Y	\N	\N
812	837	2	8	7	274	0	\N	Y	\N	\N
814	838	1	8	9	3	1	\N	Y	\N	\N
814	839	2	8	7	275	0	\N	Y	\N	\N
815	840	1	8	9	3	1	\N	Y	\N	\N
815	841	2	8	7	276	0	\N	Y	\N	\N
817	842	1	8	9	3	1	\N	Y	\N	\N
817	843	2	8	7	277	0	\N	Y	\N	\N
818	844	1	8	9	3	1	\N	Y	\N	\N
818	845	2	8	7	278	0	\N	Y	\N	\N
820	846	1	8	9	3	1	\N	Y	\N	\N
820	847	2	8	7	279	0	\N	Y	\N	\N
821	848	1	8	9	3	1	\N	Y	\N	\N
821	849	2	8	7	280	0	\N	Y	\N	\N
823	850	1	8	9	3	1	\N	Y	\N	\N
823	851	2	8	7	281	0	\N	Y	\N	\N
824	852	1	8	9	3	1	\N	Y	\N	\N
824	853	2	8	7	282	0	\N	Y	\N	\N
826	854	1	8	9	3	1	\N	Y	\N	\N
826	855	2	8	7	285	0	\N	Y	\N	\N
827	856	1	8	9	3	1	\N	Y	\N	\N
827	857	2	8	7	286	0	\N	Y	\N	\N
829	858	1	8	9	3	1	\N	Y	\N	\N
829	859	2	8	7	287	0	\N	Y	\N	\N
830	860	1	8	9	3	1	\N	Y	\N	\N
830	861	2	8	7	288	0	\N	Y	\N	\N
832	862	1	8	9	3	1	\N	Y	\N	\N
832	863	2	8	7	289	0	\N	Y	\N	\N
833	864	1	8	9	3	1	\N	Y	\N	\N
833	865	2	8	7	290	0	\N	Y	\N	\N
163	866	1	7	9	3	1	\N	Y	\N	\N
163	867	2	7	7	261	0	\N	Y	\N	\N
164	868	1	7	9	3	1	\N	Y	\N	\N
164	869	2	7	7	262	0	\N	Y	\N	\N
165	870	1	7	9	3	1	\N	Y	\N	\N
165	871	2	7	7	263	0	\N	Y	\N	\N
166	872	1	7	9	3	1	\N	Y	\N	\N
166	873	2	7	7	264	0	\N	Y	\N	\N
168	874	1	7	9	3	1	\N	Y	\N	\N
168	875	2	7	7	265	0	\N	Y	\N	\N
169	876	1	7	9	3	1	\N	Y	\N	\N
169	877	2	7	7	266	0	\N	Y	\N	\N
175	878	1	7	9	3	1	\N	Y	\N	\N
175	879	2	7	7	267	0	\N	Y	\N	\N
176	880	1	7	9	3	1	\N	Y	\N	\N
176	881	2	7	7	268	0	\N	Y	\N	\N
22	882	1	5	9	1	1	\N	Y	\N	\N
22	883	3	5	9	34	1	\N	Y	\N	\N
22	884	6	5	9	34	1	\N	Y	\N	\N
742	885	2	5	9	22	10	\N	Y	\N	\N
758	886	1	5	9	2	1	\N	Y	\N	\N
759	887	1	5	9	2	1	\N	Y	\N	\N
754	888	2	5	6	160	1	\N	Y	\N	\N
888	889	1	6	9	3	1	\N	Y	\N	\N
755	891	2	5	9	3	1	\N	Y	\N	\N
750	892	1	5	9	2	1	\N	Y	\N	\N
751	893	1	5	9	2	1	\N	Y	\N	\N
762	894	1	5	9	3	1	\N	Y	\N	\N
763	895	1	5	9	3	1	\N	Y	\N	\N
74	896	1	6	5	70	0	\N	Y	\N	\N
74	897	2	6	5	71	0	\N	Y	\N	\N
74	898	3	6	5	72	0	\N	Y	\N	\N
74	899	4	6	5	73	0	\N	Y	\N	\N
74	900	5	6	5	74	0	\N	Y	\N	\N
74	901	6	6	5	75	0	\N	Y	\N	\N
74	902	7	6	5	76	0	\N	Y	\N	\N
74	903	8	6	5	77	0	\N	Y	\N	\N
74	904	9	6	5	78	0	\N	Y	\N	\N
74	905	10	6	5	79	0	\N	Y	\N	\N
74	906	11	6	5	80	0	\N	Y	\N	\N
896	907	1	7	9	2	1	\N	Y	\N	\N
896	908	2	7	9	51	1	\N	Y	\N	\N
897	909	1	7	9	2	1	\N	Y	\N	\N
897	910	3	7	9	51	1	\N	Y	\N	\N
898	911	1	7	9	2	1	\N	Y	\N	\N
898	912	2	7	9	51	1	\N	Y	\N	\N
899	913	1	7	9	2	1	\N	Y	\N	\N
899	914	3	7	9	51	1	\N	Y	\N	\N
900	915	1	7	9	2	1	\N	Y	\N	\N
900	916	2	7	9	51	1	\N	Y	\N	\N
901	917	1	7	9	2	1	\N	Y	\N	\N
901	918	3	7	9	51	1	\N	Y	\N	\N
902	919	1	7	9	2	1	\N	Y	\N	\N
902	920	3	7	9	51	1	\N	Y	\N	\N
903	921	1	7	9	2	1	\N	Y	\N	\N
903	922	3	7	9	51	1	\N	Y	\N	\N
904	923	1	7	9	2	3	\N	Y	\N	\N
904	924	2	7	9	51	1	\N	Y	\N	\N
905	925	1	7	9	2	1	\N	Y	\N	\N
905	926	3	7	9	51	1	\N	Y	\N	\N
906	927	1	7	9	2	1	\N	Y	\N	\N
906	928	2	7	9	51	1	\N	Y	\N	\N
896	929	4	7	6	144	0	\N	Y	\N	\N
896	930	5	7	6	145	0	\N	Y	\N	\N
896	931	6	7	6	146	0	\N	Y	\N	\N
896	932	7	7	6	147	0	\N	Y	\N	\N
896	933	8	7	6	148	0	\N	Y	\N	\N
896	934	9	7	6	149	0	\N	Y	\N	\N
839	935	1	9	9	4	1	\N	Y	\N	\N
19	936	1	5	9	10	1	\N	Y	\N	\N
19	937	4	5	6	242	0	\N	Y	\N	\N
19	938	5	5	6	243	0	\N	Y	\N	\N
938	939	2	6	9	34	2	\N	Y	\N	\N
937	940	1	6	9	3	2	\N	Y	\N	\N
938	941	1	6	9	3	1	\N	Y	\N	\N
897	942	7	7	6	182	0	\N	Y	\N	\N
897	943	8	7	6	183	0	\N	Y	\N	\N
897	944	9	7	6	184	0	\N	Y	\N	\N
897	945	10	7	6	185	0	\N	Y	\N	\N
897	946	11	7	6	186	0	\N	Y	\N	\N
897	947	12	7	6	187	0	\N	Y	\N	\N
898	948	3	7	6	188	0	\N	Y	\N	\N
898	949	4	7	6	189	0	\N	Y	\N	\N
898	950	5	7	6	190	0	\N	Y	\N	\N
898	951	6	7	6	191	0	\N	Y	\N	\N
898	952	7	7	6	192	0	\N	Y	\N	\N
898	953	8	7	6	193	0	\N	Y	\N	\N
899	954	6	7	6	194	0	\N	Y	\N	\N
899	955	7	7	6	195	0	\N	Y	\N	\N
899	956	8	7	6	196	0	\N	Y	\N	\N
899	957	9	7	6	197	0	\N	Y	\N	\N
899	958	10	7	6	198	0	\N	Y	\N	\N
899	959	11	7	6	199	0	\N	Y	\N	\N
900	960	5	7	6	200	0	\N	Y	\N	\N
900	961	6	7	6	201	0	\N	Y	\N	\N
900	962	7	7	6	202	0	\N	Y	\N	\N
900	963	8	7	6	203	0	\N	Y	\N	\N
900	964	9	7	6	204	0	\N	Y	\N	\N
900	965	10	7	6	205	0	\N	Y	\N	\N
901	966	4	7	6	206	0	\N	Y	\N	\N
901	967	5	7	6	207	0	\N	Y	\N	\N
901	968	6	7	6	208	0	\N	Y	\N	\N
901	969	7	7	6	209	0	\N	Y	\N	\N
901	970	8	7	6	210	0	\N	Y	\N	\N
901	971	9	7	6	211	0	\N	Y	\N	\N
902	972	5	7	6	212	0	\N	Y	\N	\N
902	973	6	7	6	213	0	\N	Y	\N	\N
902	974	7	7	6	214	0	\N	Y	\N	\N
902	975	8	7	6	215	0	\N	Y	\N	\N
902	976	9	7	6	216	0	\N	Y	\N	\N
902	977	10	7	6	217	0	\N	Y	\N	\N
903	978	4	7	6	218	0	\N	Y	\N	\N
903	979	5	7	6	219	0	\N	Y	\N	\N
903	980	6	7	6	220	0	\N	Y	\N	\N
903	981	7	7	6	221	0	\N	Y	\N	\N
903	982	8	7	6	222	0	\N	Y	\N	\N
903	983	9	7	6	223	0	\N	Y	\N	\N
904	984	5	7	6	224	0	\N	Y	\N	\N
904	985	6	7	6	225	0	\N	Y	\N	\N
904	986	7	7	6	226	0	\N	Y	\N	\N
904	987	8	7	6	227	0	\N	Y	\N	\N
904	988	9	7	6	228	0	\N	Y	\N	\N
904	989	10	7	6	229	0	\N	Y	\N	\N
905	990	5	7	6	230	0	\N	Y	\N	\N
905	991	6	7	6	231	0	\N	Y	\N	\N
905	992	7	7	6	232	0	\N	Y	\N	\N
905	993	8	7	6	233	0	\N	Y	\N	\N
905	994	9	7	6	234	0	\N	Y	\N	\N
905	995	10	7	6	235	0	\N	Y	\N	\N
906	996	6	7	6	236	0	\N	Y	\N	\N
906	997	7	7	6	237	0	\N	Y	\N	\N
906	998	8	7	6	238	0	\N	Y	\N	\N
906	999	9	7	6	239	0	\N	Y	\N	\N
906	1000	10	7	6	240	0	\N	Y	\N	\N
906	1001	11	7	6	241	0	\N	Y	\N	\N
18	1002	1	4	9	53	1	\N	Y	\N	\N
934	1003	1	8	13	11	1	\N	Y	\N	\N
947	1004	1	8	12	4	0	\N	Y	\N	\N
947	1005	2	8	12	5	0	\N	Y	\N	\N
947	1006	3	8	13	6	0	\N	Y	\N	\N
947	1007	4	8	13	8	0	\N	Y	\N	\N
947	1008	5	8	13	9	0	\N	Y	\N	\N
947	1009	6	8	13	10	0	\N	Y	\N	\N
947	1010	7	8	14	8	0	\N	Y	\N	\N
947	1011	8	8	14	9	0	\N	Y	\N	\N
947	1012	9	8	14	10	0	\N	Y	\N	\N
947	1013	10	8	14	11	0	\N	Y	\N	\N
947	1014	11	8	14	12	0	\N	Y	\N	\N
947	1015	12	8	14	13	0	\N	Y	\N	\N
947	1016	13	8	14	14	0	\N	Y	\N	\N
947	1017	14	8	14	15	0	\N	Y	\N	\N
953	1018	1	8	12	1	0	\N	Y	\N	\N
953	1019	2	8	14	1	0	\N	Y	\N	\N
953	1020	3	8	14	2	0	\N	Y	\N	\N
959	1021	1	8	12	6	0	\N	Y	\N	\N
959	1022	2	8	12	7	0	\N	Y	\N	\N
959	1023	3	8	14	16	0	\N	Y	\N	\N
959	1024	4	8	14	17	0	\N	Y	\N	\N
959	1025	5	8	14	18	0	\N	Y	\N	\N
959	1026	6	8	14	20	0	\N	Y	\N	\N
965	1027	1	8	13	17	0	\N	Y	\N	\N
965	1028	2	8	13	18	0	\N	Y	\N	\N
965	1029	3	8	13	19	0	\N	Y	\N	\N
965	1030	4	8	13	20	0	\N	Y	\N	\N
965	1031	5	8	14	37	0	\N	Y	\N	\N
965	1032	6	8	14	38	0	\N	Y	\N	\N
965	1033	7	8	14	39	0	\N	Y	\N	\N
965	1034	8	8	14	36	0	\N	Y	\N	\N
965	1035	9	8	14	35	0	\N	Y	\N	\N
971	1036	1	8	12	2	0	\N	Y	\N	\N
971	1037	2	8	12	3	0	\N	Y	\N	\N
971	1038	3	8	13	1	0	\N	Y	\N	\N
971	1039	4	8	13	2	0	\N	Y	\N	\N
971	1040	5	8	13	3	0	\N	Y	\N	\N
971	1041	6	8	13	4	0	\N	Y	\N	\N
971	1042	7	8	13	5	0	\N	Y	\N	\N
971	1043	8	8	14	3	0	\N	Y	\N	\N
971	1044	9	8	14	4	0	\N	Y	\N	\N
971	1045	10	8	14	5	0	\N	Y	\N	\N
971	1046	11	8	14	6	0	\N	Y	\N	\N
971	1047	12	8	14	7	0	\N	Y	\N	\N
971	1048	13	8	14	49	0	\N	Y	\N	\N
977	1049	1	8	13	12	0	\N	Y	\N	\N
977	1050	2	8	14	21	0	\N	Y	\N	\N
977	1051	3	8	14	22	0	\N	Y	\N	\N
977	1052	4	8	14	23	0	\N	Y	\N	\N
983	1053	1	8	14	40	0	\N	Y	\N	\N
983	1054	2	8	14	41	0	\N	Y	\N	\N
983	1055	3	8	14	42	0	\N	Y	\N	\N
983	1056	4	8	14	43	0	\N	Y	\N	\N
989	1057	1	8	13	14	0	\N	Y	\N	\N
989	1058	2	8	13	15	0	\N	Y	\N	\N
989	1059	3	8	13	16	0	\N	Y	\N	\N
989	1060	4	8	14	27	0	\N	Y	\N	\N
989	1061	5	8	14	28	0	\N	Y	\N	\N
989	1062	6	8	14	29	0	\N	Y	\N	\N
989	1063	7	8	14	30	0	\N	Y	\N	\N
989	1064	8	8	14	31	0	\N	Y	\N	\N
989	1065	9	8	14	32	0	\N	Y	\N	\N
989	1066	10	8	14	33	0	\N	Y	\N	\N
989	1067	11	8	14	34	0	\N	Y	\N	\N
995	1068	1	8	13	21	0	\N	Y	\N	\N
995	1069	2	8	14	44	0	\N	Y	\N	\N
995	1070	3	8	14	45	0	\N	Y	\N	\N
995	1071	4	8	14	46	0	\N	Y	\N	\N
995	1072	5	8	14	47	0	\N	Y	\N	\N
995	1073	6	8	14	48	0	\N	Y	\N	\N
1001	1074	1	8	13	13	0	\N	Y	\N	\N
1001	1075	2	8	14	24	0	\N	Y	\N	\N
1001	1076	3	8	14	25	0	\N	Y	\N	\N
1001	1077	4	8	14	26	0	\N	Y	\N	\N
1001	1078	5	8	11	37	0	\N	N	\N	\N
110	1079	1	8	9	22	20	\N	Y	\N	\N
633	1085	1	8	9	4	1	\N	Y	\N	\N
659	1086	1	8	9	4	1	\N	Y	\N	\N
31	1087	2	5	9	34	1	\N	Y	\N	\N
31	1088	5	5	9	34	1	\N	Y	\N	\N
1003	1089	1	9	9	17	1	\N	Y	\N	\N
929	1090	1	8	9	3	1	\N	Y	\N	\N
929	1091	2	8	7	223	0	\N	Y	\N	\N
930	1092	1	8	9	3	1	\N	Y	\N	\N
930	1093	2	8	7	224	0	\N	Y	\N	\N
930	1094	3	8	7	225	0	\N	Y	\N	\N
931	1095	1	8	9	3	1	\N	Y	\N	\N
931	1096	2	8	7	226	0	\N	Y	\N	\N
931	1097	3	8	7	227	0	\N	Y	\N	\N
931	1098	4	8	7	228	0	\N	Y	\N	\N
931	1099	5	8	7	229	0	\N	Y	\N	\N
931	1100	6	8	7	230	0	\N	Y	\N	\N
932	1101	1	8	9	3	1	\N	Y	\N	\N
932	1102	2	8	7	231	0	\N	Y	\N	\N
932	1103	3	8	7	232	0	\N	Y	\N	\N
933	1104	1	8	9	3	1	\N	Y	\N	\N
933	1105	2	8	7	233	0	\N	Y	\N	\N
933	1106	3	8	7	234	0	\N	Y	\N	\N
942	1107	1	8	9	3	1	\N	Y	\N	\N
942	1108	2	8	7	292	0	\N	Y	\N	\N
943	1109	1	8	9	3	1	\N	Y	\N	\N
943	1110	2	8	7	293	0	\N	Y	\N	\N
943	1111	3	8	7	294	0	\N	Y	\N	\N
944	1112	1	8	9	3	1	\N	Y	\N	\N
944	1113	2	8	7	295	0	\N	Y	\N	\N
944	1114	3	8	7	296	0	\N	Y	\N	\N
944	1115	4	8	7	297	0	\N	Y	\N	\N
944	1116	5	8	7	298	0	\N	Y	\N	\N
944	1117	6	8	7	299	0	\N	Y	\N	\N
945	1118	1	8	9	3	1	\N	Y	\N	\N
945	1119	2	8	7	300	0	\N	Y	\N	\N
945	1120	3	8	7	301	0	\N	Y	\N	\N
946	1121	1	8	9	3	1	\N	Y	\N	\N
946	1122	2	8	7	302	0	\N	Y	\N	\N
946	1123	3	8	7	303	0	\N	Y	\N	\N
948	1124	1	8	9	3	1	\N	Y	\N	\N
948	1125	2	8	7	304	0	\N	Y	\N	\N
949	1126	1	8	9	3	1	\N	Y	\N	\N
949	1127	2	8	7	305	0	\N	Y	\N	\N
949	1128	3	8	7	306	10	\N	Y	\N	\N
950	1129	1	8	9	3	1	\N	Y	\N	\N
950	1130	2	8	7	307	0	\N	Y	\N	\N
950	1131	3	8	7	308	0	\N	Y	\N	\N
950	1132	4	8	7	309	0	\N	Y	\N	\N
950	1133	5	8	7	310	0	\N	Y	\N	\N
950	1134	6	8	7	311	0	\N	Y	\N	\N
951	1135	1	8	9	3	1	\N	Y	\N	\N
951	1136	2	8	7	312	0	\N	Y	\N	\N
951	1137	3	8	7	313	0	\N	Y	\N	\N
952	1138	1	8	9	3	1	\N	Y	\N	\N
952	1139	2	8	7	314	0	\N	Y	\N	\N
952	1140	3	8	7	315	0	\N	Y	\N	\N
954	1141	1	8	9	3	1	\N	Y	\N	\N
954	1142	2	8	7	316	0	\N	Y	\N	\N
955	1143	1	8	9	3	1	\N	Y	\N	\N
955	1144	2	8	7	317	0	\N	Y	\N	\N
955	1145	3	8	7	318	0	\N	Y	\N	\N
956	1146	1	8	9	3	1	\N	Y	\N	\N
956	1147	3	8	7	319	0	\N	Y	\N	\N
956	1148	4	8	7	320	0	\N	Y	\N	\N
956	1149	5	8	7	321	0	\N	Y	\N	\N
956	1150	6	8	7	322	0	\N	Y	\N	\N
956	1151	7	8	7	323	0	\N	Y	\N	\N
957	1152	1	8	9	3	1	\N	Y	\N	\N
957	1153	2	8	7	324	0	\N	Y	\N	\N
957	1154	3	8	7	325	0	\N	Y	\N	\N
958	1155	1	8	9	3	1	\N	Y	\N	\N
958	1156	2	8	7	326	0	\N	Y	\N	\N
958	1157	3	8	7	327	0	\N	Y	\N	\N
960	1158	1	8	9	3	1	\N	Y	\N	\N
960	1159	2	8	7	328	0	\N	Y	\N	\N
961	1160	1	8	9	3	1	\N	Y	\N	\N
961	1161	2	8	7	329	0	\N	Y	\N	\N
961	1162	3	8	7	330	3	\N	Y	\N	\N
962	1163	1	8	9	3	1	\N	Y	\N	\N
962	1164	2	8	7	331	0	\N	Y	\N	\N
962	1165	3	8	7	332	0	\N	Y	\N	\N
962	1166	4	8	7	333	0	\N	Y	\N	\N
962	1167	5	8	7	334	0	\N	Y	\N	\N
962	1168	6	8	7	335	0	\N	Y	\N	\N
963	1169	1	8	9	3	1	\N	Y	\N	\N
963	1170	2	8	7	336	0	\N	Y	\N	\N
963	1171	3	8	7	337	0	\N	Y	\N	\N
964	1172	1	8	9	3	1	\N	Y	\N	\N
964	1173	2	8	7	338	0	\N	Y	\N	\N
964	1174	3	8	7	339	0	\N	Y	\N	\N
966	1175	1	8	9	3	1	\N	Y	\N	\N
966	1176	2	8	7	340	0	\N	Y	\N	\N
967	1177	1	8	9	3	1	\N	Y	\N	\N
967	1178	2	8	7	341	0	\N	Y	\N	\N
967	1179	3	8	7	342	0	\N	Y	\N	\N
968	1180	1	8	9	3	1	\N	Y	\N	\N
968	1181	3	8	7	343	0	\N	Y	\N	\N
968	1182	4	8	7	344	0	\N	Y	\N	\N
968	1183	5	8	7	345	0	\N	Y	\N	\N
968	1184	6	8	7	346	0	\N	Y	\N	\N
968	1185	7	8	7	347	0	\N	Y	\N	\N
969	1186	1	8	9	3	1	\N	Y	\N	\N
969	1187	2	8	7	348	0	\N	Y	\N	\N
969	1188	3	8	7	349	0	\N	Y	\N	\N
970	1189	1	8	9	3	1	\N	Y	\N	\N
970	1190	2	8	7	350	0	\N	Y	\N	\N
970	1191	3	8	7	351	0	\N	Y	\N	\N
972	1192	1	8	9	3	1	\N	Y	\N	\N
972	1193	2	8	7	352	0	\N	Y	\N	\N
973	1194	1	8	9	3	1	\N	Y	\N	\N
973	1195	2	8	7	353	0	\N	Y	\N	\N
973	1196	3	8	7	354	0	\N	Y	\N	\N
974	1197	1	8	9	3	1	\N	Y	\N	\N
974	1198	2	8	7	355	0	\N	Y	\N	\N
974	1199	3	8	7	356	0	\N	Y	\N	\N
974	1200	4	8	7	357	0	\N	Y	\N	\N
974	1201	5	8	7	358	0	\N	Y	\N	\N
974	1202	6	8	7	359	0	\N	Y	\N	\N
975	1203	1	8	9	3	1	\N	Y	\N	\N
975	1204	2	8	7	360	0	\N	Y	\N	\N
975	1205	3	8	7	361	0	\N	Y	\N	\N
976	1206	1	8	9	3	1	\N	Y	\N	\N
976	1207	2	8	7	362	0	\N	Y	\N	\N
976	1208	3	8	7	363	0	\N	Y	\N	\N
978	1209	1	8	9	3	1	\N	Y	\N	\N
978	1210	2	8	7	364	0	\N	Y	\N	\N
979	1211	1	8	9	3	1	\N	Y	\N	\N
979	1212	2	8	7	365	0	\N	Y	\N	\N
979	1213	3	8	7	366	0	\N	Y	\N	\N
980	1214	1	8	9	3	1	\N	Y	\N	\N
980	1215	2	8	7	367	0	\N	Y	\N	\N
980	1216	3	8	7	368	0	\N	Y	\N	\N
980	1217	4	8	7	369	0	\N	Y	\N	\N
980	1218	5	8	7	370	0	\N	Y	\N	\N
980	1219	6	8	7	371	0	\N	Y	\N	\N
981	1220	1	8	9	3	1	\N	Y	\N	\N
981	1221	2	8	7	372	0	\N	Y	\N	\N
981	1222	3	8	7	373	0	\N	Y	\N	\N
982	1223	1	8	9	3	1	\N	Y	\N	\N
982	1224	2	8	7	374	0	\N	Y	\N	\N
982	1225	3	8	7	375	0	\N	Y	\N	\N
984	1226	1	8	9	3	1	\N	Y	\N	\N
984	1227	2	8	7	376	0	\N	Y	\N	\N
985	1228	1	8	9	3	1	\N	Y	\N	\N
985	1229	2	8	7	377	0	\N	Y	\N	\N
985	1230	3	8	7	378	0	\N	Y	\N	\N
986	1231	1	8	9	3	1	\N	Y	\N	\N
986	1232	2	8	7	379	0	\N	Y	\N	\N
986	1233	3	8	7	380	0	\N	Y	\N	\N
986	1234	4	8	7	381	0	\N	Y	\N	\N
986	1235	5	8	7	382	0	\N	Y	\N	\N
986	1236	6	8	7	383	0	\N	Y	\N	\N
987	1237	1	8	9	3	1	\N	Y	\N	\N
987	1238	2	8	7	384	0	\N	Y	\N	\N
987	1239	3	8	7	385	0	\N	Y	\N	\N
988	1240	1	8	9	3	1	\N	Y	\N	\N
988	1241	2	8	7	386	0	\N	Y	\N	\N
988	1242	3	8	7	387	0	\N	Y	\N	\N
990	1243	1	8	9	3	1	\N	Y	\N	\N
990	1244	2	8	7	388	0	\N	Y	\N	\N
991	1245	1	8	9	3	1	\N	Y	\N	\N
991	1246	2	8	7	389	0	\N	Y	\N	\N
991	1247	3	8	7	390	0	\N	Y	\N	\N
992	1248	1	8	9	3	1	\N	Y	\N	\N
992	1249	2	8	7	391	0	\N	Y	\N	\N
992	1250	3	8	7	392	0	\N	Y	\N	\N
992	1251	4	8	7	393	0	\N	Y	\N	\N
992	1252	5	8	7	394	0	\N	Y	\N	\N
992	1253	6	8	7	395	0	\N	Y	\N	\N
993	1254	1	8	9	3	1	\N	Y	\N	\N
993	1255	2	8	7	396	0	\N	Y	\N	\N
993	1256	3	8	7	397	0	\N	Y	\N	\N
994	1257	1	8	9	3	1	\N	Y	\N	\N
994	1258	2	8	7	398	0	\N	Y	\N	\N
994	1259	3	8	7	399	0	\N	Y	\N	\N
996	1260	1	8	9	3	1	\N	Y	\N	\N
996	1261	1	8	7	400	0	\N	Y	\N	\N
997	1262	1	8	9	3	1	\N	Y	\N	\N
997	1263	2	8	7	401	0	\N	Y	\N	\N
997	1264	3	8	7	402	0	\N	Y	\N	\N
998	1265	1	8	9	3	1	\N	Y	\N	\N
998	1266	2	8	7	403	0	\N	Y	\N	\N
998	1267	3	8	7	404	0	\N	Y	\N	\N
998	1268	4	8	7	405	0	\N	Y	\N	\N
998	1269	5	8	7	406	0	\N	Y	\N	\N
998	1270	6	8	7	407	0	\N	Y	\N	\N
999	1271	1	8	9	3	1	\N	Y	\N	\N
999	1272	2	8	7	408	0	\N	Y	\N	\N
999	1273	3	8	7	409	0	\N	Y	\N	\N
1000	1274	1	8	9	3	1	\N	Y	\N	\N
1000	1275	2	8	7	410	0	\N	Y	\N	\N
1000	1276	3	8	7	411	0	\N	Y	\N	\N
617	1277	1	7	9	3	1	\N	Y	\N	\N
615	1278	1	7	9	3	1	\N	Y	\N	\N
1100	1279	1	9	9	19	3	\N	Y	\N	\N
\N	1	1	0	0	1	0	1	Y	\N	Tree1
1	6	1	1	1	1	0	1	Y	\N	\N
6	10	1	2	2	1	0	1	Y	\N	\N
10	11	1	3	2	2	0	\N	Y	\N	\N
10	12	2	3	2	3	0	\N	Y	\N	\N
10	13	3	3	3	2	0	\N	Y	\N	\N
10	14	4	3	3	3	0	\N	Y	\N	\N
10	15	5	3	3	4	0	\N	Y	\N	\N
10	16	6	3	3	1	0	\N	Y	\N	\N
10	17	8	3	5	1	0	\N	Y	\N	\N
10	18	10	3	2	4	1	\N	Y	\N	\N
18	19	3	4	2	5	0	\N	Y	\N	\N
18	20	9	4	4	6	0	\N	Y	\N	\N
18	21	6	4	4	4	0	\N	Y	\N	\N
18	22	8	4	4	5	0	\N	Y	\N	\N
20	23	8	5	5	30	0	\N	Y	\N	\N
20	24	10	5	5	32	0	\N	Y	\N	\N
20	25	9	5	5	31	0	\N	Y	\N	\N
20	26	7	5	5	29	0	\N	Y	\N	\N
20	27	6	5	5	28	0	\N	Y	\N	\N
20	28	11	5	5	33	0	\N	Y	\N	\N
20	29	1	5	9	1	1	\N	Y	\N	\N
23	30	1	6	9	2	1	\N	Y	\N	\N
18	31	4	4	4	1	0	\N	Y	\N	\N
18	32	5	4	4	2	0	\N	Y	\N	\N
18	33	7	4	4	3	0	\N	Y	\N	\N
18	34	10	4	4	7	0	\N	Y	\N	\N
26	37	1	6	9	2	1	\N	Y	\N	\N
24	38	1	6	9	2	1	\N	Y	\N	\N
28	39	1	6	9	2	1	\N	Y	\N	\N
25	40	1	6	9	2	1	\N	Y	\N	\N
27	41	1	6	9	2	1	\N	Y	\N	\N
31	44	1	5	9	1	1	\N	Y	\N	\N
31	46	6	5	5	2	0	\N	Y	\N	\N
31	47	7	5	5	3	0	\N	Y	\N	\N
31	48	8	5	5	4	0	\N	Y	\N	\N
31	49	9	5	5	5	0	\N	Y	\N	\N
31	50	10	5	5	6	0	\N	Y	\N	\N
31	51	11	5	5	7	0	\N	Y	\N	\N
21	52	1	5	9	1	1	\N	Y	\N	\N
21	53	8	5	5	18	0	\N	Y	\N	\N
21	54	9	5	5	19	0	\N	Y	\N	\N
21	55	10	5	5	20	0	\N	Y	\N	\N
21	56	11	5	5	21	0	\N	Y	\N	\N
21	57	12	5	5	22	0	\N	Y	\N	\N
22	58	4	5	9	7	1	\N	Y	\N	\N
22	59	7	5	5	23	0	\N	Y	\N	\N
22	60	8	5	5	24	0	\N	Y	\N	\N
22	61	9	5	5	25	0	\N	Y	\N	\N
22	62	10	5	5	26	0	\N	Y	\N	\N
22	63	11	5	5	27	0	\N	Y	\N	\N
18	64	11	4	4	8	0	\N	Y	\N	\N
18	65	12	4	4	9	0	\N	Y	\N	\N
32	66	6	5	5	8	0	\N	Y	\N	\N
32	67	7	5	5	9	0	\N	Y	\N	\N
32	68	8	5	5	10	0	\N	Y	\N	\N
32	69	4	5	9	7	1	\N	Y	\N	\N
33	70	8	5	5	11	0	\N	Y	\N	\N
33	71	9	5	5	12	0	\N	Y	\N	\N
33	72	10	5	5	13	0	\N	Y	\N	\N
33	73	11	5	5	14	0	\N	Y	\N	\N
33	74	12	5	5	15	0	\N	Y	\N	\N
33	75	13	5	5	16	0	\N	Y	\N	\N
33	76	14	5	5	17	0	\N	Y	\N	\N
34	78	3	5	9	7	1	\N	Y	\N	\N
34	79	6	5	5	34	0	\N	Y	\N	\N
34	80	7	5	5	35	0	\N	Y	\N	\N
34	81	8	5	5	36	0	\N	Y	\N	\N
34	82	9	5	5	37	0	\N	Y	\N	\N
34	83	10	5	5	38	0	\N	Y	\N	\N
34	84	11	5	5	39	0	\N	Y	\N	\N
34	85	12	5	5	40	0	\N	Y	\N	\N
47	86	3	6	6	5	0	\N	Y	\N	\N
47	87	4	6	6	6	0	\N	Y	\N	\N
47	88	5	6	6	7	0	\N	Y	\N	\N
86	89	1	7	9	3	1	\N	Y	\N	\N
64	90	4	5	9	7	1	\N	Y	\N	\N
64	91	7	5	5	41	0	\N	Y	\N	\N
64	92	8	5	5	42	0	\N	Y	\N	\N
64	93	9	5	5	43	0	\N	Y	\N	\N
64	94	10	5	5	44	0	\N	Y	\N	\N
65	95	4	5	9	7	1	\N	Y	\N	\N
65	96	8	5	5	45	0	\N	Y	\N	\N
65	97	9	5	5	46	0	\N	Y	\N	\N
65	98	10	5	5	47	0	\N	Y	\N	\N
65	99	11	5	5	48	0	\N	Y	\N	\N
65	100	12	5	5	49	0	\N	Y	\N	\N
65	101	13	5	5	50	0	\N	Y	\N	\N
47	103	1	6	9	2	1	\N	Y	\N	\N
87	104	1	7	9	3	1	\N	Y	\N	\N
88	105	1	7	9	3	1	\N	Y	\N	\N
87	108	3	7	7	5	0	\N	Y	\N	\N
86	110	2	7	7	2	2	\N	Y	\N	\N
27	111	2	6	6	26	0	\N	Y	\N	\N
27	112	4	6	6	27	0	\N	Y	\N	\N
27	113	3	6	6	28	0	\N	Y	\N	\N
111	114	1	7	9	3	1	\N	Y	\N	\N
112	115	1	7	9	3	1	\N	Y	\N	\N
113	116	1	7	9	3	1	\N	Y	\N	\N
26	117	2	6	6	29	0	\N	Y	\N	\N
26	118	3	6	6	30	0	\N	Y	\N	\N
117	119	1	7	9	3	1	\N	Y	\N	\N
118	120	1	7	9	3	1	\N	Y	\N	\N
23	121	3	6	6	4	0	\N	Y	\N	\N
23	122	4	6	6	31	0	\N	Y	\N	\N
121	123	1	7	9	3	1	\N	Y	\N	\N
122	124	1	7	9	3	1	\N	Y	\N	\N
31	125	4	5	9	7	1	\N	Y	\N	\N
87	128	4	7	7	9	0	\N	Y	\N	\N
87	129	5	7	7	10	0	\N	Y	\N	\N
87	130	6	7	7	11	0	\N	Y	\N	\N
87	131	7	7	7	12	0	\N	Y	\N	\N
88	132	3	7	7	3	0	\N	Y	\N	\N
88	133	4	7	7	4	0	\N	Y	\N	\N
86	134	3	7	7	13	2	\N	Y	\N	\N
86	135	4	7	7	14	2	\N	Y	\N	\N
46	136	1	6	9	2	1	\N	Y	\N	\N
46	137	3	6	6	8	0	\N	Y	\N	\N
46	138	4	6	6	9	0	\N	Y	\N	\N
46	139	5	6	6	10	0	\N	Y	\N	\N
137	140	2	7	7	16	0	\N	Y	\N	\N
137	141	3	7	7	17	0	\N	Y	\N	\N
137	142	4	7	7	18	0	\N	Y	\N	\N
137	143	5	7	7	19	0	\N	Y	\N	\N
138	144	2	7	7	20	0	\N	Y	\N	\N
138	145	3	7	7	21	0	\N	Y	\N	\N
138	146	4	7	7	22	0	\N	Y	\N	\N
139	147	2	7	7	57	0	\N	Y	\N	\N
139	148	3	7	7	57	0	\N	Y	\N	\N
48	149	1	6	9	2	1	\N	Y	\N	\N
48	150	3	6	6	11	0	\N	Y	\N	\N
48	151	4	6	6	12	0	\N	Y	\N	\N
48	152	5	6	6	13	0	\N	Y	\N	\N
150	153	2	7	7	24	0	\N	Y	\N	\N
150	154	3	7	7	25	0	\N	Y	\N	\N
151	156	2	7	7	26	0	\N	Y	\N	\N
151	157	3	7	7	27	0	\N	Y	\N	\N
151	158	4	7	7	28	0	\N	Y	\N	\N
92	162	1	6	9	2	1	\N	Y	\N	\N
92	163	2	6	6	34	0	\N	Y	\N	\N
92	164	3	6	6	35	0	\N	Y	\N	\N
92	165	4	6	6	36	0	\N	Y	\N	\N
92	166	5	6	6	37	0	\N	Y	\N	\N
93	167	1	6	9	2	1	\N	Y	\N	\N
93	168	2	6	6	38	0	\N	Y	\N	\N
93	169	3	6	6	39	0	\N	Y	\N	\N
152	170	2	7	7	29	0	\N	Y	\N	\N
152	171	3	7	7	30	0	\N	Y	\N	\N
152	172	4	7	7	31	0	\N	Y	\N	\N
152	173	5	7	7	32	0	\N	Y	\N	\N
94	174	1	6	9	2	1	\N	Y	\N	\N
94	175	5	6	6	40	0	\N	Y	\N	\N
94	176	6	6	6	41	0	\N	Y	\N	\N
49	177	1	6	9	2	1	\N	Y	\N	\N
49	178	3	6	6	14	5	\N	Y	\N	\N
49	179	4	6	6	15	5	\N	Y	\N	\N
49	180	5	6	6	16	5	\N	Y	\N	\N
137	181	1	7	9	3	1	\N	Y	\N	\N
138	182	1	7	9	3	1	\N	Y	\N	\N
139	183	1	7	9	3	1	\N	Y	\N	\N
150	184	1	7	9	3	1	\N	Y	\N	\N
151	185	1	7	9	3	1	\N	Y	\N	\N
152	186	1	7	9	3	1	\N	Y	\N	\N
178	187	1	7	9	3	1	\N	Y	\N	\N
178	188	2	7	7	33	0	\N	Y	\N	\N
178	189	3	7	7	34	0	\N	Y	\N	\N
178	190	4	7	7	35	0	\N	Y	\N	\N
179	191	1	7	9	3	1	\N	Y	\N	\N
179	192	3	7	7	36	0	\N	Y	\N	\N
179	193	4	7	7	37	0	\N	Y	\N	\N
180	197	1	7	9	3	1	\N	Y	\N	\N
180	198	2	7	7	38	0	\N	Y	\N	\N
180	199	3	7	7	39	0	\N	Y	\N	\N
50	200	1	6	9	2	1	\N	Y	\N	\N
50	201	3	6	6	17	0	\N	Y	\N	\N
50	202	4	6	6	18	0	\N	Y	\N	\N
50	203	5	6	6	19	0	\N	Y	\N	\N
50	204	6	6	6	20	0	\N	Y	\N	\N
201	205	1	7	9	3	1	\N	Y	\N	\N
201	206	2	7	7	40	0	\N	Y	\N	\N
201	207	3	7	7	41	0	\N	Y	\N	\N
202	208	1	7	9	3	1	\N	Y	\N	\N
202	209	2	7	7	42	0	\N	Y	\N	\N
202	210	3	7	7	43	0	\N	Y	\N	\N
204	211	1	7	9	3	1	\N	Y	\N	\N
204	212	2	7	7	44	0	\N	Y	\N	\N
204	213	3	7	7	45	0	\N	Y	\N	\N
204	214	4	7	7	46	0	\N	Y	\N	\N
204	215	5	7	7	47	0	\N	Y	\N	\N
204	216	6	7	7	48	0	\N	Y	\N	\N
51	217	1	6	9	2	1	\N	Y	\N	\N
51	218	2	6	6	21	0	\N	Y	\N	\N
51	219	3	6	6	22	0	\N	Y	\N	\N
51	220	4	6	6	23	0	\N	Y	\N	\N
51	221	5	6	6	24	0	\N	Y	\N	\N
51	222	6	6	6	25	0	\N	Y	\N	\N
218	223	1	7	9	3	1	\N	Y	\N	\N
218	224	2	7	7	49	0	\N	Y	\N	\N
218	225	3	7	7	50	0	\N	Y	\N	\N
218	226	4	7	7	51	0	\N	Y	\N	\N
219	227	1	7	9	3	1	\N	Y	\N	\N
219	228	2	7	7	52	0	\N	Y	\N	\N
219	229	3	7	7	53	0	\N	Y	\N	\N
221	230	1	7	9	3	1	\N	Y	\N	\N
221	231	2	7	7	54	0	\N	Y	\N	\N
221	232	3	7	7	55	0	\N	Y	\N	\N
222	233	1	7	9	3	1	\N	Y	\N	\N
222	234	2	7	7	56	0	\N	Y	\N	\N
66	239	1	6	9	2	1	\N	Y	\N	\N
66	240	\N	6	\N	\N	\N	\N	Y	\N	\N
66	241	2	6	6	44	0	\N	Y	\N	\N
66	242	3	6	6	45	0	\N	Y	\N	\N
66	243	4	6	6	46	0	\N	Y	\N	\N
68	244	1	6	9	2	1	\N	Y	\N	\N
68	245	2	6	6	47	0	\N	Y	\N	\N
68	246	3	6	6	48	0	\N	Y	\N	\N
68	247	4	6	6	49	0	\N	Y	\N	\N
67	248	1	6	9	2	1	\N	Y	\N	\N
67	249	3	6	6	42	0	\N	Y	\N	\N
67	250	4	6	6	43	0	\N	Y	\N	\N
21	252	4	5	9	7	1	\N	Y	\N	\N
53	254	1	6	9	2	1	\N	Y	\N	\N
241	256	1	7	9	3	1	\N	Y	\N	\N
241	257	2	7	7	58	0	\N	Y	\N	\N
241	258	3	7	7	59	0	\N	Y	\N	\N
242	259	1	7	9	3	1	\N	Y	\N	\N
242	260	2	7	7	60	0	\N	Y	\N	\N
242	261	3	7	7	61	0	\N	Y	\N	\N
243	262	1	7	9	3	1	\N	Y	\N	\N
243	263	2	7	7	62	0	\N	Y	\N	\N
243	264	3	7	7	63	0	\N	Y	\N	\N
245	265	1	7	9	3	1	\N	Y	\N	\N
245	266	2	7	7	64	0	\N	Y	\N	\N
245	267	3	7	7	65	0	\N	Y	\N	\N
245	268	4	7	7	66	0	\N	Y	\N	\N
246	269	1	7	9	3	1	\N	Y	\N	\N
246	270	2	7	7	67	0	\N	Y	\N	\N
246	271	3	7	7	68	0	\N	Y	\N	\N
249	273	1	7	9	3	1	\N	Y	\N	\N
249	274	2	7	7	69	0	\N	Y	\N	\N
249	275	3	7	7	70	0	\N	Y	\N	\N
32	278	1	5	9	1	1	\N	Y	\N	\N
250	279	1	7	9	3	1	\N	Y	\N	\N
250	280	2	7	7	71	1	\N	Y	\N	\N
250	281	3	7	7	72	1	\N	Y	\N	\N
21	282	3	5	9	34	0	\N	Y	\N	\N
21	283	6	5	9	34	0	\N	Y	\N	\N
53	284	2	6	6	50	0	\N	Y	\N	\N
1108	1280	1	9	9	4	1	\N	Y	\N	\N
1111	1281	1	9	9	4	1	\N	Y	\N	\N
1111	1282	2	9	9	20	10	\N	Y	\N	\N
1111	1283	3	9	9	20	10	\N	Y	\N	\N
1115	1284	1	9	9	4	1	\N	Y	\N	\N
1117	1285	1	9	9	4	1	\N	Y	\N	\N
1120	1286	1	9	9	4	1	\N	Y	\N	\N
1122	1287	1	9	9	4	1	\N	Y	\N	\N
1004	1288	1	9	9	16	1	\N	Y	\N	\N
1004	1289	2	9	9	19	4	\N	Y	\N	\N
1005	1290	1	9	9	16	1	\N	Y	\N	\N
1006	1291	1	9	9	17	1	\N	Y	\N	\N
1007	1292	1	9	9	16	1	\N	Y	\N	\N
1008	1293	1	9	9	17	1	\N	Y	\N	\N
1008	1294	2	9	9	19	1	\N	Y	\N	\N
1009	1295	1	9	9	17	1	\N	Y	\N	\N
1010	1296	1	9	9	18	1	\N	Y	\N	\N
1011	1297	1	9	9	18	1	\N	Y	\N	\N
1012	1298	1	9	9	18	1	\N	Y	\N	\N
1013	1299	1	9	9	18	1	\N	Y	\N	\N
1014	1301	2	9	9	20	1	\N	Y	\N	\N
1015	1302	1	9	9	18	1	\N	Y	\N	\N
1016	1303	1	9	9	18	1	\N	Y	\N	\N
1016	1304	3	9	9	19	2	\N	Y	\N	\N
1017	1305	1	9	9	18	1	\N	Y	\N	\N
1117	1306	2	9	9	19	10	\N	Y	\N	\N
1117	1307	3	9	9	19	10	\N	Y	\N	\N
1117	1308	4	9	9	19	10	\N	Y	\N	\N
1117	1309	5	9	9	19	10	\N	Y	\N	\N
1117	1310	6	9	9	19	10	\N	Y	\N	\N
1018	1311	1	9	9	16	1	\N	Y	\N	\N
1019	1312	1	9	9	18	1	\N	Y	\N	\N
1020	1313	1	9	9	18	1	\N	Y	\N	\N
1036	1314	1	9	9	16	1	\N	Y	\N	\N
1018	1315	2	9	9	19	3	\N	Y	\N	\N
1151	1316	1	9	9	4	1	\N	Y	\N	\N
1151	1317	2	9	9	19	2	\N	Y	\N	\N
1151	1318	3	9	9	19	1	\N	Y	\N	\N
1021	1319	1	9	9	16	1	\N	Y	\N	\N
1021	1320	2	9	9	19	2	\N	Y	\N	\N
1021	1321	3	9	9	20	1	\N	Y	\N	\N
1022	1322	1	9	9	16	1	\N	Y	\N	\N
1023	1323	1	9	9	18	1	\N	Y	\N	\N
1024	1324	1	9	9	18	1	\N	Y	\N	\N
1025	1325	1	9	9	20	1	\N	Y	\N	\N
1026	1326	1	9	9	20	1	\N	Y	\N	\N
1168	1327	2	9	9	19	2	\N	Y	\N	\N
1168	1328	3	9	9	19	2	\N	Y	\N	\N
1168	1329	4	9	9	19	2	\N	Y	\N	\N
1164	1331	1	9	9	4	1	\N	Y	\N	\N
1166	1332	1	9	9	4	1	\N	Y	\N	\N
1027	1333	1	9	9	17	1	\N	Y	\N	\N
1028	1334	1	9	9	17	2	\N	Y	\N	\N
1028	1335	2	9	9	20	1	\N	Y	\N	\N
1029	1336	2	9	9	19	3	\N	Y	\N	\N
1031	1337	1	9	9	18	1	\N	Y	\N	\N
1032	1338	1	9	9	18	1	\N	Y	\N	\N
1034	1339	1	9	9	18	1	\N	Y	\N	\N
1035	1340	1	9	9	18	1	\N	Y	\N	\N
1035	1341	2	9	9	19	2	\N	Y	\N	\N
1162	1342	1	9	9	20	1	\N	Y	\N	\N
1170	1343	1	9	9	4	1	\N	Y	\N	\N
1179	1344	1	9	9	20	1	\N	Y	\N	\N
1179	1345	2	9	9	20	1	\N	Y	\N	\N
1179	1346	3	9	9	20	1	\N	Y	\N	\N
1179	1347	4	9	9	20	1	\N	Y	\N	\N
1185	1348	1	9	9	19	1	\N	Y	\N	\N
1185	1349	2	9	9	19	1	\N	Y	\N	\N
1036	1350	3	9	9	20	50	\N	Y	\N	\N
1037	1351	1	9	9	16	1	\N	Y	\N	\N
1037	1352	3	9	9	19	2	\N	Y	\N	\N
1038	1353	1	9	9	17	1	\N	Y	\N	\N
1039	1354	1	9	9	17	1	\N	Y	\N	\N
1040	1355	1	9	9	17	1	\N	Y	\N	\N
1040	1356	2	9	9	19	1	\N	Y	\N	\N
1041	1357	1	9	9	17	1	\N	Y	\N	\N
1042	1358	1	9	9	17	1	\N	Y	\N	\N
1043	1359	1	9	9	18	1	\N	Y	\N	\N
1044	1360	1	9	9	19	1	\N	Y	\N	\N
1048	1361	1	9	9	18	1	\N	Y	\N	\N
1046	1362	1	9	9	18	1	\N	Y	\N	\N
1193	1363	1	9	9	4	1	\N	Y	\N	\N
1196	1364	1	9	9	20	2	\N	Y	\N	\N
1202	1365	1	9	9	19	20	\N	Y	\N	\N
1202	1366	2	9	9	19	20	\N	Y	\N	\N
1049	1367	1	9	9	17	1	\N	Y	\N	\N
1049	1368	2	9	9	19	1	\N	Y	\N	\N
1050	1369	1	9	9	18	1	\N	Y	\N	\N
1050	1370	2	9	9	19	1	\N	Y	\N	\N
1051	1371	1	9	9	18	1	\N	Y	\N	\N
1052	1372	1	9	9	20	1	\N	Y	\N	\N
1213	1373	1	9	9	20	50	\N	Y	\N	\N
1213	1374	2	9	9	20	50	\N	Y	\N	\N
1213	1375	3	9	9	20	50	\N	Y	\N	\N
1219	1376	1	9	9	19	1	\N	Y	\N	\N
1054	1377	1	9	9	18	1	\N	Y	\N	\N
1053	1378	1	9	9	19	1	\N	Y	\N	\N
1227	1379	1	9	9	4	1	\N	Y	\N	\N
1229	1380	1	9	9	4	1	\N	Y	\N	\N
1230	1381	1	9	9	20	2	\N	Y	\N	\N
1230	1382	2	9	9	20	2	\N	Y	\N	\N
1236	1383	1	9	9	19	1	\N	Y	\N	\N
1236	1384	2	9	9	19	1	\N	Y	\N	\N
1236	1385	3	9	9	19	2	\N	Y	\N	\N
1236	1386	4	9	9	19	2	\N	Y	\N	\N
1057	1387	1	9	9	17	1	\N	Y	\N	\N
1058	1388	1	9	9	17	1	\N	Y	\N	\N
1058	1389	2	9	9	19	1	\N	Y	\N	\N
1059	1390	1	9	9	17	1	\N	Y	\N	\N
1062	1391	1	9	9	18	1	\N	Y	\N	\N
1063	1392	1	9	9	18	1	\N	Y	\N	\N
1064	1393	1	9	9	19	1	\N	Y	\N	\N
1064	1394	2	9	9	20	1	\N	Y	\N	\N
1065	1395	1	9	9	18	1	\N	Y	\N	\N
1066	1396	1	9	9	19	1	\N	Y	\N	\N
1066	1397	2	9	9	20	1	\N	Y	\N	\N
1067	1398	1	9	9	18	1	\N	Y	\N	\N
1234	1399	1	9	9	4	1	\N	Y	\N	\N
1253	1400	2	9	9	19	2	\N	Y	\N	\N
1068	1401	1	9	9	17	1	\N	Y	\N	\N
1068	1402	2	9	9	19	1	\N	Y	\N	\N
1069	1403	1	9	9	18	1	\N	Y	\N	\N
1071	1404	1	9	9	18	1	\N	Y	\N	\N
1071	1405	2	9	9	20	1	\N	Y	\N	\N
1072	1406	1	9	9	18	1	\N	Y	\N	\N
1073	1407	1	9	9	18	1	\N	Y	\N	\N
1264	1408	1	9	9	20	20	\N	Y	\N	\N
1270	1409	2	9	9	19	1	\N	Y	\N	\N
1270	1410	3	9	9	19	1	\N	Y	\N	\N
1074	1412	1	9	9	17	1	\N	Y	\N	\N
1075	1413	2	9	9	20	1	\N	Y	\N	\N
1076	1414	1	9	9	18	1	\N	Y	\N	\N
1076	1415	2	9	9	20	1	\N	Y	\N	\N
1266	1416	1	9	9	4	1	\N	Y	\N	\N
1270	1417	1	9	9	4	1	\N	Y	\N	\N
742	1418	5	5	9	30	3	\N	Y	\N	\N
12	1419	1	4	9	9	3	\N	Y	\N	\N
64	1420	1	5	9	1	1	\N	Y	\N	\N
64	1421	3	5	9	34	1	\N	Y	\N	\N
64	1422	5	5	9	34	1	\N	Y	\N	\N
782	1423	2	7	9	21	1	\N	Y	\N	\N
787	1424	2	7	9	21	1	\N	Y	\N	\N
623	1425	2	8	9	29	3	\N	Y	\N	\N
623	1426	1	8	9	4	1	\N	Y	\N	\N
623	1427	3	8	9	29	1	\N	Y	\N	\N
623	1428	4	8	9	29	1	\N	Y	\N	\N
615	1430	2	7	9	54	4	\N	Y	\N	\N
153	1431	3	8	9	29	2	\N	Y	\N	\N
625	1432	1	8	9	46	1	\N	Y	\N	\N
623	1433	5	8	9	29	1	\N	Y	\N	\N
1168	1434	1	9	9	4	1	\N	Y	\N	\N
1020	1435	2	9	9	20	1	\N	Y	\N	\N
474	1436	\N	7	\N	\N	\N	\N	N	\N	\N
1012	1437	2	9	9	19	2	\N	Y	\N	\N
569	1442	1	8	9	5	2	\N	Y	\N	\N
750	1444	3	5	9	23	1	\N	Y	\N	\N
438	1446	1	8	9	44	1	\N	Y	\N	\N
1261	1447	1	9	9	23	1	\N	Y	\N	\N
143	1449	1	8	9	22	1	\N	Y	\N	\N
1041	1450	2	9	9	23	1	\N	Y	\N	\N
\N	1451	1	\N	5	3	1	\N	Y	\N	\N
\N	1452	2	\N	5	80	2	\N	Y	\N	\N
\N	1453	3	\N	5	74	2	\N	Y	\N	\N
\N	1454	4	\N	5	70	10	\N	Y	\N	\N
\N	1455	5	\N	5	71	10	\N	Y	\N	\N
\N	1456	6	\N	5	72	10	\N	Y	\N	\N
\N	1457	7	\N	5	73	10	\N	Y	\N	\N
\N	1458	8	\N	5	75	10	\N	Y	\N	\N
\N	1459	9	\N	5	76	10	\N	Y	\N	\N
\N	1460	10	\N	5	77	10	\N	Y	\N	\N
\N	1461	11	\N	5	78	10	\N	Y	\N	\N
153	1462	4	8	9	29	4	\N	Y	\N	\N
130	1464	2	8	9	21	1	\N	Y	\N	\N
206	1465	1	8	9	22	1	\N	Y	\N	\N
179	1466	2	7	9	23	1	\N	Y	\N	\N
140	1467	1	8	9	59	1	\N	Y	\N	\N
142	1468	1	8	9	22	2	\N	Y	\N	\N
19	1469	3	5	9	30	1	\N	Y	\N	\N
761	1470	1	5	9	3	1	\N	Y	\N	\N
761	1471	2	5	9	39	10	\N	Y	\N	\N
60	1472	3	6	9	34	1	\N	Y	\N	\N
1003	1474	3	9	9	20	2	\N	Y	\N	\N
1094	1475	1	9	9	20	3	\N	Y	\N	\N
896	1476	3	7	9	49	2	\N	Y	\N	\N
897	1477	5	7	9	34	1	\N	Y	\N	\N
897	1478	6	7	9	49	1	\N	Y	\N	\N
1117	1479	7	9	9	19	10	\N	Y	\N	\N
144	1480	1	8	9	40	1	\N	Y	\N	\N
170	1481	2	8	9	49	1	\N	Y	\N	\N
1007	1482	2	9	9	19	3	\N	Y	\N	\N
1009	1483	3	9	9	19	1	\N	Y	\N	\N
1010	1484	2	9	9	19	1	\N	Y	\N	\N
1013	1485	2	9	9	19	1	\N	Y	\N	\N
1014	1486	1	9	9	19	1	\N	Y	\N	\N
1015	1487	2	9	9	19	1	\N	Y	\N	\N
1017	1488	2	9	9	19	1	\N	Y	\N	\N
1019	1489	2	9	9	19	1	\N	Y	\N	\N
1020	1490	3	9	9	19	1	\N	Y	\N	\N
1151	1491	4	9	9	19	6	\N	Y	\N	\N
899	1492	4	7	9	49	1	\N	Y	\N	\N
1022	1494	2	9	9	19	2	\N	Y	\N	\N
1023	1495	3	9	9	19	2	\N	Y	\N	\N
1025	1496	2	9	9	19	1	\N	Y	\N	\N
1030	1497	1	9	9	19	2	\N	Y	\N	\N
1034	1498	2	9	9	19	1	\N	Y	\N	\N
1168	1499	5	9	9	19	4	\N	Y	\N	\N
1035	1500	3	9	9	22	1	\N	Y	\N	\N
623	1501	6	8	9	29	7	\N	Y	\N	\N
1185	1506	3	9	9	19	8	\N	Y	\N	\N
968	1508	2	8	9	25	2	\N	Y	\N	\N
1036	1509	4	9	9	19	50	\N	Y	\N	\N
1038	1510	2	9	9	19	1	\N	Y	\N	\N
1039	1511	2	9	9	19	1	\N	Y	\N	\N
1041	1512	3	9	9	19	1	\N	Y	\N	\N
1042	1513	2	9	9	19	1	\N	Y	\N	\N
1044	1514	2	9	9	19	1	\N	Y	\N	\N
1046	1515	2	9	9	19	2	\N	Y	\N	\N
1047	1516	1	9	9	19	1	\N	Y	\N	\N
1048	1517	2	9	9	21	1	\N	Y	\N	\N
902	1518	4	7	9	21	1	\N	Y	\N	\N
1213	1519	4	9	9	20	50	\N	Y	\N	\N
1219	1520	2	9	9	19	1	\N	Y	\N	\N
1053	1521	2	9	9	19	1	\N	Y	\N	\N
1055	1522	2	9	9	19	1	\N	Y	\N	\N
1230	1523	3	9	9	20	1	\N	Y	\N	\N
1236	1524	5	9	9	19	2	\N	Y	\N	\N
904	1525	3	7	9	21	1	\N	Y	\N	\N
904	1526	4	7	9	49	1	\N	Y	\N	\N
1059	1527	2	9	9	19	10	\N	Y	\N	\N
1057	1528	2	9	9	19	3	\N	Y	\N	\N
1061	1529	1	9	9	20	1	\N	Y	\N	\N
1062	1530	2	9	9	19	1	\N	Y	\N	\N
1063	1531	2	9	9	19	1	\N	Y	\N	\N
1065	1532	3	9	9	19	0	\N	Y	\N	\N
1058	1533	3	9	9	19	1	\N	Y	\N	\N
21	1674	2	5	9	48	1	\N	Y	\N	\N
1016	1684	2	9	9	20	1	\N	Y	\N	\N
759	1685	2	5	9	22	1	\N	Y	\N	\N
482	1688	1	8	9	13	1	\N	Y	\N	\N
1096	1693	1	9	9	54	1	\N	Y	\N	\N
416	1702	1	8	9	12	10	\N	Y	\N	\N
158	1706	3	8	9	26	1	\N	Y	\N	\N
19	1723	2	5	9	64	1	\N	Y	\N	\N
46	1735	2	6	9	64	1	\N	Y	\N	\N
1559	1736	2	6	9	64	1	\N	Y	\N	\N
288	1737	1	8	9	13	1	\N	Y	\N	\N
758	1740	3	5	9	3	1	\N	Y	\N	\N
67	1741	2	6	9	64	1	\N	Y	\N	\N
971	1751	14	8	14	50	0	\N	Y	\N	\N
902	1765	2	7	9	64	1	\N	Y	\N	\N
934	1794	2	8	14	52	2	\N	Y	\N	\N
934	1795	3	8	14	53	2	\N	Y	\N	\N
934	1796	4	8	14	54	2	\N	Y	\N	\N
1794	1797	1	9	9	20	1	\N	Y	\N	\N
1794	1798	2	9	9	19	1	\N	Y	\N	\N
1795	1799	1	9	9	20	2	\N	Y	\N	\N
1795	1800	2	9	9	19	2	\N	Y	\N	\N
1796	1801	1	9	9	20	2	\N	Y	\N	\N
1796	1802	2	9	9	19	2	\N	Y	\N	\N
21	1803	5	5	9	65	1	\N	Y	\N	\N
22	1804	5	5	9	65	1	\N	Y	\N	\N
54	1805	2	6	9	64	1	\N	Y	\N	\N
1757	1806	3	5	5	87	1	\N	Y	\N	\N
1757	1807	4	5	9	64	1	\N	Y	\N	\N
663	1817	1	8	9	23	3	\N	Y	\N	\N
33	1834	7	5	9	21	2	\N	Y	\N	\N
32	1846	2	5	9	48	1	\N	Y	\N	\N
16	1881	6	4	6	9	100	\N	Y	\N	\N
1881	1882	1	5	9	40	100	\N	Y	\N	\N
901	1885	10	7	9	5	1	\N	Y	\N	\N
1111	1886	4	9	9	20	10	\N	Y	\N	\N
896	1915	11	7	9	64	1	\N	Y	\N	\N
983	1960	6	8	11	38	10	\N	Y	\N	\N
1960	1961	1	9	9	50	1	\N	Y	\N	\N
977	1962	5	8	11	39	5	\N	Y	\N	\N
1962	1963	1	9	9	50	1	\N	Y	\N	\N
1977	2026	2	6	9	42	10	\N	Y	\N	\N
457	2027	2	8	9	24	10	\N	Y	\N	\N
1181	2035	1	9	9	22	10	\N	Y	\N	\N
33	2036	18	5	5	97	10	\N	Y	\N	\N
33	2037	19	5	5	98	10	\N	Y	\N	\N
33	2038	20	5	5	99	10	\N	Y	\N	\N
49	2050	7	6	9	37	10	\N	Y	\N	\N
17	2051	6	4	9	62	20	\N	Y	\N	\N
27	2052	5	6	9	13	10	\N	Y	\N	\N
1976	2053	8	6	9	42	10	\N	Y	\N	\N
20	2054	13	5	9	13	120	\N	Y	\N	\N
1975	2055	7	6	9	23	20	\N	Y	\N	\N
1635	2057	\N	9	9	13	5	\N	Y	\N	\N
1027	1682	2	9	9	20	1	\N	Y	\N	\N
761	1694	3	5	9	62	10	\N	Y	\N	\N
1253	1704	1	9	9	20	1	\N	Y	\N	\N
57	1744	2	6	9	64	1	\N	Y	\N	\N
12	1745	2	4	9	66	1	\N	Y	\N	\N
60	1759	2	6	9	64	1	\N	Y	\N	\N
20	1760	2	5	9	48	1	\N	Y	\N	\N
742	1761	6	5	9	33	5	\N	Y	\N	\N
758	1762	5	5	9	40	5	\N	Y	\N	\N
1176	1763	1	9	9	23	1	\N	Y	\N	\N
897	1771	4	7	9	65	1	\N	Y	\N	\N
651	1772	2	7	9	52	1	\N	Y	\N	\N
71	1780	2	6	9	64	1	\N	Y	\N	\N
1641	1781	4	7	9	3	1	\N	Y	\N	\N
1641	1782	5	7	9	20	1	\N	Y	\N	\N
1641	1783	3	7	9	51	1	\N	Y	\N	\N
947	1785	15	8	14	51	1	\N	Y	\N	\N
1009	1786	2	9	9	64	1	\N	Y	\N	\N
1785	1787	1	9	9	18	1	\N	Y	\N	\N
1785	1788	2	9	9	64	1	\N	Y	\N	\N
1785	1789	3	9	9	20	1	\N	Y	\N	\N
1785	1790	4	9	9	19	1	\N	Y	\N	\N
94	1820	3	6	9	64	1	\N	Y	\N	\N
1023	1853	4	9	9	20	3	\N	Y	\N	\N
1757	1866	5	5	9	22	5	\N	Y	\N	\N
1026	1852	1	9	9	18	1	\N	Y	\N	\N
132	1872	3	8	9	22	2	\N	Y	\N	\N
33	1873	16	5	9	22	5	\N	Y	\N	\N
51	1874	7	6	9	64	1	\N	Y	\N	\N
787	1878	5	7	9	22	5	\N	Y	\N	\N
49	1884	6	6	9	21	5	\N	Y	\N	\N
153	1887	5	8	9	29	20	\N	Y	\N	\N
46	1891	6	6	9	22	5	\N	Y	\N	\N
96	1916	2	6	9	64	1	\N	Y	\N	\N
97	1917	4	6	9	64	1	\N	Y	\N	\N
98	1918	4	6	9	64	1	\N	Y	\N	\N
99	1919	4	6	9	64	1	\N	Y	\N	\N
100	1920	4	6	9	64	1	\N	Y	\N	\N
101	1921	4	6	9	64	1	\N	Y	\N	\N
1881	1925	2	5	9	22	10	\N	Y	\N	\N
1078	1926	1	9	9	19	10	\N	Y	\N	\N
1078	1927	2	9	9	20	10	\N	Y	\N	\N
1078	1928	3	9	9	64	1	\N	Y	\N	\N
98	1929	6	6	9	108	5	\N	Y	\N	\N
96	1930	5	6	9	12	5	\N	Y	\N	\N
100	1931	5	6	9	12	5	\N	Y	\N	\N
97	1932	5	6	9	12	5	\N	Y	\N	\N
99	1933	5	6	9	13	5	\N	Y	\N	\N
777	1940	4	7	9	21	5	\N	Y	\N	\N
13	1945	6	4	5	57	1	\N	Y	\N	\N
1945	1946	\N	5	9	64	20	\N	Y	\N	\N
31	1947	13	5	5	94	20	\N	Y	\N	\N
1947	1948	1	6	9	2	1	\N	Y	\N	\N
71	1953	15	6	9	22	10	\N	Y	\N	\N
449	2024	1	8	9	5	10	\N	Y	\N	\N
2024	2025	1	9	9	5	10	\N	Y	\N	\N
1147	2049	\N	9	9	21	10	\N	Y	\N	\N
1976	2058	9	6	9	23	10	\N	Y	\N	\N
1977	2059	4	6	9	23	10	\N	Y	\N	\N
709	2060	1	8	9	23	10	\N	Y	\N	\N
1178	2061	1	9	9	23	10	\N	Y	\N	\N
478	1677	1	8	9	13	2	\N	Y	\N	\N
640	1678	1	8	9	21	1	\N	Y	\N	\N
1050	1679	3	9	9	54	1	\N	Y	\N	\N
1244	1680	1	9	9	23	1	\N	Y	\N	\N
303	1703	3	8	9	5	1	\N	Y	\N	\N
1029	1705	1	9	9	20	1	\N	Y	\N	\N
208	1764	1	8	9	3	1	\N	Y	\N	\N
604	1708	1	8	9	39	1	\N	Y	\N	\N
762	1742	2	5	9	22	1	\N	Y	\N	\N
905	1766	2	7	9	64	1	\N	Y	\N	\N
16	1767	3	4	9	102	1	\N	Y	\N	\N
797	1768	3	8	9	29	1	\N	Y	\N	\N
759	1769	3	5	9	40	5	\N	Y	\N	\N
1055	1821	1	9	9	64	1	\N	Y	\N	\N
751	1823	2	5	9	64	1	\N	Y	\N	\N
1823	1824	\N	6	\N	\N	\N	\N	Y	\N	\N
65	1825	7	5	9	62	2	\N	Y	\N	\N
855	1826	1	9	9	22	2	\N	Y	\N	\N
1757	1827	2	5	9	21	2	\N	Y	\N	\N
206	1828	2	8	9	23	2	\N	Y	\N	\N
158	1829	4	8	9	103	2	\N	Y	\N	\N
802	1832	1	9	9	22	2	\N	Y	\N	\N
778	1830	3	7	9	29	5	\N	Y	\N	\N
742	1831	7	5	9	105	2	\N	Y	\N	\N
1193	1833	2	9	9	23	2	\N	Y	\N	\N
606	1835	1	8	9	106	2	\N	Y	\N	\N
1065	1836	2	9	9	20	2	\N	Y	\N	\N
959	1837	7	8	14	55	0	\N	Y	\N	\N
1837	1838	1	9	9	18	1	\N	Y	\N	\N
1837	1839	2	9	9	64	1	\N	Y	\N	\N
1837	1840	3	9	9	19	2	\N	Y	\N	\N
1837	1841	4	9	9	20	2	\N	Y	\N	\N
1806	1847	2	6	9	34	1	\N	Y	\N	\N
163	1867	3	7	9	52	1	\N	Y	\N	\N
898	1877	9	7	9	64	1	\N	Y	\N	\N
899	1888	13	7	9	42	20	\N	Y	\N	\N
20	1892	12	5	9	5	10	\N	Y	\N	\N
21	1893	13	5	9	5	20	\N	Y	\N	\N
65	1894	14	5	9	22	10	\N	Y	\N	\N
65	1895	15	5	9	12	10	\N	Y	\N	\N
16	1896	7	4	9	12	10	\N	Y	\N	\N
22	1897	12	5	9	13	20	\N	Y	\N	\N
48	1898	6	6	9	22	10	\N	Y	\N	\N
71	1899	13	6	9	19	10	\N	Y	\N	\N
1128	1900	1	9	9	20	10	\N	Y	\N	\N
896	1901	10	7	9	42	20	\N	Y	\N	\N
897	1902	13	7	9	42	20	\N	Y	\N	\N
1641	1903	6	7	9	42	20	\N	Y	\N	\N
898	1904	10	7	9	42	20	\N	Y	\N	\N
900	1905	11	7	9	42	20	\N	Y	\N	\N
901	1906	11	7	9	42	20	\N	Y	\N	\N
902	1907	11	7	9	42	20	\N	Y	\N	\N
903	1908	10	7	9	42	20	\N	Y	\N	\N
904	1909	12	7	9	42	20	\N	Y	\N	\N
905	1910	11	7	9	42	20	\N	Y	\N	\N
906	1911	12	7	9	42	20	\N	Y	\N	\N
897	1912	14	7	9	29	10	\N	Y	\N	\N
897	1913	15	7	9	22	10	\N	Y	\N	\N
71	1914	14	6	9	23	10	\N	Y	\N	\N
783	1935	4	7	9	64	1	\N	Y	\N	\N
15	1936	6	4	9	109	5	\N	Y	\N	\N
896	1943	12	7	9	20	20	\N	Y	\N	\N
1641	1944	7	7	9	54	20	\N	Y	\N	\N
906	1954	13	7	9	64	1	\N	Y	\N	\N
1054	1955	3	9	9	2	1	\N	Y	\N	\N
965	1964	10	8	11	40	0	\N	Y	\N	\N
1964	1965	\N	9	9	20	10	\N	Y	\N	\N
1185	1966	4	9	9	19	20	\N	Y	\N	\N
1253	1534	3	9	9	19	1	\N	Y	\N	\N
905	1535	4	7	9	49	1	\N	Y	\N	\N
1247	1536	1	9	9	20	520	\N	Y	\N	\N
1069	1537	2	9	9	19	2	\N	Y	\N	\N
1069	1538	3	9	9	20	1	\N	Y	\N	\N
1070	1539	1	9	9	19	1	\N	Y	\N	\N
1070	1540	2	9	9	20	1	\N	Y	\N	\N
1073	1541	2	9	9	19	1	\N	Y	\N	\N
906	1542	3	7	9	22	2	\N	Y	\N	\N
906	1543	4	7	9	29	2	\N	Y	\N	\N
906	1544	5	7	9	33	1	\N	Y	\N	\N
1270	1545	4	9	9	19	3	\N	Y	\N	\N
1074	1546	2	9	9	19	1	\N	Y	\N	\N
1075	1547	3	9	9	19	1	\N	Y	\N	\N
1076	1548	3	9	9	19	1	\N	Y	\N	\N
1077	1549	1	9	9	19	1	\N	Y	\N	\N
1052	1550	2	9	9	19	10	\N	Y	\N	\N
1019	1551	3	9	9	19	1	\N	Y	\N	\N
1145	1552	1	9	9	20	2	\N	Y	\N	\N
1162	1553	2	9	9	20	1	\N	Y	\N	\N
900	1554	3	7	9	22	1	\N	Y	\N	\N
132	1557	2	8	9	21	2	\N	Y	\N	\N
879	1558	1	8	9	22	1	\N	Y	\N	\N
31	1559	12	5	5	10	0	\N	Y	\N	\N
1559	1560	1	6	9	2	1	\N	Y	\N	\N
1058	1561	4	9	9	19	1	\N	Y	\N	\N
1007	1562	3	9	9	20	2	\N	Y	\N	\N
1006	1563	2	9	9	19	1	\N	Y	\N	\N
1049	1564	3	9	9	20	1	\N	Y	\N	\N
1057	1565	3	9	9	20	4	\N	Y	\N	\N
134	1566	1	8	9	22	1	\N	Y	\N	\N
142	1567	3	8	9	58	2	\N	Y	\N	\N
754	1568	3	5	6	244	1	\N	Y	\N	\N
1568	1569	1	6	9	3	1	\N	Y	\N	\N
755	1570	1	5	6	245	1	\N	Y	\N	\N
755	1571	3	5	6	246	1	\N	Y	\N	\N
755	1572	4	5	9	3	1	\N	Y	\N	\N
754	1573	1	5	9	2	1	\N	Y	\N	\N
198	1574	1	8	9	33	1	\N	Y	\N	\N
1091	1575	1	9	9	22	1	\N	Y	\N	\N
458	1576	1	8	9	15	1	\N	Y	\N	\N
567	1577	2	8	9	5	2	\N	Y	\N	\N
1648	1770	1	8	9	22	1	\N	Y	\N	\N
936	1579	1	6	9	39	1	\N	Y	\N	\N
12	1580	3	4	9	55	1	\N	Y	\N	\N
12	1581	4	4	9	56	1	\N	Y	\N	\N
12	1582	5	4	9	57	1	\N	Y	\N	\N
545	1583	1	8	9	12	3	\N	Y	\N	\N
538	1584	1	8	9	12	1	\N	Y	\N	\N
303	1585	1	8	9	24	1	\N	Y	\N	\N
468	1586	1	8	9	24	1	\N	Y	\N	\N
1028	1587	3	9	9	23	1	\N	Y	\N	\N
1049	1588	4	9	9	33	1	\N	Y	\N	\N
1263	1589	1	9	9	23	1	\N	Y	\N	\N
18	1707	2	4	9	63	1	\N	Y	\N	\N
526	1591	1	8	9	12	1	\N	Y	\N	\N
1093	1592	1	9	9	23	1	\N	Y	\N	\N
1072	1593	2	9	9	33	1	\N	Y	\N	\N
457	1594	1	8	9	5	1	\N	Y	\N	\N
108	1595	1	8	9	22	1	\N	Y	\N	\N
591	1596	1	8	9	21	2	\N	Y	\N	\N
175	1718	3	7	9	13	1	\N	Y	\N	\N
763	1709	2	5	9	39	2	\N	Y	\N	\N
746	1719	1	5	9	2	1	\N	Y	\N	\N
589	1600	1	8	9	21	2	\N	Y	\N	\N
936	1601	2	6	9	34	1	\N	Y	\N	\N
1061	1602	2	9	9	19	1	\N	Y	\N	\N
531	1603	1	8	9	12	1	\N	Y	\N	\N
157	1604	1	8	9	26	1	\N	Y	\N	\N
1031	1605	2	9	9	19	1	\N	Y	\N	\N
94	1606	4	6	9	34	1	\N	Y	\N	\N
91	1607	12	6	5	85	1	\N	Y	\N	\N
1607	1608	1	7	9	2	1	\N	Y	\N	\N
742	1609	1	5	9	2	1	\N	Y	\N	\N
747	1610	1	5	9	2	1	\N	Y	\N	\N
875	1611	1	8	9	12	1	\N	Y	\N	\N
224	1612	1	8	9	23	1	\N	Y	\N	\N
1026	1613	2	9	9	19	3	\N	Y	\N	\N
1	1617	1	1	1	1	1	1	Y	\N	\N
1003	1639	4	9	9	22	1	\N	Y	\N	\N
1051	1638	3	9	9	20	1	\N	Y	\N	\N
1032	1640	2	9	9	19	2	\N	Y	\N	\N
1046	1662	3	9	9	54	5	\N	Y	\N	\N
1036	1663	5	9	9	54	50	\N	Y	\N	\N
173	1620	1	8	9	40	1	\N	Y	\N	\N
198	1621	1	8	9	60	2	\N	Y	\N	\N
1162	1623	1	9	9	23	1	\N	Y	\N	\N
318	1624	1	8	9	13	2	\N	Y	\N	\N
317	1625	1	8	9	13	3	\N	Y	\N	\N
349	1626	1	8	9	5	2	\N	Y	\N	\N
1559	1627	3	6	6	47	1	\N	Y	\N	\N
1559	1628	4	6	6	48	1	\N	Y	\N	\N
1559	1629	5	6	6	49	1	\N	Y	\N	\N
591	1630	2	8	9	46	1	\N	Y	\N	\N
591	1631	3	8	9	49	2	\N	Y	\N	\N
630	1632	1	8	9	22	1	\N	Y	\N	\N
627	1633	2	8	9	29	6	\N	Y	\N	\N
627	1659	1	8	9	19	2	\N	Y	\N	\N
1239	1660	1	9	9	29	1	\N	Y	\N	\N
1174	1661	1	9	9	29	1	\N	Y	\N	\N
1157	1670	1	9	9	29	2	\N	Y	\N	\N
1159	1671	1	9	9	22	1	\N	Y	\N	\N
1005	1618	3	9	9	19	20	\N	Y	\N	\N
1040	1634	2	9	9	21	1	\N	Y	\N	\N
303	1635	2	8	9	13	5	\N	Y	\N	\N
304	1636	1	8	9	13	5	\N	Y	\N	\N
519	1637	1	8	9	12	1	\N	Y	\N	\N
1054	1664	2	9	9	19	1	\N	Y	\N	\N
1053	1665	1	9	9	18	1	\N	Y	\N	\N
1208	1666	1	9	9	29	2	\N	Y	\N	\N
1225	1672	1	9	9	29	1	\N	Y	\N	\N
903	1792	2	7	9	64	1	\N	Y	\N	\N
74	1641	2	6	5	86	0	\N	Y	\N	\N
1641	1642	1	7	9	2	1	\N	Y	\N	\N
1627	1643	1	7	7	64	1	\N	Y	\N	\N
1627	1644	2	7	7	65	1	\N	Y	\N	\N
1627	1645	3	7	7	66	1	\N	Y	\N	\N
1628	1646	1	7	7	67	1	\N	Y	\N	\N
1628	1647	2	7	7	68	1	\N	Y	\N	\N
1629	1648	1	7	7	412	1	\N	Y	\N	\N
1629	1649	2	7	7	413	1	\N	Y	\N	\N
1644	1650	1	8	9	22	1	\N	Y	\N	\N
1122	1651	2	9	9	29	1	\N	Y	\N	\N
318	1652	2	8	9	5	1	\N	Y	\N	\N
563	1653	1	8	9	5	10	\N	Y	\N	\N
1222	1669	1	9	9	29	1	\N	Y	\N	\N
153	1614	4	8	9	29	4	\N	Y	\N	\N
623	1615	8	8	9	21	8	\N	Y	\N	\N
1258	1667	1	9	9	29	2	\N	Y	\N	\N
1242	1668	1	9	9	29	2	\N	Y	\N	\N
207	1655	1	8	9	23	1	\N	Y	\N	\N
1154	1654	1	9	9	40	1	\N	Y	\N	\N
310	1656	1	8	9	38	1	\N	Y	\N	\N
156	1619	1	8	9	46	1	\N	Y	\N	\N
1018	1622	2	9	9	20	1	\N	Y	\N	\N
304	1657	1	8	9	38	1	\N	Y	\N	\N
1005	1658	2	9	9	20	10	\N	Y	\N	\N
14	1720	2	4	9	65	1	\N	Y	\N	\N
670	1739	1	8	9	22	1	\N	Y	\N	\N
758	1743	4	5	9	21	3	\N	Y	\N	\N
34	1793	4	5	9	65	1	\N	Y	\N	\N
758	1754	2	5	9	51	1	\N	Y	\N	\N
142	1755	2	8	9	21	1	\N	Y	\N	\N
130	1808	1	8	9	4	1	\N	Y	\N	\N
28	1809	2	6	9	64	1	\N	Y	\N	\N
845	1811	1	9	9	22	10	\N	Y	\N	\N
1806	1812	1	6	9	64	1	\N	Y	\N	\N
21	1822	7	5	9	21	1	\N	Y	\N	\N
956	1845	2	8	9	52	1	\N	Y	\N	\N
1053	1854	3	9	9	20	2	\N	Y	\N	\N
1055	1855	3	9	9	18	1	\N	Y	\N	\N
904	1856	11	7	9	64	1	\N	Y	\N	\N
899	1857	12	7	9	65	1	\N	Y	\N	\N
1045	1858	1	9	9	17	1	\N	Y	\N	\N
1045	1859	2	9	9	20	2	\N	Y	\N	\N
1045	1860	3	9	9	19	3	\N	Y	\N	\N
165	1869	3	7	9	52	1	\N	Y	\N	\N
21	1922	14	5	9	13	20	\N	Y	\N	\N
14	1937	7	4	5	93	500	\N	Y	\N	\N
180	1952	4	7	9	60	10	\N	Y	\N	\N
755	1956	5	5	9	2	1	\N	Y	\N	\N
1607	1967	2	7	9	22	5	\N	Y	\N	\N
2037	2039	\N	6	9	64	1	\N	Y	\N	\N
2036	2040	1	6	9	64	1	\N	Y	\N	\N
1059	2041	4	9	9	23	10	\N	Y	\N	\N
787	2042	6	7	9	29	10	\N	Y	\N	\N
1001	2043	6	8	11	41	0	\N	Y	\N	\N
2043	2044	\N	9	9	20	10	\N	Y	\N	\N
2036	2045	2	6	9	23	10	\N	Y	\N	\N
2038	2046	\N	6	9	23	10	\N	Y	\N	\N
1047	2047	3	9	9	20	10	\N	Y	\N	\N
31	2048	14	5	9	21	10	\N	Y	\N	\N
111	2069	3	7	9	22	10	\N	Y	\N	\N
22	1673	2	5	9	48	1	\N	Y	\N	\N
750	1676	4	5	9	45	2	\N	Y	\N	\N
562	1734	1	8	9	5	1	\N	Y	\N	\N
31	1714	3	5	9	48	1	\N	Y	\N	\N
567	1750	1	8	9	13	1	\N	Y	\N	\N
1195	1773	1	9	9	4	1	\N	Y	\N	\N
1051	1774	2	9	9	64	1	\N	Y	\N	\N
1037	1775	2	9	9	64	1	\N	Y	\N	\N
1641	1776	2	7	9	64	1	\N	Y	\N	\N
10	1777	7	3	3	5	1	\N	Y	\N	\N
1777	1778	1	4	9	8	1	\N	Y	\N	\N
1777	1779	2	4	9	52	1	\N	Y	\N	\N
781	1813	2	7	9	50	1	\N	Y	\N	\N
778	1814	2	7	9	21	5	\N	Y	\N	\N
1075	1842	1	9	9	64	1	\N	Y	\N	\N
1023	1843	2	9	9	64	1	\N	Y	\N	\N
533	1848	1	8	9	14	1	\N	Y	\N	\N
1825	1849	9	6	9	62	4	\N	Y	\N	\N
1825	1850	10	6	9	62	5	\N	Y	\N	\N
750	1862	5	5	9	22	5	\N	Y	\N	\N
758	1863	6	5	9	13	5	\N	Y	\N	\N
1040	1851	1	9	9	2	1	\N	Y	\N	\N
14	1861	6	4	9	52	1	\N	Y	\N	\N
1757	1868	6	5	9	34	5	\N	Y	\N	\N
17	1923	5	4	9	64	1	\N	Y	\N	\N
98	1924	5	6	9	22	5	\N	Y	\N	\N
1059	1938	3	9	9	64	1	\N	Y	\N	\N
1195	1941	3	9	9	23	10	\N	Y	\N	\N
778	1942	6	7	9	12	10	\N	Y	\N	\N
1757	2062	8	5	9	110	1	\N	Y	\N	\N
33	1675	2	5	9	48	1	\N	Y	\N	\N
1195	1681	2	9	9	21	1	\N	Y	\N	\N
15	1686	2	4	9	52	1	\N	Y	\N	\N
900	1687	4	7	9	33	1	\N	Y	\N	\N
470	1689	2	8	9	5	1	\N	Y	\N	\N
470	1690	1	8	9	13	1	\N	Y	\N	\N
209	1691	1	8	9	42	2	\N	Y	\N	\N
552	1692	1	8	9	12	1	\N	Y	\N	\N
1022	1701	3	9	9	20	1	\N	Y	\N	\N
1269	1710	1	9	9	4	1	\N	Y	\N	\N
47	1717	2	6	9	64	1	\N	Y	\N	\N
750	1724	2	5	9	64	1	\N	Y	\N	\N
901	1725	2	7	9	64	1	\N	Y	\N	\N
1036	1726	2	9	9	64	1	\N	Y	\N	\N
65	1727	5	5	9	65	1	\N	Y	\N	\N
33	1728	5	5	9	65	3	\N	Y	\N	\N
517	1729	1	8	9	5	1	\N	Y	\N	\N
554	1730	1	8	9	5	1	\N	Y	\N	\N
554	1731	2	8	9	13	1	\N	Y	\N	\N
899	1732	2	7	9	64	1	\N	Y	\N	\N
897	1733	2	7	9	64	1	\N	Y	\N	\N
64	1748	2	5	9	48	1	\N	Y	\N	\N
604	1749	2	8	9	59	1	\N	Y	\N	\N
742	1753	4	5	9	21	5	\N	Y	\N	\N
1751	1756	1	9	9	19	1	\N	Y	\N	\N
18	1757	13	4	4	11	0	\N	Y	\N	\N
1757	1758	1	5	9	48	1	\N	Y	\N	\N
799	1810	1	9	9	21	1	\N	Y	\N	\N
983	1815	5	8	14	52	2	\N	Y	\N	\N
1815	1816	1	9	9	19	1	\N	Y	\N	\N
1745	1818	1	5	9	22	1	\N	Y	\N	\N
1745	1819	2	5	9	21	1	\N	Y	\N	\N
1108	1844	2	9	9	22	2	\N	Y	\N	\N
10	1864	9	3	3	6	1	\N	Y	\N	\N
1864	1865	1	4	9	107	1	\N	Y	\N	\N
64	1875	11	5	9	12	50	\N	Y	\N	\N
1047	1879	2	9	9	50	1	\N	Y	\N	\N
781	1880	5	7	9	21	5	\N	Y	\N	\N
1757	1889	7	5	5	89	1	\N	Y	\N	\N
1958	1959	\N	6	9	2	1	\N	Y	\N	\N
1889	1890	1	6	9	50	1	\N	Y	\N	\N
33	1958	17	5	5	95	10	\N	Y	\N	\N
1975	2028	6	6	9	64	1	\N	Y	\N	\N
1653	2029	\N	9	9	5	10	\N	Y	\N	\N
398	2030	\N	8	9	12	10	\N	Y	\N	\N
879	2031	2	8	9	12	10	\N	Y	\N	\N
1969	2032	5	5	5	96	50	\N	Y	\N	\N
561	2033	1	8	9	13	15	\N	Y	\N	\N
1977	2034	3	6	9	22	10	\N	Y	\N	\N
1028	2066	4	9	9	19	10	\N	Y	\N	\N
16	2067	8	4	9	21	10	\N	Y	\N	\N
1198	1683	1	9	9	54	1	\N	Y	\N	\N
317	1695	2	8	9	5	1	\N	Y	\N	\N
158	1696	2	8	9	61	1	\N	Y	\N	\N
336	1697	1	8	9	13	1	\N	Y	\N	\N
339	1698	1	8	9	5	1	\N	Y	\N	\N
547	1699	1	8	9	12	10	\N	Y	\N	\N
563	1700	2	8	9	13	1	\N	Y	\N	\N
16	1711	2	4	9	52	1	\N	Y	\N	\N
11	1712	2	4	9	48	1	\N	Y	\N	\N
13	1713	1	4	9	8	1	\N	Y	\N	\N
49	1715	2	6	9	64	1	\N	Y	\N	\N
48	1716	2	6	9	64	1	\N	Y	\N	\N
50	1721	2	6	9	64	1	\N	Y	\N	\N
65	1722	3	5	9	48	1	\N	Y	\N	\N
62	1738	2	6	9	64	1	\N	Y	\N	\N
94	1746	2	6	9	64	1	\N	Y	\N	\N
82	1747	2	6	9	64	1	\N	Y	\N	\N
1003	1784	2	9	9	64	1	\N	Y	\N	\N
1060	1791	1	9	9	64	1	\N	Y	\N	\N
33	1870	15	5	9	3	5	\N	Y	\N	\N
204	1871	7	7	9	23	3	\N	Y	\N	\N
121	1876	3	7	9	5	5	\N	Y	\N	\N
72	1883	8	6	9	23	5	\N	Y	\N	\N
899	1934	14	7	9	22	10	\N	Y	\N	\N
897	1939	16	7	9	20	50	\N	Y	\N	\N
47	1949	6	6	9	22	3	\N	Y	\N	\N
897	1950	16	7	9	23	10	\N	Y	\N	\N
1907	1951	\N	8	9	42	10	\N	Y	\N	\N
1162	1957	3	9	9	20	20	\N	Y	\N	\N
18	1968	14	4	4	12	0	\N	Y	\N	\N
18	1969	15	4	4	13	0	\N	Y	\N	\N
1968	1970	1	5	5	2	50	\N	Y	\N	\N
1968	1971	2	5	5	3	50	\N	Y	\N	\N
1968	1972	3	5	5	4	50	\N	Y	\N	\N
1968	1973	4	5	5	5	50	\N	Y	\N	\N
1968	1974	5	5	5	10	50	\N	Y	\N	\N
1969	1975	2	5	5	6	50	\N	Y	\N	\N
1969	1976	3	5	5	7	50	\N	Y	\N	\N
1969	1977	4	5	5	94	50	\N	Y	\N	\N
1975	1978	1	6	9	50	1	\N	Y	\N	\N
1975	1979	2	6	6	17	50	\N	Y	\N	\N
1975	1980	3	6	6	18	50	\N	Y	\N	\N
1975	1981	4	6	6	19	50	\N	Y	\N	\N
1975	1982	5	6	6	20	50	\N	Y	\N	\N
1979	1983	1	7	9	3	1	\N	Y	\N	\N
1979	1984	2	7	7	40	50	\N	Y	\N	\N
1979	1985	3	7	7	41	50	\N	Y	\N	\N
1982	1990	1	7	9	3	1	\N	Y	\N	\N
1982	1991	2	7	7	44	50	\N	Y	\N	\N
1982	1992	3	7	7	45	50	\N	Y	\N	\N
1980	1986	1	7	9	3	1	\N	Y	\N	\N
1980	1987	2	7	7	42	50	\N	Y	\N	\N
1980	1988	3	7	7	43	50	\N	Y	\N	\N
1981	1989	1	7	9	3	1	\N	Y	\N	\N
1982	1993	4	7	7	46	50	\N	Y	\N	\N
1982	1994	5	7	7	47	50	\N	Y	\N	\N
1982	1995	6	7	7	48	50	\N	Y	\N	\N
1982	1996	7	7	9	23	50	\N	Y	\N	\N
1976	1997	1	6	9	50	1	\N	Y	\N	\N
1976	1998	2	6	6	21	50	\N	Y	\N	\N
1976	1999	3	6	6	22	50	\N	Y	\N	\N
1976	2000	4	6	6	19	50	\N	Y	\N	\N
1976	2001	5	6	6	2	50	\N	Y	\N	\N
1976	2002	6	6	6	25	50	\N	Y	\N	\N
1976	2003	7	6	9	64	1	\N	Y	\N	\N
1998	2004	1	7	9	3	1	\N	Y	\N	\N
1998	2005	2	7	7	49	50	\N	Y	\N	\N
1998	2006	3	7	7	50	50	\N	Y	\N	\N
1998	2007	4	7	7	51	50	\N	Y	\N	\N
2005	2008	1	8	9	23	50	\N	Y	\N	\N
1999	2009	1	7	9	3	1	\N	Y	\N	\N
1999	2010	2	7	7	52	50	\N	Y	\N	\N
1999	2011	3	7	7	53	50	\N	Y	\N	\N
2001	2012	1	7	9	3	1	\N	Y	\N	\N
2001	2013	2	7	7	54	50	\N	Y	\N	\N
2001	2014	3	7	7	55	50	\N	Y	\N	\N
2002	2015	1	7	9	3	1	\N	Y	\N	\N
2002	2016	2	7	7	56	50	\N	Y	\N	\N
1977	2017	1	6	9	50	1	\N	Y	\N	\N
1969	2018	1	5	9	48	1	\N	Y	\N	\N
1984	2019	1	8	9	23	50	\N	Y	\N	\N
1984	2020	2	8	9	22	50	\N	Y	\N	\N
1985	2021	1	8	9	23	50	\N	Y	\N	\N
1987	2022	1	8	9	23	50	\N	Y	\N	\N
1987	2023	2	8	9	42	50	\N	Y	\N	\N
1042	2056	3	9	9	58	5	\N	Y	\N	\N
72	2063	9	6	9	64	1	\N	Y	\N	\N
33	2064	21	5	5	96	50	\N	Y	\N	\N
2064	2065	1	6	9	50	1	\N	Y	\N	\N
901	2068	12	7	9	22	50	\N	Y	\N	\N
\.


--
-- TOC entry 3932 (class 0 OID 49336)
-- Dependencies: 261
-- Data for Name: att_org_emp_node; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.att_org_emp_node (counter, emp_id, node_id, active, active_date, user_no, time_stamp, note, job_no, emp_node_type) FROM stdin;
1	24592	181	N	2016-01-01	\N	2016-03-26	\N	38	1
3	68377	423	N	2009-11-01	\N	2016-03-27	\N	2	1
2	81601	30	N	2009-11-01	\N	2016-03-27	\N	2	1
4	82893	453	N	2009-11-01	\N	2016-03-27	\N	2	1
5	80113	463	Y	2014-12-18	\N	2016-03-27	\N	2	1
1432	92003	2063	Y	2023-01-01	\N	2023-06-19	\N	64	1
7	82915	483	Y	2009-11-01	\N	2016-03-27	\N	2	1
9	95827	479	N	2012-07-01	\N	2016-03-27	\N	13	1
11	73621	29	N	2011-03-16	\N	2016-03-27	\N	1	1
13	68376	37	Y	2009-11-01	\N	2016-03-27	\N	2	1
14	81612	499	Y	2009-11-01	\N	2016-03-27	\N	5	1
15	67919	38	Y	2009-11-01	\N	2016-03-27	\N	2	1
1433	69697	2065	Y	2023-01-01	\N	2023-06-19	\N	50	1
1297	82039	909	Y	2022-12-01	\N	2022-12-07	\N	2	1
1011	46039	743	Y	2021-01-01	\N	2021-01-23	\N	34	1
20	82336	136	N	2010-12-01	\N	2016-03-28	\N	2	1
21	80658	149	N	2010-01-01	\N	2016-03-28	\N	2	1
22	80092	177	N	2009-11-01	\N	2016-03-28	\N	2	1
1107	171072	1876	Y	2019-03-21	\N	2021-09-26	\N	5	1
1359	186374	2023	Y	2023-01-01	\N	2023-05-09	\N	23	1
29	97242	105	N	2012-07-01	\N	2016-03-28	\N	22	1
1040	315	1753	Y	2021-01-01	\N	2021-02-08	\N	21	1
31	82894	187	Y	2009-11-01	\N	2016-03-28	\N	37	1
1335	60000	357	Y	2023-01-01	\N	2023-02-06	\N	1	1
1015	183907	1381	Y	2020-10-27	\N	2021-01-23	\N	20	1
35	151322	769	Y	2012-01-01	\N	2016-03-28	\N	21	1
36	91624	770	Y	2009-11-01	\N	2016-03-28	\N	29	1
38	91999	771	Y	2009-11-01	\N	2016-03-28	\N	33	1
39	91994	772	N	2009-11-01	\N	2016-03-28	\N	49	1
40	82980	774	N	2009-11-01	\N	2016-03-29	\N	50	1
41	80835	776	N	2009-11-01	\N	2016-03-29	\N	46	1
44	93043	248	N	2014-12-18	\N	2016-03-29	\N	2	1
42	82749	239	Y	2011-09-01	\N	2016-03-29	\N	2	1
1017	326	1829	Y	2020-11-30	\N	2021-01-23	\N	103	1
45	82751	256	N	2015-03-23	\N	2016-03-29	\N	22	1
46	96236	341	N	2012-11-13	\N	2016-03-29	\N	2	1
47	96419	345	N	2012-07-01	\N	2016-03-29	\N	15	1
48	150238	290	N	2015-01-19	\N	2016-03-29	\N	13	1
50	153432	332	N	2014-11-27	\N	2016-03-29	\N	13	1
1019	328	1509	Y	2020-12-01	\N	2021-01-23	\N	19	1
52	66785	360	N	2009-11-01	\N	2016-03-29	\N	2	1
53	62180	364	N	2009-11-01	\N	2016-03-29	\N	2	1
54	116713	372	N	2014-12-18	\N	2016-03-29	\N	2	1
55	95815	379	N	2014-12-18	\N	2016-03-29	\N	2	1
56	95821	382	Y	2014-12-18	\N	2016-03-29	\N	50	1
58	44319	162	N	2001-08-01	\N	2016-03-29	\N	2	1
59	82876	788	Y	2014-02-03	\N	2016-03-30	\N	2	1
60	81291	795	N	2009-11-01	\N	2016-03-30	\N	2	1
61	67958	803	N	2009-12-01	\N	2016-03-30	\N	2	1
63	73422	813	N	2009-11-01	\N	2016-03-30	\N	2	1
65	73516	819	Y	2009-11-01	\N	2016-03-30	\N	2	1
67	66532	825	Y	2009-11-01	\N	2016-03-30	\N	2	1
69	81498	831	Y	2009-11-01	\N	2016-03-30	\N	2	1
1022	330	1614	N	2020-12-22	\N	2021-01-23	\N	29	1
71	69883	174	N	2009-11-01	\N	2016-03-30	\N	2	1
73	96418	878	N	2012-07-01	\N	2016-03-30	\N	41	1
74	76729	880	N	2013-09-01	\N	2016-03-30	\N	11	1
1023	185047	1408	Y	2020-12-22	\N	2021-01-23	\N	20	1
81	155103	520	N	2014-02-03	\N	2016-03-30	\N	2	1
82	95828	523	N	2012-07-01	\N	2016-03-30	\N	2	1
78	81284	527	N	2009-11-01	\N	2016-03-30	\N	2	1
79	92710	534	N	2014-12-18	\N	2016-03-30	\N	2	1
80	95816	513	N	2014-02-03	\N	2016-03-30	\N	2	1
84	93041	553	N	2012-07-01	\N	2016-03-30	\N	44	1
85	82403	740	N	2012-02-01	\N	2016-03-30	\N	1	1
86	96765	885	N	2014-02-18	\N	2016-03-30	\N	22	1
87	60705	743	N	2014-03-06	\N	2016-03-30	\N	34	1
1024	331	1565	Y	2020-12-22	\N	2021-01-23	\N	20	1
89	64537	887	Y	2010-07-29	\N	2016-03-30	\N	2	1
92	151320	749	Y	2012-01-01	\N	2016-03-30	\N	34	1
93	64413	892	N	2013-06-01	\N	2016-03-30	\N	2	1
94	62438	893	N	2013-06-01	\N	2016-03-30	\N	2	1
95	81110	760	N	\N	\N	2016-03-30	\N	2	1
96	157104	894	N	2013-07-01	\N	2016-03-30	\N	50	1
97	154539	895	Y	2015-02-11	\N	2016-03-30	\N	39	1
99	69885	610	N	2014-12-18	\N	2016-03-30	\N	2	1
101	73563	666	N	2011-12-01	\N	2016-03-30	\N	2	1
103	92002	727	Y	2014-02-03	\N	2016-03-30	\N	2	1
104	100684	801	N	2009-11-01	\N	2016-03-31	\N	23	1
105	43714	935	N	\N	\N	2016-03-31	\N	21	1
1025	332	1382	Y	2020-12-24	\N	2021-01-23	\N	20	1
107	151321	941	N	2015-03-23	\N	2016-03-31	\N	22	1
108	61992	1002	N	2009-11-01	\N	2016-04-03	\N	53	1
110	82753	588	N	2009-11-01	\N	2016-04-03	\N	21	1
112	97267	595	Y	2013-09-01	\N	2016-04-03	\N	43	1
1027	336	1832	Y	2020-12-29	\N	2021-01-23	\N	22	1
1028	338	1833	Y	2020-12-29	\N	2021-01-23	\N	23	1
117	101755	656	N	2013-09-01	\N	2016-04-03	\N	23	1
1041	184552	1567	Y	2021-01-01	\N	2021-02-08	\N	58	1
120	101751	660	N	2014-07-22	\N	2016-04-03	\N	23	1
1042	185710	1283	Y	2021-01-01	\N	2021-02-08	\N	20	1
122	69312	1104	N	2010-11-01	\N	2016-04-04	\N	22	1
123	69317	1101	Y	2009-12-01	\N	2016-04-05	\N	20	1
124	60300	907	N	2009-11-01	\N	2016-04-05	\N	2	1
126	80898	1089	N	2009-11-01	\N	2016-04-05	\N	22	1
127	155150	1279	N	2012-01-01	\N	2016-04-05	\N	19	1
128	64910	909	N	2009-12-01	\N	2016-04-05	\N	2	1
129	82039	910	N	2010-11-01	\N	2016-04-05	\N	22	1
130	69488	1107	Y	2009-12-01	\N	2016-04-05	\N	20	1
1047	116713	1722	Y	2021-04-01	\N	2021-04-14	\N	48	1
134	69484	1284	Y	2009-11-01	\N	2016-04-05	\N	21	1
135	73528	1285	Y	2009-12-01	\N	2016-04-05	\N	20	1
137	69846	1286	Y	2012-08-01	\N	2016-04-05	\N	21	1
138	69491	1121	Y	2009-11-01	\N	2016-04-05	\N	20	1
139	69847	1287	Y	2009-12-01	\N	2016-04-05	\N	20	1
140	69490	1306	Y	2009-11-01	\N	2016-04-05	\N	19	1
144	155154	1310	N	2012-01-01	\N	2016-04-05	\N	19	1
145	73580	1288	Y	2009-11-01	\N	2016-04-05	\N	21	1
146	68798	1289	Y	2009-11-01	\N	2016-04-05	\N	19	1
141	101754	1307	N	2012-01-01	\N	2016-04-05	\N	19	1
147	73470	1290	Y	2009-11-01	\N	2016-04-05	\N	21	1
148	64908	1291	Y	2009-11-01	\N	2016-04-05	\N	21	1
149	73425	1292	Y	2009-11-01	\N	2016-04-05	\N	21	1
150	69482	1294	Y	2009-11-01	\N	2016-04-05	\N	19	1
151	73424	1295	N	2009-11-01	\N	2016-04-05	\N	50	1
152	73427	1296	Y	2009-11-01	\N	2016-04-05	\N	21	1
153	69903	1297	Y	2012-08-01	\N	2016-04-05	\N	50	1
154	68061	1302	Y	2009-11-01	\N	2016-04-05	\N	21	1
156	92000	1301	Y	2009-11-01	\N	2016-04-05	\N	20	1
157	73406	1304	Y	2011-08-01	\N	2016-04-05	\N	19	1
158	80101	1305	Y	2012-07-01	\N	2016-04-05	\N	22	1
163	73479	913	N	2010-02-01	\N	2016-04-05	\N	50	1
161	82162	1311	N	2009-11-01	\N	2016-04-05	\N	23	1
162	66806	1315	Y	2009-11-01	\N	2016-04-05	\N	19	1
164	69815	914	N	2011-02-01	\N	2016-04-05	\N	50	1
166	26098	916	Y	2009-11-01	\N	2016-04-05	\N	51	1
167	73502	917	N	2009-11-01	\N	2016-04-05	\N	50	1
168	73549	918	N	2011-05-01	\N	2016-04-05	\N	50	1
169	73560	919	N	2011-01-01	\N	2016-04-05	\N	50	1
170	73613	921	N	2014-04-07	\N	2016-04-05	\N	50	1
171	68079	923	N	2011-09-01	\N	2016-04-05	\N	50	1
172	73553	925	N	2009-11-01	\N	2016-04-05	\N	50	1
174	81076	927	N	2011-01-01	\N	2016-04-05	\N	50	1
178	64041	1317	Y	2009-11-01	\N	2016-04-06	\N	19	1
179	69400	1318	Y	2009-11-01	\N	2016-04-06	\N	19	1
180	91991	1152	Y	2011-06-01	\N	2016-04-06	\N	22	1
181	64444	1155	Y	2009-12-01	\N	2016-04-06	\N	20	1
183	155097	1320	N	2014-02-03	\N	2016-04-06	\N	19	1
185	69401	1322	N	2011-02-01	\N	2016-04-06	\N	22	1
187	69944	1324	Y	2009-11-01	\N	2016-04-06	\N	21	1
188	73593	1325	Y	2009-11-01	\N	2016-04-06	\N	20	1
189	81274	1160	Y	2009-11-01	\N	2016-04-06	\N	23	1
191	69409	1331	Y	2009-12-01	\N	2016-04-06	\N	19	1
192	73409	1332	Y	2012-05-01	\N	2016-04-06	\N	21	1
193	69431	1169	Y	2015-03-23	\N	2016-04-06	\N	23	1
194	80297	1343	Y	2009-11-01	\N	2016-04-06	\N	20	1
196	73419	1328	Y	2009-11-01	\N	2016-04-06	\N	19	1
197	96528	1329	Y	2012-01-01	\N	2016-04-06	\N	19	1
198	65301	1333	N	2015-06-02	\N	2016-04-06	\N	23	1
199	73440	1335	Y	2017-01-09	\N	2016-04-06	\N	20	1
200	73559	1337	Y	2012-08-01	\N	2016-04-06	\N	50	1
201	92003	1175	N	2014-07-22	\N	2016-04-06	\N	23	1
202	81464	1177	N	2009-11-01	\N	2016-04-06	\N	23	1
204	69501	1345	N	2010-07-01	\N	2016-04-06	\N	20	1
1085	256	1866	Y	2021-06-14	\N	2021-06-20	\N	22	1
207	69500	1348	Y	2009-11-01	\N	2016-04-06	\N	19	1
1223	44319	828	Y	2022-04-01	\N	2022-04-25	\N	2	1
210	101758	1314	N	2015-03-23	\N	2016-04-06	\N	23	1
211	73587	1351	N	2011-05-01	\N	2016-04-06	\N	21	1
212	96527	1352	Y	2012-01-01	\N	2016-04-06	\N	19	1
213	73503	1353	Y	2009-11-01	\N	2016-04-06	\N	21	1
214	73439	1354	Y	2009-11-01	\N	2016-04-06	\N	21	1
215	73606	1355	N	2013-12-04	\N	2016-04-06	\N	21	1
216	80189	1356	Y	2009-11-01	\N	2016-04-06	\N	19	1
217	73446	1357	Y	2009-11-01	\N	2016-04-06	\N	50	1
218	69499	1359	Y	2009-11-01	\N	2016-04-06	\N	21	1
219	63203	1360	Y	2009-11-01	\N	2016-04-06	\N	19	1
220	68797	1362	Y	2009-11-01	\N	2016-04-06	\N	21	1
221	61986	1367	N	2009-11-01	\N	2016-04-07	\N	22	1
1086	204568	1867	Y	2021-06-08	\N	2021-06-27	\N	52	1
223	73550	1369	Y	2009-11-01	\N	2016-04-07	\N	21	1
224	73611	1370	Y	2009-11-01	\N	2016-04-07	\N	19	1
1089	163679	1870	N	2021-07-11	\N	2021-07-26	\N	3	1
1090	97242	103	Y	2021-06-14	\N	2021-07-26	\N	2	1
1137	42249	1885	Y	2021-06-13	\N	2022-01-03	\N	5	1
1227	182915	1565	Y	2020-01-01	\N	2022-05-18	\N	20	1
229	67694	1366	Y	2009-11-01	\N	2016-04-07	\N	19	1
1147	80658	1748	Y	2021-01-01	\N	2022-03-27	\N	48	1
1146	176331	1891	Y	2022-01-30	\N	2022-03-16	\N	22	1
1273	393	1934	Y	2021-07-01	\N	2022-09-25	\N	22	1
1228	513	1934	Y	2021-12-01	\N	2022-05-18	\N	22	1
235	155065	1376	Y	2012-01-01	\N	2016-04-07	\N	19	1
1231	69489	913	Y	2021-05-25	\N	2022-05-26	\N	2	1
237	73473	1377	Y	2009-11-01	\N	2016-04-07	\N	50	1
238	155152	1378	N	2014-04-07	\N	2016-04-07	\N	20	1
239	69433	1226	Y	2010-11-01	\N	2016-04-07	\N	22	1
240	69502	1228	N	2015-02-23	\N	2016-04-07	\N	23	1
241	69319	1380	Y	2009-12-01	\N	2016-04-07	\N	20	1
242	91620	1381	Y	2009-11-01	\N	2016-04-07	\N	20	1
243	91998	1382	Y	2009-11-01	\N	2016-04-07	\N	20	1
245	69406	1399	Y	2009-11-01	\N	2016-04-07	\N	20	1
246	65790	1383	Y	2009-11-01	\N	2016-04-07	\N	19	1
247	69898	1384	Y	2009-11-01	\N	2016-04-07	\N	19	1
248	63206	1385	Y	2009-11-01	\N	2016-04-07	\N	19	1
249	75627	1386	Y	2012-01-01	\N	2016-04-07	\N	19	1
250	62900	1237	Y	2009-11-01	\N	2016-04-07	\N	20	1
251	69881	1240	Y	2009-12-01	\N	2016-04-07	\N	20	1
1272	186415	1911	Y	2021-07-13	\N	2022-09-25	\N	42	1
253	73441	1388	N	2009-11-01	\N	2016-04-07	\N	50	1
254	82932	1389	Y	2014-04-07	\N	2016-04-07	\N	20	1
255	73430	1390	Y	2009-11-01	\N	2016-04-07	\N	50	1
256	69320	1391	Y	2012-05-01	\N	2016-04-07	\N	21	1
257	94646	1392	Y	2012-07-01	\N	2016-04-07	\N	22	1
258	69318	1393	Y	2009-11-01	\N	2016-04-07	\N	19	1
259	91622	1394	Y	2009-11-01	\N	2016-04-07	\N	20	1
260	69410	1395	Y	2009-11-01	\N	2016-04-07	\N	22	1
1299	547	1957	Y	2022-03-01	\N	2022-12-27	\N	20	1
262	91618	1397	Y	2009-11-01	\N	2016-04-07	\N	20	1
263	73436	1398	Y	2011-07-01	\N	2016-04-07	\N	21	1
264	98025	1243	Y	2015-03-23	\N	2016-04-07	\N	23	1
265	81661	1245	Y	2009-11-01	\N	2016-04-07	\N	23	1
267	155151	1400	Y	2012-01-01	\N	2016-04-07	\N	19	1
268	69493	1254	Y	2009-11-01	\N	2016-04-07	\N	19	1
269	98024	1257	Y	2015-03-23	\N	2016-04-07	\N	23	1
270	69503	1401	Y	2009-11-01	\N	2016-04-07	\N	21	1
271	81441	1402	Y	2009-11-01	\N	2016-04-07	\N	19	1
272	80349	1404	Y	2009-11-01	\N	2016-04-07	\N	21	1
273	93361	1405	Y	2009-11-01	\N	2016-04-07	\N	20	1
274	66534	1406	Y	2010-03-01	\N	2016-04-07	\N	21	1
275	73489	1407	N	2013-10-01	\N	2016-04-07	\N	22	1
277	73586	1408	Y	2009-11-01	\N	2016-04-10	\N	20	1
278	73615	1265	Y	2009-11-01	\N	2016-04-10	\N	20	1
279	73511	1416	Y	2011-05-01	\N	2016-04-10	\N	19	1
280	65302	1417	Y	2010-12-01	\N	2016-04-10	\N	54	1
281	97243	1409	Y	2012-01-01	\N	2016-04-10	\N	19	1
282	80155	1410	Y	2009-11-01	\N	2016-04-10	\N	19	1
283	101752	1271	Y	2015-03-23	\N	2016-04-10	\N	23	1
285	73571	1412	N	2014-04-07	\N	2016-04-10	\N	50	1
286	73612	1413	Y	2011-07-01	\N	2016-04-10	\N	20	1
287	68796	1414	Y	2010-10-01	\N	2016-04-10	\N	21	1
288	92425	1415	Y	2009-11-01	\N	2016-04-10	\N	20	1
290	68712	1419	N	2015-06-08	\N	2016-04-10	\N	1	1
291	153939	223	N	2014-01-15	\N	2016-04-10	\N	23	1
294	69963	1424	Y	2009-11-01	\N	2016-04-11	\N	21	1
296	73603	1427	Y	2009-11-01	\N	2016-04-11	\N	29	1
297	73517	1428	N	2009-11-01	\N	2016-04-11	\N	29	1
298	150250	1431	N	2016-09-27	\N	2016-04-11	\N	26	1
299	64327	1432	N	2012-08-01	\N	2016-04-11	\N	46	1
300	80834	1430	Y	2010-09-01	\N	2016-04-11	\N	54	1
301	91798	1433	Y	2013-06-01	\N	2016-04-11	\N	29	1
302	68373	1278	Y	2009-12-01	\N	2016-04-11	\N	21	1
303	81638	1172	Y	2009-11-01	\N	2016-04-11	\N	22	1
304	91616	1435	Y	2015-02-11	\N	2016-04-11	\N	20	1
306	25730	52	Y	2011-03-16	\N	2016-04-11	\N	1	1
308	163470	1437	N	2015-02-11	\N	2016-04-14	\N	19	1
316	88	771	N	2007-01-23	\N	2016-04-20	\N	33	1
317	184821	1462	N	2008-02-24	\N	2016-04-21	\N	29	1
319	97	1462	N	2012-01-22	\N	2016-04-21	\N	29	1
320	184824	1462	Y	2015-05-21	\N	2016-04-21	\N	29	1
322	101	1469	N	2013-05-03	\N	2016-04-24	\N	30	1
323	99	1467	N	2012-05-16	\N	2016-04-24	\N	33	1
328	103	1471	N	2013-11-01	\N	2016-04-24	\N	39	1
329	176360	1466	Y	2015-12-06	\N	2016-04-24	\N	23	1
330	109	1465	Y	2015-12-06	\N	2016-04-24	\N	21	1
331	185097	1472	N	2009-12-07	\N	2016-04-24	\N	34	1
332	184832	1431	Y	2013-06-19	\N	2016-04-24	\N	29	1
333	181381	1279	Y	2008-10-05	\N	2016-04-25	\N	19	1
334	182974	1279	Y	2016-04-19	\N	2016-04-25	\N	19	1
337	4	1476	N	2016-04-19	\N	2016-04-25	\N	49	1
341	14	1478	Y	2007-07-15	\N	2016-04-25	\N	49	1
343	181232	1479	Y	2003-07-20	\N	2016-04-25	\N	19	1
344	181233	1479	Y	2005-09-08	\N	2016-04-25	\N	19	1
345	15	1479	N	2008-01-01	\N	2016-04-25	\N	19	1
346	185672	1479	Y	2008-01-19	\N	2016-04-25	\N	19	1
347	182837	1479	N	2008-07-16	\N	2016-04-25	\N	19	1
348	183821	1479	N	2013-05-16	\N	2016-04-25	\N	19	1
349	181235	1479	Y	2013-05-17	\N	2016-04-25	\N	19	1
350	165412	1289	Y	2016-02-01	\N	2016-04-25	\N	19	1
352	11	1483	Y	2004-05-01	\N	2016-04-25	\N	19	1
353	181379	1484	Y	2003-01-23	\N	2016-04-25	\N	19	1
354	181234	1485	Y	2013-05-15	\N	2016-04-25	\N	19	1
355	23	1486	Y	2013-05-18	\N	2016-04-25	\N	19	1
356	181231	1487	Y	2003-03-15	\N	2016-04-25	\N	19	1
357	19	1488	Y	2012-01-10	\N	2016-04-25	\N	19	1
359	24	1489	Y	2002-10-20	\N	2016-04-25	\N	19	1
360	27	1490	Y	2006-08-15	\N	2016-04-25	\N	19	1
361	28	1492	Y	2002-10-15	\N	2016-04-25	\N	49	1
363	181228	1491	Y	2003-10-19	\N	2016-04-25	\N	19	1
365	182812	1491	Y	2008-05-10	\N	2016-04-25	\N	19	1
366	183301	1491	Y	2008-06-10	\N	2016-04-25	\N	19	1
368	183086	1491	N	2010-07-14	\N	2016-04-25	\N	19	1
371	182973	1499	Y	2013-05-11	\N	2016-04-26	\N	19	1
372	181358	1499	Y	2013-05-12	\N	2016-04-26	\N	19	1
373	181353	1497	Y	2008-01-06	\N	2016-04-26	\N	19	1
374	45	1497	Y	2013-05-09	\N	2016-04-26	\N	19	1
375	181395	1498	Y	2009-01-04	\N	2016-04-26	\N	19	1
376	52	1500	Y	2015-12-06	\N	2016-04-26	\N	22	1
378	62	378	N	2014-03-06	\N	2016-04-26	\N	34	1
1314	449	1965	Y	2023-01-25	\N	2023-01-25	\N	20	1
383	185718	1501	N	2011-06-02	\N	2016-04-26	\N	29	1
1117	427	1694	Y	2021-09-26	\N	2021-10-28	\N	62	1
1315	448	1965	Y	2023-01-25	\N	2023-01-25	\N	20	1
387	61	1501	N	2013-09-09	\N	2016-04-26	\N	29	1
1316	334	1345	Y	2023-01-25	\N	2023-01-25	\N	20	1
394	181171	1506	Y	2002-10-20	\N	2016-04-26	\N	19	1
1317	455	1373	Y	2023-01-25	\N	2023-01-25	\N	20	1
393	68	1506	Y	2002-01-12	\N	2016-04-26	\N	19	1
395	71	1506	Y	2004-12-15	\N	2016-04-26	\N	19	1
396	77	1506	N	2008-10-19	\N	2016-04-26	\N	19	1
398	182966	1506	Y	2010-12-08	\N	2016-04-26	\N	19	1
1318	407	1966	Y	2023-01-25	\N	2023-01-25	\N	19	1
401	181175	1509	Y	2005-06-12	\N	2016-04-26	\N	19	1
1347	164907	2028	Y	2023-02-02	\N	2023-03-09	\N	64	1
403	182806	1509	Y	2008-05-10	\N	2016-04-26	\N	19	1
404	182967	1509	Y	2008-10-22	\N	2016-04-26	\N	19	1
1408	187095	2057	Y	2023-01-01	\N	2023-05-29	\N	13	1
406	81	1511	Y	2009-12-06	\N	2016-04-26	\N	19	1
407	82	1512	Y	2009-12-08	\N	2016-04-26	\N	19	1
1409	485	1636	Y	2023-01-01	\N	2023-05-29	\N	13	1
409	73	1514	Y	2006-02-25	\N	2016-04-26	\N	19	1
410	87	1515	N	2013-11-20	\N	2016-04-26	\N	19	1
411	69	1516	Y	2002-09-15	\N	2016-04-26	\N	19	1
413	110	1518	N	2015-12-06	\N	2016-04-26	\N	19	1
516	176358	1600	N	2014-05-22	\N	2017-02-06	\N	21	1
415	181460	1519	Y	2015-12-06	\N	2016-04-26	\N	20	1
416	181242	1520	Y	2013-05-08	\N	2016-04-26	\N	19	1
417	183093	1521	Y	2013-05-07	\N	2016-04-26	\N	19	1
491	95814	541	N	2016-07-18	\N	2017-01-29	\N	2	1
419	183822	1525	Y	2013-05-14	\N	2016-04-26	\N	21	1
421	118	1523	Y	2009-03-16	\N	2016-04-26	\N	20	1
422	183090	1524	Y	2011-05-18	\N	2016-04-26	\N	19	1
423	182918	1524	Y	2013-05-06	\N	2016-04-26	\N	19	1
425	183092	1533	Y	2013-05-06	\N	2016-04-27	\N	19	1
426	182920	1527	Y	2007-01-15	\N	2016-04-27	\N	19	1
427	183091	1527	Y	2009-01-04	\N	2016-04-27	\N	19	1
428	122	1529	Y	2011-06-21	\N	2016-04-27	\N	20	1
429	181225	1530	Y	2012-09-19	\N	2016-04-27	\N	19	1
430	181223	1531	Y	2009-02-07	\N	2016-04-27	\N	19	1
431	183088	1532	Y	2013-05-06	\N	2016-04-27	\N	19	1
433	182834	1534	Y	2009-01-02	\N	2016-04-27	\N	19	1
435	181209	1536	Y	2004-12-15	\N	2016-04-27	\N	20	1
436	181208	1537	Y	2013-05-04	\N	2016-04-27	\N	19	1
437	129	1538	N	2003-10-03	\N	2016-04-27	\N	20	1
438	182835	1539	Y	2013-05-05	\N	2016-04-27	\N	19	1
439	181362	1540	Y	2004-07-01	\N	2016-04-27	\N	20	1
440	182836	1541	Y	2008-01-09	\N	2016-04-27	\N	19	1
442	182916	1542	Y	2015-12-06	\N	2016-04-27	\N	22	1
444	185060	1544	Y	2013-09-19	\N	2016-04-27	\N	33	1
446	181360	1545	Y	2008-10-01	\N	2016-04-27	\N	19	1
448	183713	1546	Y	2009-01-06	\N	2016-04-27	\N	19	1
450	183844	1548	Y	2009-01-03	\N	2016-04-27	\N	19	1
452	181382	1550	Y	2007-01-15	\N	2016-04-27	\N	19	1
453	182852	1494	Y	2010-07-14	\N	2016-04-28	\N	19	1
454	181211	1552	Y	2014-05-22	\N	2016-04-28	\N	20	1
455	185778	1553	Y	2013-09-09	\N	2016-04-28	\N	20	1
517	186379	1602	Y	2017-02-08	\N	2017-02-07	\N	19	1
463	91800	459	Y	2008-01-01	\N	2016-09-06	\N	14	1
467	153	1561	Y	2016-11-01	\N	2016-11-28	\N	19	1
530	155146	1328	Y	2012-01-01	\N	2017-03-05	\N	19	1
487	92564	1408	N	2016-11-30	\N	2016-12-22	\N	20	1
470	184514	1310	Y	2016-11-01	\N	2016-11-28	\N	19	1
471	155	1283	N	2016-12-01	\N	2016-11-28	\N	20	1
472	157	1562	Y	2016-11-16	\N	2016-11-28	\N	20	1
473	166	1563	Y	2016-11-16	\N	2016-11-28	\N	19	1
474	158	1564	N	2016-11-01	\N	2016-11-28	\N	20	1
475	182971	1336	Y	2016-11-01	\N	2016-11-28	\N	19	1
476	185014	1565	Y	2016-11-08	\N	2016-11-28	\N	20	1
477	163	1515	N	2016-11-16	\N	2016-11-28	\N	19	1
479	185663	1567	N	2016-11-08	\N	2016-11-29	\N	21	1
480	184829	1566	N	2016-11-16	\N	2016-11-29	\N	21	1
482	185064	1329	Y	2016-12-05	\N	2016-12-04	\N	19	1
485	152210	367	N	2016-07-18	\N	2016-12-18	\N	50	1
486	93	1574	N	2008-12-15	\N	2016-12-21	\N	33	1
489	85233	1577	Y	2016-05-02	\N	2017-01-17	\N	5	1
490	95814	544	N	2014-01-01	\N	2017-01-29	\N	3	1
520	169355	1586	N	2016-12-18	\N	2017-02-08	\N	24	1
496	176359	1444	Y	2016-12-18	\N	2017-01-29	\N	23	1
508	67799	1594	Y	2016-12-29	\N	2017-02-06	\N	5	1
501	182838	1575	N	2016-12-18	\N	2017-01-29	\N	22	1
502	176209	1585	Y	2016-12-18	\N	2017-01-29	\N	24	1
524	182846	1495	Y	2013-05-06	\N	2017-02-22	\N	19	1
504	176205	1591	N	2016-12-18	\N	2017-01-30	\N	12	1
507	184568	1593	Y	2016-12-18	\N	2017-01-30	\N	33	1
509	163679	1595	N	2015-03-15	\N	2017-02-06	\N	22	1
518	46039	939	N	2017-02-06	\N	2017-02-07	\N	34	1
519	182941	1587	Y	2016-12-18	\N	2017-02-08	\N	23	1
522	167034	1603	N	2017-02-08	\N	2017-02-22	\N	12	1
523	182850	1494	Y	2009-05-07	\N	2017-02-22	\N	19	1
525	89	1604	Y	2007-09-12	\N	2017-02-22	\N	26	1
526	185051	1315	Y	2016-11-16	\N	2017-02-22	\N	19	1
532	93041	548	N	2016-07-18	\N	2017-03-15	\N	50	1
535	101755	666	N	2017-02-16	\N	2017-03-20	\N	50	1
546	181227	1320	Y	2005-01-15	\N	2017-07-25	\N	19	1
545	82751	1609	N	2017-02-16	\N	2017-06-08	\N	14	1
540	151	1418	N	2016-02-01	\N	2017-04-02	\N	30	1
542	64413	748	N	2017-03-28	\N	2017-06-05	\N	8	1
544	150250	776	Y	2016-09-27	\N	2017-06-07	\N	26	1
548	160005	1320	N	2017-07-25	\N	2017-07-25	\N	19	1
549	187	776	N	2017-07-26	\N	2017-07-26	\N	26	1
551	110	1615	N	2017-08-24	\N	2017-08-24	\N	21	1
552	155103	534	N	2017-07-20	\N	2017-09-13	\N	50	1
553	92710	520	N	2017-07-20	\N	2017-09-13	\N	50	1
554	69887	1339	Y	2009-11-01	\N	2017-09-18	\N	21	1
555	160009	1605	N	2014-03-06	\N	2017-09-18	\N	19	1
557	191	1356	Y	2017-09-24	\N	2017-09-27	\N	19	1
558	160009	1341	Y	2016-03-14	\N	2017-09-27	\N	19	1
560	192	1471	N	2017-10-01	\N	2017-10-02	\N	39	1
563	183821	1618	Y	2017-10-08	\N	2017-10-09	\N	19	1
561	88855	1617	N	2017-11-01	\N	2017-10-04	\N	100	1
562	182837	1487	Y	2017-10-02	\N	2017-10-09	\N	19	1
564	73571	1367	Y	2017-10-09	\N	2017-10-09	\N	22	1
565	61986	1412	Y	2017-10-09	\N	2017-10-09	\N	22	1
566	189	1306	N	2017-09-05	\N	2017-10-16	\N	19	1
567	190	1515	Y	2017-09-05	\N	2017-10-16	\N	19	1
568	184	1619	N	2017-06-05	\N	2017-10-16	\N	46	1
571	41	1496	N	2013-05-13	\N	2017-10-22	\N	19	1
572	69501	669	N	2010-07-01	\N	2017-10-23	\N	50	1
573	195	1430	Y	2017-11-01	\N	2017-11-01	\N	54	1
606	208	1418	N	2017-12-28	\N	2018-02-08	\N	30	1
577	96236	254	N	2017-11-08	\N	2017-12-05	\N	50	1
578	183086	1613	N	2017-03-26	\N	2017-12-11	\N	19	1
579	88	771	Y	2019-11-01	\N	2017-12-13	\N	33	1
580	181351	1430	Y	2010-09-01	\N	2017-12-13	\N	54	1
581	184829	939	N	2017-12-20	\N	2018-01-02	\N	21	1
582	160005	1552	Y	2017-08-21	\N	2018-01-14	\N	20	1
584	184780	1620	Y	2018-08-16	\N	2018-01-16	\N	40	1
585	185017	1621	N	2018-01-16	\N	2018-01-16	\N	29	1
586	25	1622	Y	2017-08-01	\N	2018-01-21	\N	20	1
587	182939	1623	Y	2018-01-21	\N	2018-01-21	\N	23	1
588	203	1626	N	2018-01-18	\N	2018-01-21	\N	5	1
589	176213	1625	N	2018-01-18	\N	2018-01-21	\N	13	1
590	176204	1624	Y	2018-01-18	\N	2018-01-21	\N	13	1
591	184826	1630	Y	2012-10-01	\N	2018-01-22	\N	46	1
592	59	1631	Y	2013-03-06	\N	2018-01-22	\N	49	1
593	95	1631	Y	2009-06-24	\N	2018-01-22	\N	49	1
594	179	1632	N	2016-12-18	\N	2018-01-22	\N	22	1
596	184830	1634	Y	2018-01-17	\N	2018-01-24	\N	21	1
597	200	1633	N	2017-12-19	\N	2018-01-24	\N	29	1
599	168092	1635	N	2018-01-24	\N	2018-01-24	\N	13	1
666	96765	1609	Y	2018-03-29	\N	2018-05-09	\N	2	1
601	167999	1637	N	2018-01-10	\N	2018-01-24	\N	12	1
603	196	1633	N	2017-11-01	\N	2018-01-25	\N	19	1
607	182838	1639	Y	2016-12-18	\N	2018-02-12	\N	22	1
608	110	1615	N	2016-12-18	\N	2018-02-13	\N	29	1
609	184212	1640	Y	2018-02-12	\N	2018-02-13	\N	19	1
610	110	1431	N	2016-12-18	\N	2018-02-14	\N	29	1
611	82980	104	N	2016-12-08	\N	2018-02-18	\N	2	1
612	176275	1650	Y	2018-02-13	\N	2018-02-19	\N	22	1
615	184791	1425	N	2018-02-13	\N	2018-02-19	\N	29	1
617	168140	1652	Y	2018-02-12	\N	2018-02-25	\N	5	1
618	168139	1653	Y	2018-02-12	\N	2018-02-25	\N	5	1
621	160657	1657	Y	2014-03-06	\N	2018-03-11	\N	38	1
623	160006	1658	Y	2014-03-06	\N	2018-03-14	\N	20	1
624	181173	1659	Y	2015-10-20	\N	2018-03-15	\N	19	1
626	184757	1661	Y	2018-03-14	\N	2018-03-15	\N	29	1
627	228	1660	Y	2018-03-14	\N	2018-03-15	\N	29	1
628	42390	885	N	2018-03-19	\N	2018-03-19	\N	39	1
629	92003	660	N	2014-07-22	\N	2018-03-20	\N	23	1
630	101751	662	N	2014-07-22	\N	2018-03-20	\N	23	1
631	163543	1356	Y	2015-02-11	\N	2018-03-20	\N	19	1
632	160003	1663	Y	2015-02-11	\N	2018-03-20	\N	54	1
634	160008	1545	Y	2014-03-06	\N	2018-03-21	\N	19	1
635	163542	1545	Y	2015-02-11	\N	2018-03-21	\N	19	1
636	160004	1664	Y	2014-03-05	\N	2018-03-22	\N	19	1
637	92467	1551	Y	2014-11-04	\N	2018-03-22	\N	20	1
638	181229	1489	Y	2011-07-25	\N	2018-03-22	\N	19	1
641	185665	1666	Y	2018-03-05	\N	2018-03-22	\N	29	1
643	217	1667	Y	2018-02-18	\N	2018-03-25	\N	29	1
644	184775	1667	Y	2018-02-18	\N	2018-03-25	\N	19	1
646	219	1668	Y	2018-02-18	\N	2018-03-25	\N	29	1
647	73524	1545	Y	2008-09-01	\N	2018-03-27	\N	19	1
650	69885	921	N	2018-04-04	\N	2018-04-10	\N	2	1
654	81076	576	N	2018-04-04	\N	2018-04-10	\N	2	1
655	31	1670	N	2007-01-11	\N	2018-04-11	\N	29	1
656	39	1670	N	2011-06-01	\N	2018-04-11	\N	29	1
657	182940	1671	N	2015-12-06	\N	2018-04-11	\N	22	1
658	152216	1625	N	2011-02-01	\N	2018-04-15	\N	13	1
662	216	1672	Y	2018-02-18	\N	2018-04-25	\N	29	1
664	168092	1636	N	2018-04-30	\N	2018-05-09	\N	13	1
665	82751	1610	Y	2018-03-29	\N	2018-05-09	\N	2	1
667	92564	1673	N	2018-05-08	\N	2018-05-27	\N	20	1
668	231	1479	Y	2018-05-21	\N	2018-06-03	\N	19	1
670	155152	1342	Y	2014-04-07	\N	2018-06-04	\N	20	1
671	82893	1673	N	2009-11-01	\N	2018-08-29	\N	48	1
672	68377	1674	N	2009-11-01	\N	2018-08-29	\N	48	1
673	81076	375	N	2018-04-04	\N	2018-08-29	\N	\N	1
674	81076	375	N	2018-04-04	\N	2018-08-29	\N	\N	1
675	81076	375	N	2018-04-04	\N	2018-08-29	\N	104	1
710	254	1510	Y	2018-11-18	\N	2018-11-18	\N	19	1
677	234	1479	N	2018-07-01	\N	2018-09-02	\N	19	1
681	157166	1676	N	2013-09-01	\N	2018-09-19	\N	45	1
678	233	1496	Y	2018-07-03	\N	2018-09-02	\N	19	1
1105	184790	370	Y	2021-09-12	\N	2021-09-20	\N	21	1
776	92781	886	N	2019-07-10	\N	2019-07-15	\N	2	1
682	163695	1677	N	2015-03-18	\N	2018-09-24	\N	13	1
683	172637	1677	Y	2018-09-23	\N	2018-09-24	\N	13	1
684	241	1678	Y	2018-09-20	\N	2018-09-24	\N	21	1
1111	175307	1878	Y	2021-09-01	\N	2021-10-24	\N	22	1
686	243	1535	Y	2018-09-20	\N	2018-09-24	\N	49	1
708	176328	885	Y	2016-12-18	\N	2018-11-13	\N	22	1
1119	187174	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
690	245	1476	Y	2018-09-30	\N	2018-09-30	\N	49	1
691	183522	1352	Y	2018-09-30	\N	2018-09-30	\N	19	1
1120	187107	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
693	98026	654	N	2015-02-11	\N	2018-10-08	\N	23	1
698	247	378	Y	2018-10-07	\N	2018-10-30	\N	34	1
773	184829	1468	Y	2019-07-10	\N	2019-07-15	\N	22	1
696	92564	1682	Y	2018-05-08	\N	2018-10-22	\N	20	1
697	182961	1515	Y	2018-07-25	\N	2018-10-28	\N	19	1
713	193	1687	Y	2018-06-20	\N	2018-12-24	\N	33	1
1121	415	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
701	250	1482	Y	2018-10-23	\N	2018-10-31	\N	19	1
702	182805	1683	Y	2018-09-20	\N	2018-10-31	\N	54	1
705	81468	1684	Y	2018-11-12	\N	2018-11-12	\N	20	1
706	182803	1506	Y	2018-11-11	\N	2018-11-13	\N	19	1
1122	187106	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
709	60705	1685	N	2018-06-25	\N	2018-11-13	\N	22	1
1123	417	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
712	185654	1304	Y	2018-11-18	\N	2018-11-18	\N	19	1
715	182640	1688	Y	2018-12-17	\N	2018-12-27	\N	13	1
716	93820	1686	Y	2016-06-15	\N	2018-12-27	\N	101	1
718	183704	1289	Y	2019-01-09	\N	2019-01-09	\N	19	1
719	169356	1079	Y	2018-12-16	\N	2019-01-09	\N	22	1
721	169355	1689	Y	2018-12-16	\N	2019-01-14	\N	5	1
722	169360	1691	N	2018-12-16	\N	2019-01-14	\N	42	1
723	169358	1692	N	2018-12-16	\N	2019-01-14	\N	12	1
724	260	1474	Y	2018-01-13	\N	2019-01-15	\N	20	1
725	261	1368	Y	2019-01-20	\N	2019-01-27	\N	19	1
727	186368	1437	Y	2019-01-27	\N	2019-01-27	\N	19	1
728	266	1621	N	2019-01-29	\N	2019-01-29	\N	60	1
729	265	1430	N	2019-01-29	\N	2019-01-29	\N	54	1
730	264	1694	N	2019-01-28	\N	2019-02-13	\N	62	1
732	92707	197	N	2019-02-21	\N	2019-02-28	\N	23	1
733	174872	1696	Y	2019-02-12	\N	2019-03-05	\N	61	1
735	174873	1695	Y	2019-02-20	\N	2019-03-05	\N	5	1
736	174849	1698	Y	2019-02-12	\N	2019-03-05	\N	5	1
738	170981	1700	Y	2019-02-20	\N	2019-03-05	\N	13	1
739	170982	1625	N	2019-02-24	\N	2019-03-05	\N	13	1
740	170983	1635	Y	2019-02-24	\N	2019-03-05	\N	13	1
741	274	1336	Y	2019-02-21	\N	2019-03-06	\N	19	1
743	171020	1626	Y	2019-03-10	\N	2019-03-17	\N	5	1
744	83102	1282	Y	2019-03-17	\N	2019-03-18	\N	20	1
745	170984	1702	Y	2019-03-24	\N	2019-03-25	\N	12	1
746	64320	1322	N	2019-03-24	\N	2019-03-25	\N	23	1
748	174851	1583	N	2019-03-18	\N	2019-03-25	\N	12	1
749	174850	1703	Y	2019-03-18	\N	2019-03-25	\N	5	1
750	258	1289	Y	2019-01-02	\N	2019-04-09	\N	19	1
751	257	1341	Y	2018-12-23	\N	2019-04-09	\N	19	1
762	81557	1710	Y	2019-06-16	\N	2019-06-18	\N	21	1
753	160007	1536	Y	2019-02-14	\N	2019-04-10	\N	20	1
754	163681	1705	Y	2019-02-12	\N	2019-04-10	\N	20	1
757	101	1706	N	2019-05-02	\N	2019-05-02	\N	26	1
755	88844	1617	Y	2019-04-14	\N	2019-04-14	\N	100	1
756	185862	1475	Y	2019-04-24	\N	2019-04-29	\N	20	1
758	73621	1707	N	2019-05-06	\N	2019-05-16	\N	53	1
759	165411	1403	Y	2019-05-09	\N	2019-05-16	\N	19	1
760	179124	1709	N	2019-05-26	\N	2019-05-28	\N	39	1
1126	187110	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
764	92710	1712	Y	2019-06-16	\N	2019-06-19	\N	48	2
1127	187096	1882	Y	2021-10-03	\N	2021-11-04	\N	40	1
766	185097	883	Y	2009-12-07	\N	2019-06-23	\N	34	1
767	82893	1674	Y	2019-07-01	\N	2019-07-03	\N	48	1
769	278	1418	Y	2019-04-14	\N	2019-07-09	\N	29	1
770	277	1418	Y	2019-04-14	\N	2019-07-09	\N	30	1
771	69313	1543	Y	2019-05-02	\N	2019-07-10	\N	29	1
772	82468	311	Y	2019-07-10	\N	2019-07-15	\N	2	1
777	165677	885	Y	2019-07-10	\N	2019-07-15	\N	22	1
779	81291	167	Y	2019-05-02	\N	2019-07-15	\N	2	1
1152	183593	1893	Y	2021-04-16	\N	2022-03-31	\N	5	1
784	93043	44	N	2019-07-10	\N	2019-07-15	\N	2	1
785	169360	1715	N	2019-07-10	\N	2019-07-16	\N	64	1
822	82336	1736	N	2019-09-22	\N	2019-09-22	\N	64	1
788	93043	1714	N	2019-07-10	\N	2019-07-16	\N	48	1
1153	183571	1893	Y	2021-04-16	\N	2022-03-31	\N	5	1
791	92781	1719	N	2019-07-10	\N	2019-07-17	\N	2	1
792	64413	748	N	2019-07-10	\N	2019-07-17	\N	52	1
1155	187095	1893	N	2021-11-04	\N	2022-03-31	\N	13	1
797	155103	1722	N	2019-07-10	\N	2019-07-18	\N	48	1
1160	461	1897	Y	2021-11-01	\N	2022-03-31	\N	13	1
1157	186884	1894	Y	2021-12-02	\N	2022-03-31	\N	22	1
801	73587	917	N	2019-07-10	\N	2019-07-21	\N	64	1
1159	187091	1897	Y	2021-10-12	\N	2022-03-31	\N	13	1
1161	187093	1897	Y	2021-11-07	\N	2022-03-31	\N	13	1
806	95816	1727	N	2019-07-10	\N	2019-07-21	\N	65	1
807	73606	377	N	2019-07-10	\N	2019-07-21	\N	7	1
1162	187062	1897	Y	2021-11-14	\N	2022-03-31	\N	13	1
809	203	1729	N	2019-07-10	\N	2019-07-21	\N	5	1
811	82039	1732	N	2019-03-24	\N	2019-07-21	\N	64	1
812	73479	1733	N	2019-03-24	\N	2019-07-21	\N	64	1
813	96419	341	N	2019-08-05	\N	2019-08-05	\N	64	1
814	96419	453	N	2019-08-05	\N	2019-08-05	\N	64	1
815	67951	1419	Y	2019-07-01	\N	2019-08-07	\N	9	1
1163	187097	1897	Y	2021-12-06	\N	2022-03-31	\N	13	1
817	182960	1562	Y	2019-08-07	\N	2019-08-29	\N	20	1
1164	20000	1716	Y	2022-01-01	\N	2022-03-31	\N	64	1
820	97242	1717	N	2019-09-22	\N	2019-09-22	\N	64	1
823	170982	1737	Y	2019-08-20	\N	2019-09-23	\N	13	1
824	184821	1633	Y	2017-12-07	\N	2019-09-29	\N	29	1
1166	469	1566	Y	2023-05-29	\N	2022-03-31	\N	22	1
827	283	1471	Y	2019-11-04	\N	2019-11-05	\N	39	1
829	185004	1537	N	2019-04-22	\N	2019-11-21	\N	19	1
830	81601	355	N	2019-12-03	\N	2019-12-03	\N	7	1
831	92781	1714	Y	2019-12-02	\N	2019-12-04	\N	48	1
835	82980	1736	Y	2019-12-05	\N	2019-12-11	\N	64	1
836	82336	1741	N	2019-12-05	\N	2019-12-11	\N	64	1
837	82162	908	N	2018-03-14	\N	2019-12-17	\N	64	1
839	176333	1709	Y	2019-10-09	\N	2020-01-09	\N	22	1
842	69501	666	Y	2019-12-04	\N	2020-01-14	\N	50	1
845	62180	1419	N	2019-12-10	\N	2020-01-22	\N	9	1
848	95814	1727	Y	2020-01-29	\N	2020-01-29	\N	65	1
849	95816	1746	N	2020-01-29	\N	2020-01-29	\N	64	1
850	155103	1747	N	2020-01-29	\N	2020-01-29	\N	64	1
851	155103	372	Y	2020-01-29	\N	2020-01-30	\N	50	1
852	95816	1746	N	2020-01-29	\N	2020-01-30	\N	64	1
855	163695	1577	N	2020-02-03	\N	2020-02-04	\N	5	1
857	93	1508	N	2020-02-03	\N	2020-02-04	\N	25	1
860	92707	654	Y	2020-01-16	\N	2020-02-10	\N	23	1
861	284	774	N	2020-02-11	\N	2020-02-12	\N	21	1
1329	176358	2019	Y	2023-01-01	\N	2023-01-31	\N	23	1
872	183089	1753	Y	2020-02-19	\N	2020-04-29	\N	21	1
873	96419	1759	N	2019-09-08	\N	2020-04-29	\N	64	1
1031	334	1831	N	2021-01-27	\N	2021-01-27	\N	105	1
1005	101758	918	Y	2020-01-01	\N	2021-01-18	\N	23	1
1169	533	1308	Y	2021-12-01	\N	2022-04-03	\N	19	1
1032	185664	885	Y	2020-12-23	\N	2021-01-27	\N	22	1
1036	65341	1839	Y	2021-01-17	\N	2021-01-31	\N	64	1
974	184809	1471	Y	2020-10-27	\N	2020-11-11	\N	39	1
975	323	512	Y	2020-10-27	\N	2020-11-11	\N	21	1
1068	66371	1854	Y	2021-02-09	\N	2021-05-23	\N	20	1
977	150238	1803	N	2020-11-09	\N	2020-11-11	\N	65	1
1168	522	1899	Y	2021-11-30	\N	2022-04-03	\N	19	1
1049	151843	1675	Y	2021-05-05	\N	2021-05-10	\N	64	1
980	96419	345	Y	2020-11-09	\N	2020-11-11	\N	3	1
1410	186674	1344	Y	2023-01-01	\N	2023-05-29	\N	20	1
1037	182839	1840	Y	2021-01-17	\N	2021-01-31	\N	19	1
983	25836	1808	Y	2020-10-06	\N	2020-11-16	\N	4	1
1170	526	1491	Y	2021-12-08	\N	2022-04-03	\N	19	1
1038	143	1842	Y	2020-12-24	\N	2021-01-31	\N	64	1
1248	183591	1922	Y	2021-04-01	\N	2022-08-14	\N	13	1
1069	92001	1855	Y	2021-02-09	\N	2021-05-23	\N	18	1
1048	95820	1673	Y	2021-04-01	\N	2021-04-15	\N	48	1
1249	183592	1922	Y	2021-04-01	\N	2022-08-14	\N	13	1
1250	183594	1922	Y	2021-04-01	\N	2022-08-14	\N	13	1
1072	151321	941	Y	2015-03-23	\N	2021-05-23	\N	3	1
1171	187090	1892	Y	2021-12-08	\N	2022-04-03	\N	5	1
1275	69962	607	Y	2022-10-04	\N	2022-10-09	\N	3	1
1075	73606	1313	Y	2021-02-03	\N	2021-05-23	\N	18	1
1076	73587	1858	Y	2021-02-03	\N	2021-05-23	\N	17	1
1282	38964	810	Y	2022-10-04	\N	2022-10-09	\N	50	1
1078	91614	1528	Y	2021-01-10	\N	2021-05-23	\N	19	1
1079	165673	1583	N	2020-02-20	\N	2021-05-23	\N	12	1
1087	49536	1868	Y	2021-03-30	\N	2021-06-28	\N	34	1
1422	535	1506	Y	2021-01-01	\N	2023-05-29	\N	19	1
1172	187113	1365	Y	2021-12-14	\N	2022-04-03	\N	19	1
1173	520	1900	Y	2021-12-15	\N	2022-04-03	\N	20	1
1174	187115	1900	Y	2021-12-15	\N	2022-04-03	\N	20	1
1412	379	1834	Y	2023-01-01	\N	2023-05-29	\N	21	1
1176	482	1882	Y	2021-12-20	\N	2022-04-03	\N	40	1
1214	187067	1929	Y	2022-04-01	\N	2022-04-21	\N	108	1
1178	187069	1895	N	2021-12-19	\N	2022-04-03	\N	12	1
1179	187140	1349	Y	2021-12-20	\N	2022-04-03	\N	19	1
1180	187094	1892	Y	2021-12-20	\N	2022-04-03	\N	5	1
1181	345	1479	Y	2021-01-06	\N	2022-04-03	\N	19	1
1197	174851	1920	Y	2022-04-12	\N	2022-04-12	\N	64	1
1183	377	1283	Y	2021-06-15	\N	2022-04-03	\N	20	1
1184	378	1282	Y	2021-06-15	\N	2022-04-03	\N	20	1
1185	385	1902	Y	2021-07-01	\N	2022-04-03	\N	42	1
1186	404	1307	Y	2021-07-13	\N	2022-04-03	\N	19	1
1189	456	1479	Y	2021-09-19	\N	2022-04-03	\N	19	1
1187	401	1902	Y	2021-08-01	\N	2022-04-03	\N	42	1
1188	403	1282	Y	2021-09-05	\N	2022-04-03	\N	20	1
1190	466	1912	Y	2021-10-03	\N	2022-04-03	\N	29	1
1191	519	1283	Y	2021-10-10	\N	2022-04-03	\N	20	1
1192	493	1902	Y	2021-12-23	\N	2022-04-03	\N	42	1
1193	494	1913	Y	2021-11-14	\N	2022-04-03	\N	22	1
1207	80123	1928	Y	2022-04-01	\N	2022-04-21	\N	64	1
1196	167999	1916	Y	2022-04-12	\N	2022-04-12	\N	64	1
1198	176205	1917	Y	2022-04-12	\N	2022-04-12	\N	64	1
1199	174856	1919	Y	2022-04-12	\N	2022-04-12	\N	64	1
1200	165673	1921	Y	2022-04-12	\N	2022-04-12	\N	64	1
1201	434	1922	Y	2022-01-01	\N	2022-04-17	\N	13	1
1202	30000	1923	Y	2022-01-01	\N	2022-04-18	\N	64	1
1206	60705	1925	Y	2022-04-01	\N	2022-04-21	\N	22	1
1208	181207	1926	Y	2022-04-01	\N	2022-04-21	\N	19	1
1209	141	1926	Y	2022-04-01	\N	2022-04-21	\N	19	1
1210	444	1926	Y	2022-04-01	\N	2022-04-21	\N	19	1
1211	479	1927	Y	2022-04-01	\N	2022-04-21	\N	20	1
1212	439	1927	Y	2022-04-01	\N	2022-04-21	\N	20	1
1213	186918	1924	Y	2022-04-01	\N	2022-04-21	\N	22	1
1215	186888	1930	Y	2022-04-01	\N	2022-04-21	\N	12	1
1411	613	1480	Y	2023-01-01	\N	2023-05-29	\N	40	1
1217	185065	1932	Y	2022-04-01	\N	2022-04-21	\N	12	1
1218	184816	1932	Y	2022-04-01	\N	2022-04-21	\N	12	1
1219	187045	1933	Y	2022-04-01	\N	2022-04-21	\N	13	1
1251	185861	1940	Y	2022-06-30	\N	2022-08-14	\N	21	1
1221	292	1895	Y	2022-04-01	\N	2022-04-21	\N	12	1
1222	187065	1895	Y	2022-04-01	\N	2022-04-21	\N	12	1
1224	73619	621	Y	2009-11-01	\N	2022-05-16	\N	3	1
1225	80897	1780	Y	2022-01-01	\N	2022-05-16	\N	64	1
1256	185719	1943	Y	2021-02-15	\N	2022-09-22	\N	20	1
1257	348	1943	Y	2021-02-03	\N	2022-09-22	\N	20	1
1258	350	1321	Y	2022-02-04	\N	2022-09-22	\N	20	1
1302	151403	1961	Y	2023-01-01	\N	2023-01-12	\N	50	1
1304	73553	925	N	2023-01-01	\N	2023-01-12	\N	50	1
1280	84514	1180	Y	2022-10-04	\N	2022-10-09	\N	22	1
1303	81076	921	Y	2023-01-01	\N	2023-01-12	\N	50	1
1283	155150	1095	Y	2022-10-01	\N	2022-10-09	\N	3	1
1284	570	1952	Y	2022-08-24	\N	2022-10-12	\N	60	1
1288	577	1613	Y	2022-08-22	\N	2022-10-13	\N	19	1
1289	574	1550	Y	2022-09-15	\N	2022-10-13	\N	19	1
1290	234	1479	Y	2022-10-16	\N	2022-10-24	\N	19	1
1291	176206	1953	Y	2022-10-23	\N	2022-10-24	\N	22	1
1305	73489	925	Y	2023-01-01	\N	2023-01-12	\N	50	1
1306	186372	1765	Y	2022-01-01	\N	2023-01-12	\N	64	1
1307	82633	1963	Y	2023-01-01	\N	2023-01-12	\N	2	1
1319	383	1967	Y	2023-01-25	\N	2023-01-25	\N	22	1
1309	81464	1791	Y	2023-01-01	\N	2023-01-12	\N	64	1
1310	186920	1875	Y	2023-01-01	\N	2023-01-12	\N	12	1
1312	64694	893	Y	2022-01-01	\N	2023-01-18	\N	50	1
1321	515	1934	Y	2023-01-26	\N	2023-01-26	\N	22	1
1413	600	1897	Y	2023-01-01	\N	2023-05-29	\N	13	1
1323	98026	2017	Y	2023-01-01	\N	2023-01-31	\N	50	1
1324	62119	1997	Y	2023-01-01	\N	2023-01-31	\N	50	1
1414	607	2059	Y	2023-01-01	\N	2023-05-29	\N	23	1
1326	101751	2015	Y	2023-01-01	\N	2023-01-31	\N	3	1
1327	151842	2003	Y	2023-01-01	\N	2023-01-31	\N	64	1
1328	169360	2018	Y	2023-01-01	\N	2023-01-31	\N	48	1
1331	185709	1996	Y	2023-01-01	\N	2023-01-31	\N	23	1
1332	174871	2023	Y	2023-01-01	\N	2023-01-31	\N	42	1
1333	186396	2023	Y	2023-01-01	\N	2023-01-31	\N	42	1
1415	398	745	Y	2021-01-01	\N	2023-05-29	\N	34	1
1416	186622	1897	Y	2023-01-01	\N	2023-05-29	\N	13	1
1417	514	1320	Y	2021-01-01	\N	2023-05-29	\N	19	1
1418	186383	2060	Y	2023-01-01	\N	2023-05-29	\N	23	1
1419	69411	1323	Y	2020-01-01	\N	2023-05-29	\N	50	1
1420	155097	1853	Y	2020-01-01	\N	2023-05-29	\N	20	1
1421	186394	2061	Y	2023-01-01	\N	2023-05-29	\N	23	1
1423	537	1499	Y	2020-01-01	\N	2023-05-29	\N	19	1
1424	186708	1350	Y	2023-01-01	\N	2023-05-29	\N	20	1
1425	181740	1897	Y	2023-01-01	\N	2023-05-29	\N	13	1
1426	186713	1373	Y	2023-01-01	\N	2023-05-29	\N	20	1
1427	186710	1350	Y	2023-01-01	\N	2023-05-29	\N	20	1
1441	186919	1897	Y	2023-05-28	\N	2023-06-21	\N	13	1
1442	186921	1875	Y	2023-05-28	\N	2023-06-21	\N	12	1
1443	186371	1408	Y	2023-04-02	\N	2023-06-21	\N	20	1
1444	186377	1519	Y	2023-04-02	\N	2023-06-21	\N	20	1
1445	186595	2069	Y	2023-04-25	\N	2023-06-21	\N	22	1
1446	186686	1897	Y	2023-04-27	\N	2023-06-21	\N	13	1
953	73424	1298	Y	2020-10-18	\N	2020-10-19	\N	18	1
954	69492	1786	Y	2020-02-01	\N	2020-10-19	\N	64	1
955	64914	1788	Y	2020-10-18	\N	2020-10-19	\N	64	1
987	174875	1811	Y	2020-11-03	\N	2020-11-26	\N	22	1
1082	176213	1863	Y	2027-12-17	\N	2021-05-25	\N	13	1
991	321	1816	Y	2020-10-27	\N	2020-12-03	\N	19	1
1434	391	2066	Y	2021-08-18	\N	2023-06-19	\N	19	1
1081	162294	1862	Y	2021-05-23	\N	2021-05-25	\N	22	1
1435	428	2067	Y	2021-09-26	\N	2023-06-19	\N	21	1
1255	505	1942	Y	2022-11-01	\N	2022-09-18	\N	12	1
1226	165678	90	Y	2022-05-01	\N	2022-05-16	\N	7	1
1436	443	1549	Y	2021-09-05	\N	2023-06-19	\N	19	1
1262	185005	1374	Y	2022-02-09	\N	2022-09-25	\N	20	1
1263	353	1375	Y	2021-02-09	\N	2022-09-25	\N	20	1
1264	186915	1949	Y	2022-11-30	\N	2022-09-25	\N	22	1
1265	184833	1621	Y	2022-04-21	\N	2022-09-25	\N	60	1
1437	452	1365	Y	2021-09-08	\N	2023-06-19	\N	19	1
1267	185783	1658	Y	2021-04-21	\N	2022-09-25	\N	20	1
1268	374	1908	Y	2021-06-24	\N	2022-09-25	\N	42	1
1269	186367	1908	Y	2021-07-18	\N	2022-09-25	\N	42	1
1270	386	1907	Y	2021-07-06	\N	2022-09-25	\N	42	1
1285	571	1618	Y	2022-08-28	\N	2022-10-13	\N	19	1
1286	572	1479	Y	2022-08-28	\N	2022-10-13	\N	19	1
1287	573	1883	Y	2022-09-06	\N	2022-10-13	\N	23	1
1300	163470	1959	Y	2022-07-01	\N	2023-01-04	\N	50	1
1341	499	1909	Y	2023-02-15	\N	2023-02-15	\N	42	1
1342	411	2026	N	2023-02-15	\N	2023-02-15	\N	42	1
1343	390	1888	Y	2022-11-07	\N	2023-02-15	\N	42	1
1348	166761	453	Y	2023-01-01	\N	2023-03-26	\N	50	1
1349	95827	473	Y	2023-01-01	\N	2023-03-26	\N	50	1
1438	460	1904	Y	2021-07-11	\N	2023-06-19	\N	42	1
1439	187044	1895	Y	2023-05-29	\N	2023-06-21	\N	12	1
1440	187047	2068	Y	2023-05-30	\N	2023-06-21	\N	22	1
1084	169958	1865	Y	2021-04-15	\N	2021-06-06	\N	107	1
902	185004	1400	Y	2019-05-09	\N	2020-07-15	\N	19	1
906	63169	744	Y	2020-05-06	\N	2020-08-17	\N	52	1
1060	101755	1741	Y	2021-05-09	\N	2021-05-20	\N	64	1
1145	96304	1890	Y	2021-11-11	\N	2022-03-01	\N	50	1
909	80122	1724	Y	2020-08-17	\N	2020-08-18	\N	64	1
1334	183087	1589	Y	2022-09-04	\N	2023-02-05	\N	23	1
1029	184828	1834	Y	2021-01-24	\N	2021-01-24	\N	21	1
915	315	1761	N	2020-08-18	\N	2020-08-19	\N	21	1
959	48362	548	Y	2020-08-16	\N	2020-11-05	\N	64	1
1337	182802	1996	Y	2023-01-01	\N	2023-02-12	\N	23	1
1104	400	1872	Y	2021-09-12	\N	2021-09-12	\N	22	1
903	95828	874	Y	2020-06-09	\N	2020-07-21	\N	44	1
1336	82828	911	Y	2023-01-01	\N	2023-02-09	\N	50	1
962	65301	1334	Y	2020-10-26	\N	2020-11-05	\N	18	1
963	69885	1333	Y	2020-10-26	\N	2020-11-05	\N	17	1
1338	184807	2024	Y	2023-01-01	\N	2023-02-12	\N	5	1
1361	185718	2035	Y	2023-01-01	\N	2023-05-10	\N	22	1
966	80151	816	Y	2020-10-28	\N	2020-11-05	\N	7	1
1106	176208	1875	Y	2021-05-25	\N	2021-09-21	\N	12	1
1134	185667	1884	N	2021-08-01	\N	2021-12-02	\N	21	1
992	43714	1814	Y	2020-12-01	\N	2020-12-06	\N	50	1
993	69962	1776	N	2020-11-18	\N	2020-12-06	\N	64	1
1387	486	2051	Y	2022-01-01	\N	2023-05-28	\N	62	1
1386	187040	2050	Y	2022-01-01	\N	2023-05-28	\N	37	1
1254	176435	1934	Y	2021-11-02	\N	2022-09-05	\N	22	1
998	95816	1820	N	2020-12-01	\N	2020-12-07	\N	64	1
1138	234	1886	N	2021-12-20	\N	2022-02-07	\N	20	1
1043	82336	1846	Y	2021-03-25	\N	2021-03-28	\N	48	1
1245	160002	1856	Y	2022-01-01	\N	2022-07-17	\N	64	1
1253	95815	803	Y	2022-01-01	\N	2022-09-05	\N	50	1
1388	187021	2051	Y	2022-01-01	\N	2023-05-28	\N	62	1
1389	182801	1893	Y	2021-01-01	\N	2023-05-28	\N	5	1
1390	485	1893	N	2021-01-01	\N	2023-05-28	\N	5	1
1391	169358	1895	Y	2020-01-01	\N	2023-05-28	\N	12	1
1392	543	939	Y	2023-01-01	\N	2023-05-28	\N	22	1
1393	186675	1898	Y	2023-01-01	\N	2023-05-28	\N	22	1
1394	186615	2052	Y	2023-01-01	\N	2023-05-28	\N	13	1
1395	562	2051	Y	2022-01-01	\N	2023-05-28	\N	62	1
1396	186886	2053	Y	2022-01-01	\N	2023-05-28	\N	42	1
1397	186917	2053	Y	2022-01-01	\N	2023-05-28	\N	42	1
1398	580	1633	Y	2022-01-01	\N	2023-05-28	\N	29	1
1399	186385	2054	Y	2023-01-01	\N	2023-05-28	\N	13	1
1400	186625	1677	Y	2023-01-01	\N	2023-05-28	\N	13	1
1401	187016	2055	Y	2022-01-01	\N	2023-05-28	\N	23	1
1402	186916	2055	Y	2022-01-01	\N	2023-05-28	\N	23	1
1403	186339	1875	Y	2023-01-01	\N	2023-05-28	\N	12	1
1404	532	2027	Y	2022-01-01	\N	2023-05-28	\N	24	1
1405	186593	1892	Y	2023-01-01	\N	2023-05-28	\N	5	1
1406	186685	2054	Y	2023-01-01	\N	2023-05-28	\N	13	1
1428	186731	1939	Y	2023-05-11	\N	2023-05-31	\N	20	1
1430	167886	2051	Y	2023-04-04	\N	2023-06-15	\N	62	1
1431	186545	1536	Y	2022-04-13	\N	2023-06-15	\N	20	1
864	170712	889	Y	2020-10-29	\N	2020-03-11	\N	32	1
865	29230	1754	N	2019-09-11	\N	2020-03-12	\N	51	1
919	185663	359	Y	2020-09-08	\N	2020-09-09	\N	21	1
1234	429	1761	Y	2021-09-01	\N	2022-07-03	\N	33	1
1094	150238	341	Y	2021-07-18	\N	2021-08-22	\N	50	1
1092	167865	1872	Y	2021-08-12	\N	2021-08-22	\N	22	1
1095	163695	534	Y	2021-06-28	\N	2021-08-23	\N	50	1
1096	166759	907	N	2021-06-29	\N	2021-08-23	\N	50	1
1301	64413	748	Y	2023-01-01	\N	2023-01-08	\N	8	1
1098	152217	298	Y	2021-06-22	\N	2021-08-23	\N	50	1
1099	153432	328	Y	2021-05-23	\N	2021-08-23	\N	50	1
1101	69314	919	N	2021-06-29	\N	2021-08-23	\N	50	1
1102	165678	886	N	2021-07-28	\N	2021-08-23	\N	50	1
1112	93043	822	Y	2021-09-15	\N	2021-10-26	\N	50	1
1113	73588	1879	Y	2021-09-15	\N	2021-10-26	\N	50	1
1114	406	1423	Y	2021-09-21	\N	2021-10-26	\N	21	1
1115	435	1880	Y	2021-10-03	\N	2021-10-26	\N	21	1
1116	185788	1814	Y	2021-09-15	\N	2021-10-26	\N	21	1
1233	430	885	Y	2022-09-01	\N	2022-07-03	\N	22	1
882	293	1651	Y	2020-03-02	\N	2020-06-04	\N	29	1
877	68377	423	Y	2020-05-06	\N	2020-06-03	\N	50	1
918	316	1309	Y	2020-08-20	\N	2020-09-03	\N	19	1
879	184790	1087	N	2019-11-01	\N	2020-06-03	\N	21	1
880	81601	1760	N	2020-06-01	\N	2020-06-04	\N	48	1
1001	69489	1732	N	2020-12-20	\N	2020-12-29	\N	64	1
1230	186779	1936	Y	2022-04-22	\N	2022-05-18	\N	109	1
1144	186366	1888	Y	2021-10-28	\N	2022-02-24	\N	42	1
886	303	1506	Y	2020-04-30	\N	2020-06-04	\N	19	1
1407	184791	2056	Y	2023-01-01	\N	2023-05-28	\N	58	1
1229	95816	1935	Y	2021-10-26	\N	2022-05-18	\N	64	1
889	183711	1309	Y	2020-04-30	\N	2020-06-04	\N	19	1
1063	320	1613	Y	2021-04-12	\N	2021-05-20	\N	19	1
892	182811	1513	Y	2020-04-30	\N	2020-06-04	\N	19	1
893	301	1475	Y	2020-05-06	\N	2020-06-04	\N	20	1
1033	152471	1835	Y	2020-12-13	\N	2021-01-28	\N	106	1
1344	438	2027	Y	2021-11-10	\N	2023-02-16	\N	24	1
1345	440	1927	Y	2021-09-05	\N	2023-02-16	\N	20	1
921	64320	1319	Y	2020-09-16	\N	2020-09-21	\N	16	1
922	64913	1322	Y	2020-09-16	\N	2020-09-21	\N	16	1
925	165676	660	N	2020-09-23	\N	2020-09-29	\N	52	1
926	81267	1725	Y	2020-09-23	\N	2020-09-29	\N	64	1
1247	546	1939	Y	2022-04-01	\N	2022-08-09	\N	20	1
1276	565	1501	Y	2022-08-01	\N	2022-10-09	\N	29	1
937	81464	1728	N	2020-09-23	\N	2020-10-04	\N	65	1
1277	529	1501	Y	2022-02-01	\N	2022-10-09	\N	29	1
939	165676	1772	Y	2020-09-23	\N	2020-10-04	\N	52	1
940	69962	1781	N	2020-09-23	\N	2020-10-04	\N	3	1
941	185711	1782	N	2020-09-23	\N	2020-10-04	\N	20	1
944	185017	1428	Y	2020-10-01	\N	2020-10-07	\N	29	1
1278	556	1501	Y	2022-06-01	\N	2022-10-09	\N	29	1
1061	80162	1419	Y	2021-04-27	\N	2021-05-20	\N	9	1
948	97	1462	N	2020-10-01	\N	2020-10-07	\N	29	1
1279	394	1614	Y	2021-08-01	\N	2022-10-09	\N	29	1
950	172358	40	Y	2020-09-06	\N	2020-10-08	\N	50	1
951	91627	1638	Y	2020-10-07	\N	2020-10-12	\N	20	1
952	163539	1774	Y	2020-10-07	\N	2020-10-12	\N	64	1
1002	82162	910	Y	2020-12-20	\N	2020-12-29	\N	51	1
1004	318	1536	Y	2020-01-01	\N	2021-01-18	\N	20	1
1293	81637	915	Y	2022-10-30	\N	2022-11-03	\N	2	1
1346	441	1408	Y	2021-10-18	\N	2023-02-16	\N	20	1
1066	176207	1442	Y	2021-03-24	\N	2021-05-20	\N	5	1
1360	185667	2034	Y	2023-01-01	\N	2023-05-09	\N	22	1
866	25836	1464	N	2019-09-11	\N	2020-03-12	\N	21	1
1046	91752	1706	Y	2021-01-24	\N	2021-04-04	\N	104	1
1108	166759	1728	Y	2020-09-20	\N	2021-09-29	\N	65	1
869	64327	1756	Y	2020-02-04	\N	2020-03-17	\N	64	1
870	96236	1758	Y	2019-07-10	\N	2020-03-17	\N	48	1
1109	185711	1782	N	2021-09-20	\N	2021-09-29	\N	64	1
1045	65342	1845	Y	2019-07-15	\N	2021-04-04	\N	52	1
942	80898	1783	Y	2019-09-12	\N	2020-10-05	\N	51	1
1350	152210	360	Y	2023-01-01	\N	2023-03-30	\N	50	1
1260	151841	1946	Y	2022-09-25	\N	2022-09-25	\N	64	1
1339	62180	1002	Y	2023-01-01	\N	2023-02-13	\N	53	1
1296	380	776	Y	2022-10-01	\N	2022-11-17	\N	26	1
1298	96205	1956	Y	2019-01-01	\N	2022-12-22	\N	2	1
1351	186259	1653	Y	2023-03-21	\N	2023-04-03	\N	5	1
1320	408	1873	Y	2023-01-26	\N	2023-01-26	\N	22	1
1352	186258	2030	Y	2023-03-12	\N	2023-04-03	\N	12	1
1353	186256	1702	Y	2023-03-21	\N	2023-04-03	\N	12	1
1354	186260	1931	Y	2023-03-21	\N	2023-04-03	\N	12	1
1355	186255	1718	Y	2023-03-21	\N	2023-04-03	\N	12	1
1362	165675	2039	Y	2023-05-16	\N	2023-05-21	\N	64	1
1363	157166	2040	Y	2023-05-16	\N	2023-05-21	\N	64	1
1364	182940	1811	Y	2023-05-16	\N	2023-05-21	\N	22	1
1365	176215	928	Y	2023-05-16	\N	2023-05-21	\N	51	1
1366	73553	923	Y	2023-05-16	\N	2023-05-21	\N	50	1
1367	69314	927	Y	2023-05-16	\N	2023-05-21	\N	50	1
1368	69310	1262	Y	2023-05-16	\N	2023-05-21	\N	3	1
1369	182919	2041	Y	2023-05-16	\N	2023-05-21	\N	23	1
1370	185019	2042	Y	2023-05-16	\N	2023-05-21	\N	29	1
1371	442	1542	Y	2023-05-16	\N	2023-05-21	\N	22	1
1372	186586	2044	Y	2023-05-16	\N	2023-05-21	\N	20	1
1373	182804	2045	Y	2023-05-16	\N	2023-05-21	\N	23	1
1374	185661	2046	Y	2023-05-16	\N	2023-05-21	\N	23	1
1375	186378	2046	Y	2023-05-16	\N	2023-05-21	\N	23	1
1376	179124	2047	Y	2023-05-16	\N	2023-05-21	\N	20	1
1377	590	2048	Y	2023-05-16	\N	2023-05-21	\N	21	1
1378	591	2048	Y	2023-01-01	\N	2023-05-21	\N	21	1
1379	163679	1554	Y	2023-05-16	\N	2023-05-21	\N	22	1
1380	165674	1883	Y	2023-05-16	\N	2023-05-21	\N	23	1
1381	91801	181	Y	2023-05-16	\N	2023-05-21	\N	3	1
1382	184819	1875	Y	2023-01-01	\N	2023-05-21	\N	12	1
1383	186395	1875	Y	2023-01-01	\N	2023-05-21	\N	12	1
1384	186375	1875	Y	2023-01-01	\N	2023-05-21	\N	12	1
1385	185049	2049	Y	2023-01-01	\N	2023-05-25	\N	21	1
899	183086	1317	Y	2010-07-14	\N	2020-06-25	\N	19	1
1232	67798	1809	Y	2020-10-28	\N	2022-05-31	\N	64	1
1311	73553	923	N	2023-01-01	\N	2023-01-15	\N	50	1
923	81601	30	Y	2020-09-22	\N	2020-09-23	\N	50	1
924	167117	1626	Y	2019-12-31	\N	2020-09-27	\N	5	1
929	317	1753	N	2020-09-30	\N	2020-10-01	\N	21	1
930	91627	1371	N	2020-01-22	\N	2020-10-01	\N	50	1
931	69757	1773	Y	2020-01-22	\N	2020-10-01	\N	21	1
1053	185860	1849	Y	2021-04-29	\N	2021-05-19	\N	39	1
933	184827	1775	Y	2020-09-23	\N	2020-10-01	\N	64	1
934	97611	1726	Y	2020-09-23	\N	2020-10-01	\N	64	1
1051	72934	1848	Y	2021-03-30	\N	2021-05-19	\N	14	1
936	205220	1779	Y	2020-09-23	\N	2020-10-01	\N	52	1
1052	185666	1825	Y	2021-04-29	\N	2021-05-19	\N	39	1
1054	184831	1462	Y	2021-04-12	\N	2021-05-19	\N	29	1
1055	355	1633	Y	2021-04-15	\N	2021-05-19	\N	29	1
1356	187069	1895	Y	2022-12-04	\N	2023-04-06	\N	12	1
1057	67958	813	Y	2021-04-27	\N	2021-05-19	\N	50	1
1236	185711	1781	Y	2022-06-30	\N	2022-07-13	\N	3	1
1059	91802	1851	Y	2021-04-27	\N	2021-05-19	\N	50	1
1083	185708	1789	Y	2020-12-08	\N	2021-06-06	\N	20	1
1357	186547	2033	Y	2023-04-12	\N	2023-05-07	\N	13	1
1130	44319	162	N	2021-05-17	\N	2021-11-08	\N	50	1
1131	96418	1608	Y	2021-06-17	\N	2021-11-08	\N	50	1
1358	176217	1723	Y	2023-01-01	\N	2023-05-08	\N	64	1
1140	155095	795	Y	2022-02-01	\N	2022-02-21	\N	64	1
1141	497	1887	Y	2022-02-09	\N	2022-02-22	\N	29	1
1429	85648	2062	Y	2023-06-11	\N	2023-06-11	\N	110	1
1203	100689	1715	Y	2022-04-18	\N	2022-04-20	\N	64	1
1205	167034	1918	Y	2022-04-12	\N	2022-04-20	\N	64	1
1244	69502	1938	N	2022-06-30	\N	2022-07-13	\N	64	1
1246	93041	379	Y	2022-07-17	\N	2022-08-08	\N	50	1
\.


--
-- TOC entry 3928 (class 0 OID 49302)
-- Dependencies: 257
-- Data for Name: att_org_items; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.att_org_items (item_type, item_id, item_a_name, item_l_name, item_desc, user_no, time_stamp, temp) FROM stdin;
4	11	المركز الوطني للابداع التكنولوجي والابتكار	\N	\N	\N	2018-07-17	\N
5	86	مكتب التبادل البريدي/ اريحا	\N	\N	\N	2018-02-19	\N
6	23	قسم التدقيق الداخلي	\N	\N	\N	2016-03-22	\N
6	24	قسم الأرشيف	\N	\N	\N	2016-03-22	\N
6	25	قسم التحويلات البريدية	\N	\N	\N	2016-03-22	\N
6	26	قسم التخطيط	\N	تابع -دائرة التخطيط والاستشارة	\N	2016-03-22	\N
6	27	قسم الاستشارة	\N	تابع -دائرة التخطيط والاستشارة	\N	2016-03-22	\N
7	105	شعبة خدمات بحرية وجوية	\N	\N	\N	2016-03-27	\N
7	106	شعبة خدمات ارضية وفضائية متنقلة	\N	\N	\N	2016-03-27	\N
7	107	شعبة GSM	\N	\N	\N	2016-03-27	\N
7	108	شعبة UMTS	\N	\N	\N	2016-03-27	\N
7	109	شعبة خدمات ارضية ثابتة	\N	\N	\N	2016-03-27	\N
7	110	شعبة خدمات فضائية ثابتة	\N	\N	\N	2016-03-27	\N
7	111	شعبة التنفيذ	\N	\N	\N	2016-03-27	\N
7	112	شعبة المراقبة المتنقلة	\N	\N	\N	2016-03-27	\N
7	113	شعبة التفتيش	\N	\N	\N	2016-03-27	\N
7	114	شعبة المراقبة الثابتة	\N	\N	\N	2016-03-27	\N
7	115	شعبة قسم الجدول الوطني	\N	\N	\N	2016-03-27	\N
7	116	شعبة قسم السجل الوطني	\N	\N	\N	2016-03-27	\N
7	117	شعبة قسم التنسيق الوطني	\N	\N	\N	2016-03-27	\N
7	118	شعبة قسم التنسيق الدولي	\N	\N	\N	2016-03-27	\N
7	119	شعبة قسم الارسال الاذاعي الارضي	\N	\N	\N	2016-03-27	\N
7	120	شعبة قسم الارسال الاذاعي الفضائي	\N	\N	\N	2016-03-27	\N
7	121	شعبة قسم الارسال التلفزي الارضي	\N	\N	\N	2016-03-27	\N
7	122	شعبة قسم الارسال التلفزي الفضائي	\N	\N	\N	2016-03-27	\N
7	123	شعبة قسم الخدمات اللاسلكية الأرضية	\N	\N	\N	2016-03-27	\N
9	6	مساعد رئيس شعبة	\N	\N	\N	2016-03-09	\N
6	42	قسم التخطيط	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	43	قسم المشاريع والدراسات	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	44	قسم الاحصاء والمسوحات	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	45	قسم التنسيق والمتابعة	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	46	قسم البحوث	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	47	قسم التدريب	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	48	قسم الاحتياجات التدريبية	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	49	قسم المتابعة والتنسيق	\N	تابع - الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
6	50	قسم السياسات والاستراتيجيات الوطنية	\N	\N	\N	2016-03-23	\N
6	51	قسم ادارة المشاريع	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	52	قسم التنسيق والمتابعة	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	53	قسم المواصفات والمقاييس	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	54	قسم الرقابة والمتابعة	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	55	قسم البحث والتطوير	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	56	قسم الدعم والاستشارة	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	57	قسم القوانين والتشريعات الالكترونية	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	58	قسم حماية الملكية الفكرية	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	59	قسم المسوح والاحصاء والتقييم	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	60	قسم الشراكات الاستراتيجية	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	61	قسم الحاضنات وصناعة البرمجيات	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	62	قسم مراكز التميز	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	63	قسم التخطيط وتحليل النظم	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	64	قسم البرمجة وادارة قواعد البيانات	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	65	قسم التصميم	\N	تابع- الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	58	شعبة تحليل البيانات	\N	\N	\N	2016-03-23	\N
7	59	شعبة البحث الميداني	\N	\N	\N	2016-03-23	\N
7	60	شعبة التنسيق	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	61	شعبة المتابعة	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	62	شعبة البحوث	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	63	شعبة الدراسات	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	64	شعبة تدريب البريد	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	65	شعبة تدريب الاتصالات	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	66	شعبة التدريب الاداري والمالي	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	67	شعبة المسوحات التدريبية	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	68	شعبة تطوير المواد التدريبية	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	69	شعبة البحث الفني	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	70	شعبة البحث الاقتصادي	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	71	شعبة المشاريع	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	72	شعبة الدراسات	\N	تابع الادارة العامة للتخطيط والتنمية	\N	2016-03-23	\N
7	73	شعبة السياسات	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	74	شعبة الاستراتيجيات	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	75	شعبة المشاريع التطويرية	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	76	شعبة المشاريع الاستراتيجية	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	77	شعبة التنسيق	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	78	شعبة المتابعة	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	79	شعبة المواصفات	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	80	شعبة المقاييس	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	81	شعبة الرقابة	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	82	شعبة المتابعة	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	83	شعبة التطوير	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	84	شعبة البحث	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	85	شعبة الدعم	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	86	شعبة الاستشارة	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	87	شعبة القوانين الالكترونية	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	88	شعبة المعاملات الالكترونية	\N	تابع الادارة العامة للحكومة الالكترونيةشعبة	\N	2016-03-23	\N
7	89	شعبة قوانين الملكية الفكرية	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	90	شعبة براءة الاختراع والنشر الالكتروني	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	91	شعبة الاحصاء	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	92	شعبة التقييم	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	93	شعبة العلاقات الدولية	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	94	شعبة العلاقات المؤسسية	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	95	شعبة الحاضنات	\N	\N	\N	2016-03-23	\N
7	96	شعبة البرمجيات	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	97	شعبة التنسيق	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	98	شعبة الترويج	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	99	شعبة التخطيط	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	100	شعبة تحليل النظم	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	101	شعبة البرمجة	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	102	شعبة قواعد البيانات	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	103	شعبة الوسائط المتعددة	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
7	104	شعبة المونتاج	\N	تابع الادارة العامة للحكومة الالكترونية	\N	2016-03-23	\N
6	66	قسم الخدملات الراديوية المتنقلة	\N	\N	\N	2016-03-27	\N
6	67	قسم GSM+ UMTS	\N	\N	\N	2016-03-27	\N
6	68	قسم الخدمات الراديوية الثابتة	\N	\N	\N	2016-03-27	\N
6	69	قسم البحث	\N	\N	\N	2016-03-27	\N
6	70	قسم المراقبة	\N	\N	\N	2016-03-27	\N
6	71	قسم الجدول الوطني	\N	\N	\N	2016-03-27	\N
6	72	قسم السجل الوطني	\N	\N	\N	2016-03-27	\N
6	73	 قسم التنسيق الوطني	\N	\N	\N	2016-03-27	\N
6	74	قسم التنسيق الدولي	\N	\N	\N	2016-03-27	\N
6	75	قسم الإرسال الاذاعي الأرضي	\N	\N	\N	2016-03-27	\N
6	76	قسم الارسال الاذاعي الفضائي	\N	\N	\N	2016-03-27	\N
6	77	قسم الارسال التلفزي الأرضي	\N	\N	\N	2016-03-27	\N
6	78	قسم الارسال التلفزي الفضائي	\N	\N	\N	2016-03-27	\N
6	79	قسم الخدمات اللاسلكية الارضية	\N	\N	\N	2016-03-27	\N
6	80	قسم الخدمات اللاسلكية الهوائية	\N	\N	\N	2016-03-27	\N
6	81	قسم نظم الأجهزة	\N	\N	\N	2016-03-27	\N
6	82	قسم نظم الهوائيات	\N	\N	\N	2016-03-27	\N
6	32	قسم خدمات الجمهور	\N	\N	\N	2016-03-22	\N
6	33	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-22	\N
6	34	قسم دراسة السوق	\N	\N	\N	2016-03-22	\N
6	35	قسم الاحصاء	\N	\N	\N	2016-03-22	\N
6	36	قسم العقود	\N	\N	\N	2016-03-22	\N
6	37	قسم الشكاوي والمتابعة	\N	\N	\N	2016-03-22	\N
6	38	قسم البث المرئي	\N	\N	\N	2016-03-22	\N
6	39	قسم البث المسموع	\N	\N	\N	2016-03-22	\N
6	40	قسم المواصفات	\N	\N	\N	2016-03-22	\N
6	41	قسم المقاييس	\N	\N	\N	2016-03-22	\N
7	124	شعبة قسم الخدمات اللاسلكية الهوائية	\N	\N	\N	2016-03-27	\N
10	17	بدون	\N	\N	\N	2016-03-09	\N
6	5	قسم المتابعة والتعقيب	\N	\N	\N	2016-03-09	\N
6	6	قسم الوظائف	\N	\N	\N	2016-03-09	\N
6	7	قسم الدوام والاجازات	\N	\N	\N	2016-03-09	\N
9	15	مبرمج جامعي	\N	\N	\N	2016-03-20	\N
9	17	مدير بريد فئة ب	\N	\N	\N	2016-03-27	\N
9	18	مدير بريد فئة ج	\N	\N	\N	2016-03-27	\N
9	19	موزع بريد	\N	\N	\N	2016-03-27	\N
9	20	مسؤول شباك بريد	\N	\N	\N	2016-03-27	\N
9	21	مساعد اداري	\N	\N	\N	2016-03-27	\N
9	22	موظف اداري	\N	\N	\N	2016-03-27	\N
9	23	محاسب	\N	\N	\N	2016-03-27	\N
9	24	موظف حاسوب	\N	\N	\N	2016-03-27	\N
9	25	موظف فرز	\N	\N	\N	2016-03-27	\N
9	26	موظف صيانه	\N	\N	\N	2016-03-27	\N
9	27	مامور تسهيلات	\N	\N	\N	2016-03-27	\N
9	28	اداري	\N	\N	\N	2016-03-27	\N
9	29	سائق	\N	\N	\N	2016-03-27	\N
9	30	سائق ومرافق	\N	\N	\N	2016-03-27	\N
9	31	مساعد قانوني	\N	\N	\N	2016-03-27	\N
9	32	مستشار قانوني مساعد	\N	\N	\N	2016-03-27	\N
9	33	مراسل	\N	\N	\N	2016-03-27	\N
9	34	سكرتاريا	\N	\N	\N	2016-03-27	\N
9	35	كاتب	\N	\N	\N	2016-03-27	\N
9	36	مدخل بيانات	\N	\N	\N	2016-03-27	\N
9	37	امين مستودع	\N	\N	\N	2016-03-27	\N
9	38	باحث ميداني	\N	\N	\N	2016-03-27	\N
9	39	موظف اعلام	\N	\N	\N	2016-03-27	\N
9	40	موظف استعلامات	\N	\N	\N	2016-03-27	\N
9	41	موظف مواصفات	\N	\N	\N	2016-03-27	\N
9	42	موظف مالي	\N	\N	\N	2016-03-27	\N
9	43	موظف تسويق	\N	\N	\N	2016-03-27	\N
9	44	مهندس الكتروني واتصالات	\N	\N	\N	2016-03-27	\N
9	45	مراقب	\N	\N	\N	2016-03-27	\N
9	46	مهني أ	\N	\N	\N	2016-03-27	\N
9	47	بدون	\N	\N	\N	2016-03-27	\N
9	48	ق.أ مدير عام	\N	\N	\N	2016-03-27	\N
7	127	شعبة التصميم والمونتاج	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	128	شعبة تصميم مواقع الانترنت	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	129	شعبة الانظمة	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	130	شعبة الشبكات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	131	شعبة تطوير البرامج	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	132	شعبة المدربين	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	133	شعبة لغات البرمجة وقواعد البيانات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	134	شعبة برمجة وتطوير صفحات الانترنت	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	135	شعبة الاتصالات الالكترونية	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	136	شعبة الحاسوب والدعم الفني	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	137	شعبة الوزارة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم الدعم الفني	\N	2016-03-27	\N
7	138	شعبة الحاسوب الحكومي	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	139	شعبة الوزارة	\N	تابع الادارة العامة للحاسوب الحكومي / قسم الشبكات	\N	2016-03-27	\N
7	140	شعبة الحاسوب الحكومي	\N	تابع الادارة العامة للحاسوب الحكومي/قسم الشبكات	\N	2016-03-27	\N
7	141	شعبة البريد	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
7	142	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم الشبكات المحلية	\N	2016-03-27	\N
7	143	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم الشبكات الموسعة	\N	2016-03-27	\N
7	144	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم امن ومراقبة الشبكات	\N	2016-03-27	\N
7	145	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم ادارة انظمة التشغيل	\N	2016-03-27	\N
7	146	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم اتطوير الانظمة	\N	2016-03-27	\N
7	147	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم امن تنظمة التشغيل	\N	2016-03-27	\N
7	148	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم الدعم الفني للمؤسسات	\N	2016-03-27	\N
7	149	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم المساندة الفنية	\N	2016-03-27	\N
7	150	شعبة خدمة المؤسسات	\N	تابع الادارة العامة للحاسوب الحكومي/قسم خدمات المشتركين	\N	2016-03-27	\N
7	151	شعبة استقبال الشكاوي	\N	تابع الادارة العامة للحاسوب الحكومي/قسم خدمات المشتركين	\N	2016-03-27	\N
7	152	شعبة جودة الخدمة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم خدمات المشتركين	\N	2016-03-27	\N
7	153	شعبة	\N	تابع الادارة العامة للحاسوب الحكومي/قسم الاستشارات وتحديد الاحتياجات	\N	2016-03-27	\N
6	83	قسم تدريب الوسائط المتعددة	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	84	قسم تدريب انظمة التشغيل والشبكات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	85	قسم تدريب البرمجة والتطوير	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	86	قسم التدريب التقني	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	87	قسم الدعم الفني	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	88	قسم الشبكات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	89	قسم الشبكات المحلية	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	90	قسم الشبكات الموسعة	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	91	قسم امن مراقبة الشبكات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	92	قسم ادارة انظمة التشغيل	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	93	قسم تطوير الانظمة	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	94	قسم امن انظمة التشغيل	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	95	قسم الدعم الفني للمؤسسات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	96	قسم المساندة الفنية	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	97	قسم خدمات المشتركين	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	98	قسم الاستشارات وتحديد الاحتياجات	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
6	99	قسم التدريب المكتبي المحوسب	\N	تابع الادارة العامة للحاسوب الحكومي	\N	2016-03-27	\N
10	18	مهندس حاسوب	\N	\N	\N	2016-03-27	\N
6	100	قسم الابحاث المعلوماتية	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
6	101	قسم الدراسات الفنية	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
6	102	قسم الانظمة القياسية	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
6	103	قسم البرمجيات القياسية	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
6	104	قسم امن البنى التحتية	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
6	105	قسم امن الحدود	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
6	106	قسم مكافحة جرائم الانترنت	\N	تابع للادارة العامة للانظمة المعلوماتية	\N	2016-03-27	\N
7	168	شعبة  قسم التخطيط	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة التخطيط والاستشارة	\N	2016-03-27	\N
7	169	شعبة  قسم الاستشارة	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة التخطيط والاستشارة	\N	2016-03-27	\N
7	170	شعبة  قسم المساندة الفنية	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة التخطيط والاستشارة	\N	2016-03-27	\N
7	171	شعبة  قسم البرامج والمشاريع	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة المشاريع والتطوير التقني	\N	2016-03-27	\N
7	172	شعبة  قسم التطوير التقني	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة المشاريع والتطوير التقني	\N	2016-03-27	\N
7	173	شعبة  قسم تطبيقات الانترنت	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة تطبيقات الانترنت وادارة المحتوى	\N	2016-03-27	\N
7	174	شعبة  قسم ادارة المحتوى	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة تطبيقات الانترنت وادارة المحتوى	\N	2016-03-27	\N
7	175	شعبة  قسم الانظمة القياسية	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة تطوير الانظمة والبرمجيات القياسية	\N	2016-03-27	\N
7	176	شعبة  قسم البرمجيات القياسية	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة تطوير الانظمة والبرمجيات القياسية	\N	2016-03-27	\N
7	177	شعبة  قسم امن البنى التحتية	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة امن المعلومات	\N	2016-03-27	\N
7	178	شعبة  قسم امن الحدود	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة امن المعلومات	\N	2016-03-27	\N
6	1	قسم ادخال البيانات	\N	\N	\N	2016-03-02	\N
6	2	قسم الارشيف	\N	\N	\N	2016-03-02	\N
6	3	قسم الشبكات	\N	\N	\N	2016-03-02	\N
9	2	مدير	\N	\N	\N	2016-03-08	\N
9	3	رئيس قسم	\N	\N	\N	2016-03-08	\N
9	4	رئيس شعبة	\N	\N	\N	2016-03-08	\N
9	5	مبرمج	\N	\N	\N	2016-03-08	\N
10	1	وكيل	\N	\N	\N	2016-03-08	\N
10	3	نائب مدير عام	\N	\N	\N	2016-03-08	\N
6	29	قسم البرامج والشاريع	\N	\N	\N	2016-03-22	\N
6	30	قسم التطوير التقني	\N	\N	\N	2016-03-22	\N
6	28	قسم المساندة الفنية	\N	تابع -دائرة التخطيط والاستشارة	\N	2016-03-22	\N
7	57	شعبة	\N	غير محدد	\N	2016-03-22	\N
6	31	قسم ادارة المحتوى	\N	\N	\N	2016-03-22	\N
7	179	شعبة  قسم مكافحة جرائم الانترنت	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة امن المعلومات	\N	2016-03-27	\N
7	180	شعبة  قسم الابحاث المعلوماتية	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة الابحاث والدراسات	\N	2016-03-27	\N
7	181	شعبة  قسم الدراسات الفنية	\N	تابع للادارة العامة للانظمة المعلوماتية/دائرة الابحاث والدراسات	\N	2016-03-27	\N
7	207	شعبة الصادر	\N	 / قسم البريد السريع تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	208	شعبة الوارد	\N	/ قسم البريد السريع تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	209	شعبة الصادر	\N	قسم الطرود البريدية تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	210	شعبة الوارد	\N	قسم الطرود البريدية تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	211	شعبة الصادر	\N	قسم مكتب التبادل تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	212	شعبة الوارد	\N	 قسم مكتب التبادل تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	213	شعبة الفاكس	\N	/ قسم البرقيات والفاكس تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	214	شعبة البرقيات	\N	/ قسم البرقيات والفاكستابع للادارة العامة للبريد	\N	2016-03-27	\N
7	215	شعبة قسم الحسابات التجارية	\N	تابع دائرة الحسابات المالية الادارة العامة للبريد	\N	2016-03-27	\N
7	216	شعبة قسم الحسابات الدولية	\N	تابع دائرة الحسابات المالية الادارة العامة للبريد	\N	2016-03-27	\N
7	217	شعبة قسم الحسابات البريدية	\N	تابع دائرة الحسابات المالية الادارة العامة للبريد	\N	2016-03-27	\N
7	218	شعبة قسم خزينة البريد	\N	تابع دائرة الحسابات المالية الادارة العامة للبريد	\N	2016-03-27	\N
7	219	شعبة قسم الحسابات الختامية	\N	تابع دائرة الحسابات المالية الادارة العامة للبريد	\N	2016-03-27	\N
7	220	شعبة قسم الحوالات البريدية	\N	تابع دائرة الحسابات المالية الادارة العامة للبريد	\N	2016-03-27	\N
7	221	شعب الأمن البريدي للمحافظات	\N	تابع دائرة الأمن البريدي الادارة العامة للبريد	\N	2016-03-27	\N
7	222	شعب الأمن البريدي للمعابر والحدود	\N	تابع دائرة الأمن البريدي الادارة العامة للبريد	\N	2016-03-27	\N
7	223	شعبة قسم المراجعة والتدقيق	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	224	شعبة ادخال البيانات	\N	/ قسم الحسابات الختامية تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	225	شعبة مسؤولي شباك	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	226	شعبة الوارد	\N	/ قسم الفر/ قسم الفرزتابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	227	شعبة المسجل	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	228	شعبة التدقيق	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	229	شعبة الصناديق	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	230	شعبة الموزعين	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	231	شعبة الوارد	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	232	شعبة الصادر	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	233	شعبة الطرود الواردة	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	234	شعبة الطرود الصادرة	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	235	فئة أ بمستوى نائب مدير وعددها40 مكتب	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	236	فئة ب بمستوى قسم وعددها 100 مكتب	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	237	فئة ج بمستوى شعبة وعددها 200 مكتب	\N	تابع دائرة مكتب بريد رئيسي الادارة العامة للبريد	\N	2016-03-27	\N
7	238	شعبة المراجعة مع المكاتب	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	239	شعبة المراجعة مع الوزارات	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	240	شعبة المراجعة مع القطاع الخاص	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	241	شعبة ادخال البيانات	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	242	شعبة الحوالات المالية	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	243	شعبة الشيكات البريدية	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	244	شعبة قسم المحفوظات	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	245	شعبة الودائع	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	246	شعبة الموازنات	\N	/ قسم الحسابات الختامية تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	247	شعبة فتح الحسابات	\N	/ قسم الحسابات الختامية تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	248	شعبة الشبكات والدعم الفني	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	249	شعبة المساندة الفنية	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	250	شعبة البرامج والأنظمة	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	251	شعبة الطباعة	\N	تابع دائرة الطوابع البريدية الادارة العامة للبريد	\N	2016-03-27	\N
7	252	شعبة الاتلاف	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	253	شعبة المواصفات	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	254	شعبة ارشيف الطوابع	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	255	شعبة مراسلات الهواة	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	256	شعبة الطلبيات	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	257	شعبة المعارض	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
7	258	شعبة الحسابات	\N	تابع دائرة بنك البريد الادارة العامة للبريد	\N	2016-03-27	\N
10	19	مدير مكتب بريد فرعي (أ) نائب مدير	\N	\N	\N	2016-03-28	\N
10	20	مدير مكتب بريد فرعي (ب) رئيس قسم	\N	\N	\N	2016-03-28	\N
10	21	مدير مكتب بريد فرعي(ج) رئيس شعبة	\N	\N	\N	2016-03-28	\N
2	6	مكتب غزة	\N	\N	\N	2016-03-28	\N
2	7	مكتب الضفة	\N	\N	\N	2016-03-28	\N
5	51	دائرة اللجان الوزارية	\N	\N	\N	2016-03-28	\N
5	52	دائرة التقارير والقرارات	\N	\N	\N	2016-03-28	\N
5	53	دائرة الرقابة الادارية والمالية	\N	\N	\N	2016-03-28	\N
5	54	دائرة الرقابة البريدية	\N	\N	\N	2016-03-28	\N
5	55	الدائرة القانونية لشؤون الاتصالات و المعلوماتية	\N	\N	\N	2016-03-28	\N
5	56	الدائرة القانونية لشؤون البريد	\N	\N	\N	2016-03-28	\N
5	57	دائرة المتابعة والتنسيق	\N	\N	\N	2016-03-28	\N
5	58	دائرة الشكاوي	\N	\N	\N	2016-03-28	\N
6	157	قسم العلاقات العربية و الدوليه	\N	\N	\N	2016-03-28	\N
6	158	قسم العلاقات المؤسسية	\N	\N	\N	2016-03-28	\N
6	159	قسم الترجمة والاعلام والأرشيف	\N	\N	\N	2016-03-28	\N
9	50	 مدير	\N	\N	\N	2016-03-29	\N
10	22	مساعد اداري	\N	\N	\N	2016-03-28	\N
10	23	سائق	\N	\N	\N	2016-03-28	\N
10	24	مراسل	\N	\N	\N	2016-03-28	\N
9	49	عامل تنظيفات	\N	\N	\N	2016-03-29	\N
10	25	عامل نظافة	\N	\N	\N	2016-03-28	\N
5	60	دائرة تراخيص الخليل	\N	\N	\N	2016-03-29	\N
5	59	دائرة تراخيص أريحا	\N	\N	\N	2016-03-29	\N
5	61	دائرة تراخيص القدس	\N	\N	\N	2016-03-29	\N
5	81	المياومة	\N	\N	\N	2016-04-19	\N
5	62	دائرة تراخيص المعابر	\N	\N	\N	2016-03-29	\N
5	63	دائرة تراخيص بيت لحم	\N	\N	\N	2016-03-29	\N
5	64	دائرة تراخيص جنين	\N	\N	\N	2016-03-29	\N
5	65	دائرة تراخيص رام الله	\N	\N	\N	2016-03-29	\N
5	66	دائرة تراخيص سلفيت	\N	\N	\N	2016-03-29	\N
5	67	دائرة تراخيص طولكرم	\N	\N	\N	2016-03-29	\N
6	224	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	228	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	232	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	235	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	239	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
7	292	شعبة قسم المراجعة والتدقيق	\N	الادارة العامة للبريد / دائرة مكتب بريد رئيسي	\N	2016-04-04	\N
7	293	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	294	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	295	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	296	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	297	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	298	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	299	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	300	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	301	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	302	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	125	شعبة قسم نظم الأجهزة	\N	\N	\N	2016-03-27	\N
7	126	شعبة قسم نظم الهوائيات	\N	\N	\N	2016-03-27	\N
7	154	شعبة المتابعة	\N	تابع  الادارة العامة للتخطيط والتنمية/ قسم المتابعة والتنسيق	\N	2016-03-27	\N
7	155	شعبة التنسيق	\N	تابع  الادارة العامة للتخطيط والتنمية/ قسم المتابعة والتنسيق	\N	2016-03-27	\N
6	107	قسم الربط البيني	\N	\N	\N	2016-03-27	\N
6	108	قسم الربط الدولي	\N	\N	\N	2016-03-27	\N
6	109	قسم الترقيم للهاتف الثابت	\N	\N	\N	2016-03-27	\N
6	110	قسم الترقيم للهاتف الخلوي	\N	\N	\N	2016-03-27	\N
6	111	قسم التعرفة المطبقة	\N	\N	\N	2016-03-27	\N
6	112	قسم التسعير للخدمات الجديدة	\N	\N	\N	2016-03-27	\N
6	113	قسم المقاسم الحكومية	\N	\N	\N	2016-03-27	\N
6	114	قسم صيانة المقاسم	\N	\N	\N	2016-03-27	\N
6	115	قسم النظم	\N	\N	\N	2016-03-27	\N
6	116	قسم المقاييس	\N	\N	\N	2016-03-27	\N
6	117	قسم مؤشرات الاتصالات	\N	\N	\N	2016-03-27	\N
6	118	قسم جودة الخدمة	\N	\N	\N	2016-03-27	\N
7	156	شعبة قسم الربط البيني	\N	\N	\N	2016-03-27	\N
7	157	شعبة قسم الربط الدولي	\N	\N	\N	2016-03-27	\N
7	158	شعبة قسم الترقيم للهاتف الثابت	\N	\N	\N	2016-03-27	\N
7	159	شعبة قسم الترقيم للهاتف الخلوي	\N	\N	\N	2016-03-27	\N
7	160	شعبة قسم التعرفة المطبقة	\N	\N	\N	2016-03-27	\N
7	161	شعبة قسم التسعير للخدمات الجديدة	\N	\N	\N	2016-03-27	\N
7	162	شعبة قسم المقاسم الحكومية	\N	\N	\N	2016-03-27	\N
7	163	شعبة قسم صيانة المقاسم	\N	\N	\N	2016-03-27	\N
7	164	شعبة قسم النظم	\N	\N	\N	2016-03-27	\N
7	165	شعبة قسم المقاييس	\N	\N	\N	2016-03-27	\N
7	166	شعبة قسم مؤشرات الاتصال	\N	\N	\N	2016-03-27	\N
7	167	شعبة قسم جودة الخدمة	\N	\N	\N	2016-03-27	\N
6	119	قسم المحفوظات	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	120	قسم البرقيات والفاكس	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	121	قسم التسويق والاستثمار	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	122	قسم الاحصاء والتخطيط	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	123	قسم قسم العلاقات البريدية الدولية	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	124	قسم الصناديق البريدية	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	125	قسم رفع جودة الخدمة	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	126	قسم السفريات والأكياس الفارغة	\N	تابع دائرة الحركة البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	127	قسم البريد الخارجي	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	128	قسم البريد الداخلي	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	129	قسم البريد المسجل	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	130	قسم البريد الوارد	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	131	قسم البريد السريع	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	132	قسم الاستعلامات	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	133	قسم الطرود البريدية	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	134	قسم مكتب التبادل	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	135	قسم البرقيات والفاكس	\N	تابع دائرة الخدمات البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	136	قسم الحسابات التجارية	\N	تابع دائرة الحسابات المالية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	137	قسم الحسابات الدولية	\N	تابع دائرة الحسابات المالية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	138	قسم الحسابات البريدية	\N	تابع دائرة الحسابات المالية/ الادارة العامة للبريد	\N	2016-03-27	\N
5	2	دائرة الشؤون الادارية	\N	\N	\N	2016-02-15	\N
6	139	قسم خزينة البريد	\N	تابع دائرة الحسابات المالية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	140	قسم الحسابات الختامية	\N	تابع دائرة الحسابات المالية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	141	قسم الحوالات البريدية	\N	تابع دائرة الحسابات المالية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	142	أقسام الأمن البريدي للمحافظات	\N	تابع دائرة الأمن البريدي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	143	أقسام الأمن البريدي للمعابر والحدود	\N	تابع دائرة الأمن البريدي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	144	قسم المراجعة والتدقيق	\N	تابع دائرة مكتب بريد رئيسي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	145	قسم الحسابات والخزينة	\N	تابع دائرة مكتب بريد رئيسي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	146	قسم الفرز	\N	تابع دائرة مكتب بريد رئيسي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	147	قسم البريد السريع	\N	تابع دائرة مكتب بريد رئيسي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	148	قسم الطرود البريدية	\N	تابع دائرة مكتب بريد رئيسي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	149	مكاتب البريد الفرعية	\N	تابع دائرة مكتب بريد رئيسي/ الادارة العامة للبريد	\N	2016-03-27	\N
6	150	قسم المراجعة والتدقيق	\N	تابع دائرة بنك البريد/ الادارة العامة للبريد	\N	2016-03-27	\N
6	151	قسم المدفوعات	\N	تابع دائرة بنك البريد/ الادارة العامة للبريد	\N	2016-03-27	\N
6	152	قسم المحفوظات	\N	تابع دائرة بنك البريد/ الادارة العامة للبريد	\N	2016-03-27	\N
6	153	قسم الحسابات الختامية	\N	تابع دائرة بنك البريد/ الادارة العامة للبريد	\N	2016-03-27	\N
6	154	قسم الدعم والمساندة الفنية	\N	تابع دائرة بنك البريد/ الادارة العامة للبريد	\N	2016-03-27	\N
6	155	قسم التصميم والطباعة	\N	تابع دائرة الطوابع البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
6	156	قسم هواة الطوابع	\N	تابع دائرةالطوابع البريدية/ الادارة العامة للبريد	\N	2016-03-27	\N
7	182	شعبة قسم المحفوظات	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	183	شعبة قسم رفع جودة الخدمة	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	184	شعبة البرقيات	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	185	شعبة الفاكس	\N	تابع للادارة العامة للبريد/ قسم البرقيات والفاكس	\N	2016-03-27	\N
7	186	شعبة تسويق الخدمات	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	187	شعبة العلاقات والاعلام	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	188	شعبة الاستثمار البريدي	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	189	شعبة احصاء الخدمات البريدية	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	190	شعبة احصاء الخدمات المالية	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	191	شعبة البرامج والخطط التطويرية	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	192	شعبة العلاقات الخارجية	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	193	شعبة المؤتمرات والاتفاقيات	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	194	شعبة الترجمة	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	195	شعبة التأجير	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	196	شعبة الاقفال	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	197	شعبة الصادر	\N	 قسم السفريات والاكياس الفارغة تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	198	شعبة السفريات	\N	 قسم السفريات والاكياس الفارغة تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	199	شعبة الوارد	\N	 قسم السفريات والاكياس الفارغة تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	412	شعبة المتابعة	\N	دائرة تنمية الموارد البشرية/ قسم المتابعة والتنسيق	\N	2018-02-19	\N
9	59	موظف خدمات إدارية	\N	\N	\N	2018-12-27	\N
9	65	ق.ا نائب	\N	\N	\N	2019-07-21	\N
3	6	وحدة البنك الدولي	\N	\N	\N	2021-06-06	\N
9	107	رئيس وحدة البنك الدولي	\N	\N	\N	2021-06-06	\N
9	108	باحث اقتصادي	\N	\N	\N	2022-04-20	\N
11	37	بريد رفيديا	\N	\N	\N	2022-04-20	\N
5	93	مراسلين وعمال نظافة	\N	\N	\N	2022-07-04	\N
1	1	وزارة الاتصالات وتكنولوجيا المعلومات	\N	\N	\N	2015-10-28	\N
2	1	 الوزير	\N	\N	\N	2016-02-14	\N
3	1	وحدة الشكاوي	\N	\N	\N	2016-02-14	\N
5	1	دائرة العلاقات العامة والاعلام	\N	\N	\N	2016-02-14	\N
9	1	مدير عام	\N	\N	\N	2016-02-14	\N
2	2	ديوان الوزير	\N	\N	\N	2016-02-15	\N
2	3	المستشارون	\N	\N	\N	2016-02-15	\N
3	2	وحدة شؤون مجلس الوزراء	\N	\N	\N	2016-02-15	\N
3	3	وحدة الرقابة الداخلية	\N	\N	\N	2016-02-15	\N
3	4	وحدة الشؤون القانونية	\N	\N	\N	2016-02-15	\N
4	2	الادارة العامة للتخطيط والتنمية	\N	\N	\N	2016-02-15	\N
2	4	الوكيل	\N	\N	\N	2016-02-15	\N
2	5	مكتب الوكيل	\N	\N	\N	2016-02-15	\N
4	1	الادارة العامة للشؤون الادارية	\N	\N	\N	2016-02-15	\N
4	3	الادارة العامة للبريد	\N	\N	\N	2016-02-15	\N
4	4	الادارة العامة للحكومة الالكترونية	\N	\N	\N	2016-02-15	\N
4	5	الادارة العامة للحاسوب الحكومي	\N	\N	\N	2016-02-15	\N
4	6	الادارة العامة للانظمة المعلوماتية	\N	\N	\N	2016-02-15	\N
4	7	الادارة العامة للترددات والارسال	\N	\N	\N	2016-02-15	\N
4	8	الادارة العامة للتراخيص	\N	\N	\N	2016-02-15	\N
4	9	الادارة العامة للاتصالات	\N	\N	\N	2016-02-15	\N
5	3	دائرة الموارد البشرية	\N	\N	\N	2016-02-15	\N
5	4	دائرة الخدمات العامة	\N	\N	\N	2016-02-15	\N
5	5	دائرة اللوازم والمستودعات	\N	\N	\N	2016-02-15	\N
5	6	دائرة النفقات والموازنة	\N	\N	\N	2016-02-15	\N
5	7	دائرة الايرادات والخزينة	\N	\N	\N	2016-02-15	\N
5	8	دائرة البحث والاحصاء والتطوير	\N	\N	\N	2016-02-15	\N
5	9	دائرة التخطيط والمشاريع	\N	\N	\N	2016-02-15	\N
5	10	دائرة تنمية الموارد البشرية	\N	\N	\N	2016-02-15	\N
5	11	دائرة الخدمات البريدية	\N	\N	\N	2016-02-15	\N
5	12	دائرة الحركة البريدية	\N	\N	\N	2016-02-15	\N
5	13	دائرة الحسابات المالية	\N	\N	\N	2016-02-15	\N
5	14	دائرة الامن البريدي	\N	\N	\N	2016-02-15	\N
5	15	دوائر مكاتب البريد الرئيسية عدد المحافظات	\N	\N	\N	2016-02-15	\N
5	16	دائرة بنك البريد	\N	\N	\N	2016-02-15	\N
5	17	دائرة الطوابع البريدية	\N	\N	\N	2016-02-15	\N
5	18	دائرة السياسات والاستراتيجيات	\N	\N	\N	2016-02-15	\N
5	19	دائرة المواصفات والمقاييس	\N	\N	\N	2016-02-15	\N
5	20	دائرة الدعم والاستشارة	\N	\N	\N	2016-02-15	\N
5	21	دائرة الشراكات الاستراتيجية ومراكز التميز	\N	\N	\N	2016-02-15	\N
5	22	دائرة التطبيقات المتكاملة	\N	\N	\N	2016-02-15	\N
5	23	دائرة التدريب المكتبي المحوسب والمتقدم	\N	\N	\N	2016-02-15	\N
5	24	دائرة الدعم الفني الداخلي	\N	\N	\N	2016-02-15	\N
5	25	دائرة الشبكات	\N	\N	\N	2016-02-15	\N
5	26	دائرة انظمة التشغيل	\N	\N	\N	2016-02-15	\N
5	27	دائرة العمليات وخدمات المشتركين	\N	\N	\N	2016-02-15	\N
5	28	دائرة التخطيط والاستشارة	\N	\N	\N	2016-02-15	\N
5	29	دائرة المشاريع والتطوير التقني	\N	\N	\N	2016-02-15	\N
5	30	دائرة تطبيقات الانترنت وادارة المحتوى	\N	\N	\N	2016-02-15	\N
5	31	دائرة الابحاث والدراسات	\N	\N	\N	2016-02-15	\N
5	32	دائرة تطوير الانظمة والبرمجيات القياسية	\N	\N	\N	2016-02-15	\N
5	33	دائرة امن المعلومات	\N	\N	\N	2016-02-15	\N
5	34	دائرة التخصيص	\N	\N	\N	2016-02-15	\N
5	35	دائرة المراقبة والبحث	\N	\N	\N	2016-02-15	\N
5	36	دائرة التخطيط	\N	\N	\N	2016-02-15	\N
5	37	دائرة التنسيق الوطني والدولي	\N	\N	\N	2016-02-15	\N
5	38	دائرة الارسال الاذاعي	\N	\N	\N	2016-02-15	\N
5	39	دائرة الارسال التلفزي	\N	\N	\N	2016-02-15	\N
5	40	دائرة الارسال اللاسلكي والنظم الهوائية	\N	\N	\N	2016-02-15	\N
5	41	دائرة التراخيص للمحافظات عدد المحافظات	\N	\N	\N	2016-02-15	\N
5	42	دائرة دراسة السوق والاحصاء والمتابعة	\N	\N	\N	2016-02-15	\N
5	43	دائرة البث المرئي والمسموع	\N	\N	\N	2016-02-15	\N
5	44	دائرة الموافقات النوعية	\N	\N	\N	2016-02-15	\N
5	45	دائرة الربط البيئي والدولي	\N	\N	\N	2016-02-15	\N
5	46	دائرة الترقيم	\N	\N	\N	2016-02-15	\N
5	47	دائرة التعرفة والتسعير	\N	\N	\N	2016-02-15	\N
5	48	دائرة المقاسم الحكومية والصيانة	\N	\N	\N	2016-02-15	\N
5	49	دائرة النظم والمقاييس الارضية	\N	\N	\N	2016-02-15	\N
5	50	دائرة الخدمات الجديدة وضبط الجودة	\N	\N	\N	2016-02-15	\N
6	4	قسم تطبيقات الانترنت	\N	\N	\N	2016-03-08	\N
9	7	نائب مدير عام	\N	\N	\N	2016-03-10	\N
9	8	رئيس	\N	\N	\N	2016-03-10	\N
9	9	مستشار للوزير	\N	\N	\N	2016-03-10	\N
9	10	مدير مكتب	\N	\N	\N	2016-03-10	\N
9	11	مهندس	\N	\N	\N	2016-03-10	\N
9	12	مهندس اتصالات	\N	\N	\N	2016-03-10	\N
9	13	مهندس حاسوب	\N	\N	\N	2016-03-10	\N
9	14	مهندس كهرباء	\N	\N	\N	2016-03-10	\N
7	1	شعبة المتابعة	\N	\N	\N	2016-03-22	\N
7	2	شعبة التعقيب	\N	\N	\N	2016-03-22	\N
7	3	شعبة الدوام	\N	\N	\N	2016-03-22	\N
7	4	شعبة الاجازات	\N	\N	\N	2016-03-22	\N
7	5	شعبة التعيينات والوظائف	\N	\N	\N	2016-03-22	\N
7	6	شعبة الاعلانات	\N	\N	\N	2016-03-22	\N
9	16	مدير بريد فئة أ	\N	\N	\N	2016-03-22	\N
7	8	شعبة التعيينات والوظائف	\N	\N	\N	2016-03-22	\N
7	9	شعبة الترقيات والنقل والاعارة	\N	\N	\N	2016-03-22	\N
7	10	شعبة المتقاعدين والرواتب	\N	\N	\N	2016-03-22	\N
7	11	شعبة الملفات	\N	\N	\N	2016-03-22	\N
7	12	شعبة البيانات وحوسبتها	\N	\N	\N	2016-03-22	\N
7	13	شعبة الأداء والتقارير	\N	\N	\N	2016-03-22	\N
7	14	شعبة الإجراءات التأديبية	\N	\N	\N	2016-03-22	\N
7	15	شعبة تعقيب المعاملات	\N	\N	\N	2016-03-22	\N
7	16	شعبة الصادر  قسم الديوان	\N	\N	\N	2016-03-22	\N
7	17	شعبة الوارد  قسم الديوان	\N	\N	\N	2016-03-22	\N
7	18	شعبة الارشيف	\N	\N	\N	2016-03-22	\N
7	19	شعبة الطباعة	\N	\N	\N	2016-03-22	\N
7	20	شعبة الاستقبال	\N	\N	\N	2016-03-22	\N
7	21	شعبة الامن	\N	\N	\N	2016-03-22	\N
7	22	شعبة المتابعة والاسناد	\N	\N	\N	2016-03-22	\N
7	23	شعبةMIS	\N	\N	\N	2016-03-22	\N
7	24	شعبة السائقين	\N	\N	\N	2016-03-22	\N
7	25	شعبة المركبات	\N	\N	\N	2016-03-22	\N
7	26	شعبة صيانة المركبات	\N	\N	\N	2016-03-22	\N
7	27	شعبة صيانة الاجهزة المكتبية	\N	\N	\N	2016-03-22	\N
7	28	شعبة صيانة المباني	\N	\N	\N	2016-03-22	\N
7	29	شعبة النظافة	\N	\N	\N	2016-03-22	\N
7	30	شعبة المراسلون	\N	\N	\N	2016-03-22	\N
7	31	شعبة الحراسة	\N	\N	\N	2016-03-22	\N
7	32	شعبة السلامة العامة	\N	\N	\N	2016-03-22	\N
7	33	شعبة الرقابة والتدقيق	\N	\N	\N	2016-03-22	\N
7	34	شعبة الجرد	\N	\N	\N	2016-03-22	\N
7	35	شعبة العهدة والممتلكات	\N	\N	\N	2016-03-22	\N
7	36	شعبة العطاءات	\N	\N	\N	2016-03-22	\N
7	37	شعبة المشتريات	\N	\N	\N	2016-03-22	\N
7	38	شعبة الاستلام والتسليم	\N	\N	\N	2016-03-22	\N
7	39	شعبة مراقبة المخزون	\N	\N	\N	2016-03-22	\N
7	40	شعبة الحسابات	\N	\N	\N	2016-03-22	\N
7	41	شعبة السجلات والقيود والارشيف	\N	\N	\N	2016-03-22	\N
7	42	شعبة الموازنة	\N	\N	\N	2016-03-22	\N
7	43	شعبة التحاليل المالية والتقارير	\N	\N	\N	2016-03-22	\N
7	44	شعبة الاجور والرواتب	\N	\N	\N	2016-03-22	\N
7	45	شعبة الصندوق	\N	\N	\N	2016-03-22	\N
7	46	شعبة النفقات الراسمالية	\N	\N	\N	2016-03-22	\N
7	47	شعبة النفقات التشغيلية	\N	\N	\N	2016-03-22	\N
7	48	شعبة مهمات السفر	\N	\N	\N	2016-03-22	\N
7	49	شعبة إيرادات التراخيص والعقود	\N	\N	\N	2016-03-22	\N
7	50	شعبة إيرادات الترددات	\N	\N	\N	2016-03-22	\N
7	51	شعبة المديونية	\N	\N	\N	2016-03-22	\N
7	52	شعبة إيرادات الطوابع	\N	\N	\N	2016-03-22	\N
7	53	شعبة الإيرادات البريدية	\N	\N	\N	2016-03-22	\N
7	54	شعبة الحسابات الختامية	\N	\N	\N	2016-03-22	\N
7	55	شعبة السجلات والقيود	\N	\N	\N	2016-03-22	\N
7	56	شعبة متابعة البنوك	\N	\N	\N	2016-03-22	\N
6	8	قسم الديوان	\N	\N	\N	2016-03-22	\N
6	9	قسم الاستعلامات	\N	\N	\N	2016-03-22	\N
6	10	قسم انظمة المعلومات الادارية  MIS	\N	\N	\N	2016-03-22	\N
6	11	قسم الحركة	\N	\N	\N	2016-03-22	\N
6	12	قسم الصيانة	\N	\N	\N	2016-03-22	\N
6	13	قسم الخدمات والسلامة العامة	\N	\N	\N	2016-03-22	\N
6	14	قسم اللوازم	\N	\N	\N	2016-03-22	\N
6	15	قسم العطاءات والمشتريات	\N	\N	\N	2016-03-22	\N
6	16	قسم المستودعات	\N	\N	\N	2016-03-22	\N
6	17	قسم الحسابات والارشيف	\N	\N	\N	2016-03-22	\N
6	18	قسم الموازنة والتحليل المالي	\N	\N	\N	2016-03-22	\N
6	19	قسم التدقيق الداخلي	\N	\N	\N	2016-03-22	\N
6	20	قسم النفقات	\N	\N	\N	2016-03-22	\N
6	21	قسم إيرادات التراخيص والترددات	\N	\N	\N	2016-03-22	\N
6	22	قسم الإيرادات البريدية والطوابع	\N	\N	\N	2016-03-22	\N
7	402	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	403	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	404	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	405	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	406	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	407	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	408	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	409	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	410	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	411	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
2	8	مكتب المراقب المالي والاداري	\N	\N	\N	2016-10-10	\N
11	23	مكتب وزارة	\N	\N	\N	2016-10-19	\N
9	54	مأمور فرز	\N	\N	\N	2016-04-10	\N
11	26	بريد البيرة	\N	\N	\N	2016-10-19	\N
9	55	خبير بريدي	\N	\N	\N	2017-01-29	\N
11	24	الادارة العامة للبريد	\N	\N	\N	2016-10-19	\N
11	25	بريد رام الله	\N	\N	\N	2016-10-19	\N
9	56	خبير اتصالات	\N	\N	\N	2017-01-29	\N
9	57	خبير IT	\N	\N	\N	2017-01-29	\N
11	1	مجمع الدوائر	\N	\N	\N	2016-03-31	\N
11	2	بريد السيلة الحارثية	\N	\N	\N	2016-03-31	\N
11	3	بريد قباطية	\N	\N	\N	2016-03-31	\N
11	4	بريد يعبد	\N	\N	\N	2016-03-31	\N
11	5	بريد عرابة	\N	\N	\N	2016-03-31	\N
11	6	بريد اليامون	\N	\N	\N	2016-03-31	\N
11	7	بريد عجة	\N	\N	\N	2016-03-31	\N
11	8	بريد كفرراعي	\N	\N	\N	2016-03-31	\N
11	9	بريد سيلة الظهر	\N	\N	\N	2016-03-31	\N
11	10	بريد حلحول	\N	\N	\N	2016-03-31	\N
11	11	بريد دورا	\N	\N	\N	2016-03-31	\N
11	12	بريد يطا	\N	\N	\N	2016-03-31	\N
11	13	بريد بيت أمر	\N	\N	\N	2016-03-31	\N
11	14	بريد ترقوميا	\N	\N	\N	2016-03-31	\N
11	15	بريد الحرم الابراهيمي	\N	\N	\N	2016-03-31	\N
11	16	بريد الظاهرية	\N	\N	\N	2016-03-31	\N
11	17	بريد السموع	\N	\N	\N	2016-03-31	\N
11	18	بريد بني نعيم	\N	\N	\N	2016-03-31	\N
11	19	بريد صوريف	\N	\N	\N	2016-03-31	\N
11	20	بريد اذنا	\N	\N	\N	2016-03-31	\N
11	21	بريد بيت عوا	\N	\N	\N	2016-03-31	\N
11	22	بريد البلدة القديمة	\N	\N	\N	2016-03-31	\N
6	162	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	163	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	164	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	165	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	166	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	167	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	168	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	169	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	170	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	171	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	172	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	173	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	174	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	175	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	176	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	177	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	178	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	179	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
6	180	قسم خدمات الجمهور	\N	\N	\N	2016-03-31	\N
6	181	قسم المتابعة والتنسيق	\N	\N	\N	2016-03-31	\N
7	269	شعبة قسم خدمات الجمهور	\N	 تراخيص الخليل	\N	2016-03-31	\N
7	270	شعبة قسم المتابعة والتنسيق	\N	 تراخيص الخليل	\N	2016-03-31	\N
7	271	شعبة قسم خدمات الجمهور	\N	تراخيص القدس	\N	2016-03-31	\N
7	272	شعبة قسم المتابعة والتنسيق	\N	تراخيص القدس	\N	2016-03-31	\N
7	273	شعبة قسم خدمات الجمهور	\N	تراخيص المعابر	\N	2016-03-31	\N
7	274	شعبة قسم المتابعة والتنسيق	\N	تراخيص المعابر	\N	2016-03-31	\N
7	275	شعبة قسم خدمات الجمهور	\N	تراخيص بيت لحم	\N	2016-03-31	\N
7	276	شعبة قسم المتابعة والتنسيق	\N	تراخيص بيت لحم	\N	2016-03-31	\N
7	277	شعبة قسم خدمات الجمهور	\N	تراخيص جنين	\N	2016-03-31	\N
7	278	شعبة قسم المتابعة والتنسيق	\N	تراخيص جنين	\N	2016-03-31	\N
7	279	شعبة قسم خدمات الجمهور	\N	تراخيص رام الله	\N	2016-03-31	\N
7	280	شعبة قسم المتابعة والتنسيق	\N	تراخيص رام الله	\N	2016-03-31	\N
7	281	شعبة قسم خدمات الجمهور	\N	تراخيص سلفيت	\N	2016-03-31	\N
7	282	شعبة قسم المتابعة والتنسيق	\N	تراخيص سلفيت	\N	2016-03-31	\N
7	283	شعبة قسم خدمات الجمهور	\N	تراخيص طوباس	\N	2016-03-31	\N
7	284	شعبة قسم المتابعة والتنسيق	\N	تراخيص طوباس	\N	2016-03-31	\N
11	36	بريد روابي	\N	\N	\N	2020-02-20	\N
14	50	مكتب بريد روابي	\N	\N	\N	2020-02-20	\N
11	40	بريد برطعة	\N	\N	\N	2023-01-25	\N
11	41	بريد عقربا	\N	\N	\N	2023-05-21	\N
9	103	فني تكييف وتبريد	\N	\N	\N	2021-01-23	\N
9	104	فني صيانة	\N	\N	\N	2021-01-23	\N
9	105	موظف استقبال	\N	\N	\N	2021-01-23	\N
5	95	دائرة العلاقات الدولية	\N	\N	\N	2023-01-04	\N
9	58	موظف ارشيف	\N	\N	\N	2018-10-09	\N
9	60	عامل	\N	\N	\N	2019-01-29	\N
11	38	بريد بردلة	\N	\N	\N	2023-01-12	\N
11	39	بريد كفر الديك	\N	\N	\N	2023-01-12	\N
4	12	الإدارة العامة للشؤون الإدارية	\N	\N	\N	2023-01-31	\N
4	13	الإدارة العامة للشؤون المالية	\N	\N	\N	2023-01-31	\N
5	88	دائرة التدريب والتطوير	\N	\N	\N	2022-02-27	\N
5	92	دائرة القياس والتنسيق	\N	\N	\N	2022-02-27	\N
9	111	فني كمال اجسام	\N	\N	\N	2023-06-15	\N
14	52	مكتب بريد الجفتلك	\N	\N	\N	2020-11-11	\N
14	53	مكتب بريد بردلا	\N	\N	\N	2020-11-11	\N
14	54	مكتب بريد العوجا	\N	\N	\N	2020-11-11	\N
5	87	دائرة المتابعة والتقييم	\N	\N	\N	2020-11-11	\N
5	89	دائرة دعم الإبداع الرقمي	\N	\N	\N	2022-02-27	\N
5	90	دائرة الحاضنات والحدائق التكنولوجية	\N	\N	\N	2022-02-27	\N
5	91	دائرة مختبر الابتكار الحكومي	\N	\N	\N	2022-02-27	\N
9	64	ق.ا مدير	\N	\N	\N	2019-07-16	\N
9	66	مستشار الوزير لشؤون الاتصالات	\N	\N	\N	2020-01-22	\N
9	67	مشرف	\N	\N	\N	2020-10-01	\N
9	68	ق.أ وحدة النوع الاجتماعي	\N	\N	\N	2020-10-01	\N
3	5	وحدة النوع الاجتماعي	\N	\N	\N	2020-10-01	\N
14	51	مكتب بريد تفوح	\N	\N	\N	2020-10-19	\N
9	106	مترجم	\N	\N	\N	2021-01-28	\N
14	55	مكتب بريد بيت فجار	\N	\N	\N	2021-01-28	\N
5	96	دائرة التدقيق والمراجعة الخارجية	\N	\N	\N	2023-04-25	\N
9	110	ق. أ. نائب مدير عام	\N	\N	\N	2023-06-11	\N
7	413	شعبة التنسيق	\N	دائرة تنمية الموارد البشرية/ قسم المتابعة والتنسيق	\N	2018-02-19	\N
9	100	وزير	\N	\N	\N	2017-10-04	\N
9	101	مستشار قانوني	\N	\N	\N	2018-04-03	\N
9	63	ق. أ. الوكيل	\N	\N	\N	2019-05-16	\N
9	102	نائب رئيس	\N	\N	\N	2020-08-19	\N
9	109	باحث قانوني	\N	\N	\N	2022-05-18	\N
5	94	العطاءات والمشتريات	\N	\N	\N	2022-09-25	\N
5	97	دائرة الخزينة المركزية	\N	\N	\N	2023-05-18	\N
5	98	دائرة الدائرة التجارية	\N	\N	\N	2023-05-18	\N
5	99	دائرة الحسابات الدولية	\N	\N	\N	2023-05-18	\N
10	100	وزير	\N	\N	\N	2017-10-04	\N
10	106	ق.أ الادارة العامة للحكومة الالكترونية	\N	لغايات العمل على المذكرات الداخلية	\N	2018-07-17	\N
10	107	ق.أ الادارة العامة للحاسوب الحكومي	\N	لغايات العمل على المذكرات الداخلية	\N	2018-07-17	\N
10	108	ق.أ الادارة العامة للبريد	\N	لغايات العمل على المذكرات الداخلية	\N	2018-07-17	\N
10	109	ق.أ نائب الادارة العامة للتراخيص	\N	لغايات العمل على المذكرات الداخلية	\N	2018-07-17	\N
9	61	مهندس ميكاترونكس	\N	\N	\N	2019-02-13	\N
9	62	موظف علاقات عامة	\N	\N	\N	2019-02-13	\N
7	200	شعبة الغسيل والخياطة	\N	تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	201	شعبة الصادر	\N	  قسم البريد الخارجي تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	202	شعبة الوارد	\N	  قسم البريد الخارجي  تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	203	شعبة الصادر	\N	  قسم البريد الداخلي تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	204	شعبة الوارد	\N	  قسم البريد الداخلي تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	205	شعبة الصادر	\N	  قسم البريد المسجل تابع للادارة العامة للبريد	\N	2016-03-27	\N
7	206	شعبة الوارد	\N	  قسم البريد المسجل تابع للادارة العامة للبريد	\N	2016-03-27	\N
10	2	مدير عام	\N	\N	\N	2016-03-09	\N
10	4	مدير دائرة	\N	\N	\N	2016-03-09	\N
10	5	نائب مدير	\N	\N	\N	2016-03-09	\N
10	6	رئيس قسم	\N	\N	\N	2016-03-09	\N
10	7	مساعد رئيس قسم	\N	\N	\N	2016-03-09	\N
10	8	رئيس شعبة	\N	\N	\N	2016-03-09	\N
10	9	مساعد رئيس شعبة	\N	\N	\N	2016-03-09	\N
10	10	مبرمج	\N	\N	\N	2016-03-09	\N
10	11	رئيس وحدة	\N	\N	\N	2016-03-09	\N
10	12	مستشار الوزير	\N	\N	\N	2016-03-09	\N
10	13	مدير مكتب	\N	\N	\N	2016-03-09	\N
10	14	مدير	\N	\N	\N	2016-03-09	\N
10	15	ق.أ الادارة العامة	\N	\N	\N	2016-03-09	\N
10	16	موظف اداري	\N	\N	\N	2016-03-09	\N
7	285	شعبة قسم خدمات الجمهور	\N	تراخيص طولكرم	\N	2016-03-31	\N
7	286	شعبة قسم المتابعة والتنسيق	\N	تراخيص طولكرم	\N	2016-03-31	\N
7	287	شعبة قسم خدمات الجمهور	\N	تراخيص قلقيلية	\N	2016-03-31	\N
7	288	شعبة قسم المتابعة والتنسيق	\N	تراخيص قلقيلية	\N	2016-03-31	\N
7	289	شعبة قسم خدمات الجمهور	\N	تراخيص نابلس	\N	2016-03-31	\N
7	290	شعبة قسم المتابعة والتنسيق	\N	تراخيص نابلس	\N	2016-03-31	\N
6	242	قسم التنسيق والمتابعة	\N	\N	\N	2016-03-31	\N
6	243	قسم السكرتاريا	\N	\N	\N	2016-03-31	\N
9	51	نائب مدير	\N	\N	\N	2016-03-31	\N
5	68	دائرة تراخيص قلقيلية	\N	\N	\N	2016-03-29	\N
5	69	دائرة تراخيص نابلس	\N	\N	\N	2016-03-29	\N
13	1	مكتب بريد سلواد	\N	\N	\N	2016-03-31	\N
6	202	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
7	259	شعبة قسم خدمات الجمهور	\N	 تراخيص أريحا تابع الادارة العامة للتراخيص	\N	2016-03-29	\N
7	260	شعبة قسم المتابعة والتنسيق	\N	 تراخيص أريحا تابع الادارة العامة للتراخيص	\N	2016-03-29	\N
13	2	مكتب بريد ديردبوان	\N	\N	\N	2016-03-31	\N
13	3	مكتب بريد بيتونيا	\N	\N	\N	2016-03-31	\N
13	4	مكتب بريد الطيبة	\N	\N	\N	2016-03-31	\N
13	5	مكتب بريد سنجل	\N	\N	\N	2016-03-31	\N
13	6	مكتب بريد الظاهرية	\N	\N	\N	2016-03-31	\N
13	7	مكتب بريد الطيبة	\N	\N	\N	2016-03-31	\N
13	8	مكتب بريد يطا	\N	\N	\N	2016-03-31	\N
13	9	مكتب بريد ترقوميا	\N	\N	\N	2016-03-31	\N
13	10	مكتب بريد بيت امر	\N	\N	\N	2016-03-31	\N
13	11	مكتب بريد معبر الكرامة	\N	\N	\N	2016-03-31	\N
13	12	مكتب بريد بديا	\N	\N	\N	2016-03-31	\N
13	13	مكتب بريد حواره	\N	\N	\N	2016-03-31	\N
13	14	مكتب بريد عنبتا	\N	\N	\N	2016-03-31	\N
13	15	مكتب بريد دير الغصون	\N	\N	\N	2016-03-31	\N
13	16	مكتب بريد عتيل	\N	\N	\N	2016-03-31	\N
13	17	مكتب بريد مجمع الدوائر	\N	جنين	\N	2016-03-31	\N
13	18	مكتب بريد عرابة	\N	\N	\N	2016-03-31	\N
13	19	مكتب بريد يعبد	\N	\N	\N	2016-03-31	\N
13	20	مكتب بريد قباطية	\N	\N	\N	2016-03-31	\N
13	21	مكتب بريد عزون	\N	\N	\N	2016-03-31	\N
14	1	مكتب بريد بدو	\N	\N	\N	2016-03-31	\N
14	2	مكتب بريد الرام	\N	\N	\N	2016-03-31	\N
14	3	مكتب بريد بيت لقيا	\N	مغلق حاليا	\N	2016-03-31	\N
14	4	مكتب بريد عبوين	\N	\N	\N	2016-03-31	\N
14	5	مكتب بريد مجمع الدوائر	\N	بريد القدس	\N	2016-03-31	\N
14	6	مكتب بريد المزعة الشرقية	\N	مغلق حاليا	\N	2016-03-31	\N
14	7	مكتب بريد بني زيد الغربية (بيت ريما)	\N	\N	\N	2016-03-31	\N
14	8	مكتب بريد صوريف	\N	\N	\N	2016-03-31	\N
14	9	مكتب بريد الحرم الابراهيمي	\N	\N	\N	2016-03-31	\N
14	10	مكتب بريد اذنا	\N	\N	\N	2016-03-31	\N
14	11	مكتب بريد السموع	\N	\N	\N	2016-03-31	\N
14	12	مكتب بريد بيت اولا	\N	\N	\N	2016-03-31	\N
14	13	مكتب بريد بني نعيم	\N	\N	\N	2016-03-31	\N
14	14	مكتب بريد البلدة القديمة (الخليل)	\N	\N	\N	2016-03-31	\N
14	15	مكتب بريد بيت عوا	\N	\N	\N	2016-03-31	\N
14	16	مكتب بريد العبيدية	\N	\N	\N	2016-03-31	\N
14	17	مكتب بريد زعترة	\N	\N	\N	2016-03-31	\N
14	18	مكتب بريد حوسان	\N	\N	\N	2016-03-31	\N
6	244	قسم الدراسات والأبحاث	\N	الدائرة القانونية لشؤون الاتصالات والمعلوماتية	\N	2016-12-01	\N
14	20	مكتب بريد الدوحة	\N	\N	\N	2016-03-31	\N
14	21	مكتب بريد كفل حارس	\N	\N	\N	2016-03-31	\N
14	22	مكتب بريد ديراستيا	\N	\N	\N	2016-03-31	\N
14	23	مكتب بريد ابروقين	\N	\N	\N	2016-03-31	\N
14	24	مكتب بريد بيت أمرين	\N	\N	\N	2016-03-31	\N
14	25	مكتب بريد عصيرة الشمالية	\N	\N	\N	2016-03-31	\N
14	26	مكتب بريد قبلان	\N	\N	\N	2016-03-31	\N
14	27	مكتب بريد الكفريات	\N	\N	\N	2016-03-31	\N
14	28	مكتب بريد بيت ليد	\N	\N	\N	2016-03-31	\N
14	29	مكتب بريد علار	\N	\N	\N	2016-03-31	\N
14	30	مكتب بريد قفين	\N	\N	\N	2016-03-31	\N
14	31	مكتب بريد باقة الشرقية	\N	\N	\N	2016-03-31	\N
14	32	مكتب بريد بلعا	\N	\N	\N	2016-03-31	\N
14	33	مكتب بريد نور شمس	\N	\N	\N	2016-03-31	\N
14	34	مكتب بريد كفر اللبد	\N	\N	\N	2016-03-31	\N
14	35	مكتب بريد سيلة الظهر	\N	\N	\N	2016-03-31	\N
14	36	مكتب بريد عجه	\N	\N	\N	2016-03-31	\N
14	37	مكتب بريد سيلة الحارثية	\N	\N	\N	2016-03-31	\N
14	38	مكتب بريد اليامون	\N	\N	\N	2016-03-31	\N
14	39	مكتب بريد كفر راعي	\N	\N	\N	2016-03-31	\N
14	40	مكتب بريد الزبابدة	\N	\N	\N	2016-03-31	\N
14	41	مكتب بريد ميثلون	\N	\N	\N	2016-03-31	\N
14	42	مكتب بريد الفارعة	\N	\N	\N	2016-03-31	\N
14	43	مكتب بريد عين البيضاء	\N	\N	\N	2016-03-31	\N
14	44	مكتب بريد كفر قدوم	\N	\N	\N	2016-03-31	\N
14	45	مكتب بريد حجة	\N	\N	\N	2016-03-31	\N
14	46	مكتب بريد كفر ثلث	\N	\N	\N	2016-03-31	\N
14	47	مكتب بريد جيوس	\N	\N	\N	2016-03-31	\N
14	48	مكتب حبله	\N	\N	\N	2016-03-31	\N
6	182	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	183	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	184	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	185	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	186	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	187	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	188	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	189	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	190	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	191	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	192	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	193	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	194	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	195	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	196	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	197	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	198	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	199	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	200	قسم المراجعةوالتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	201	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	203	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	204	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	205	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	206	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	207	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	208	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	209	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	210	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	211	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	212	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	213	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	214	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	215	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	216	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	217	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	218	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	219	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	220	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	221	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	222	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	223	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	225	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	226	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	227	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	229	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	230	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	231	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	233	قسم البريد السريع	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	234	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	236	قسم المراجعة والتدقيق	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	237	قسم الحسابات والخزينة	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	238	قسم الفرز	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	240	قسم الطرود البريدية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
6	241	مكاتب البريد الفرعية	\N	الادارة العامة للبريد	\N	2016-03-31	\N
12	1	مكتب بريد العيزيربة	\N	\N	\N	2016-04-03	\N
12	2	مكتب بريد البيرة	\N	\N	\N	2016-04-03	\N
12	3	مكتب بريد بيرزيت	\N	\N	\N	2016-04-03	\N
12	4	مكتب بريد دورا	\N	\N	\N	2016-04-03	\N
12	5	مكتب بريد حلحول	\N	\N	\N	2016-04-03	\N
12	6	مكتب بريد بيت ساحور	\N	\N	\N	2016-04-03	\N
12	7	مكتب بريد بيت جالا	\N	\N	\N	2016-04-03	\N
14	49	مكتب بريد بني زيد الشرقية (عارورة)	\N	\N	\N	2016-04-03	\N
6	245	قسم الصياغة القانونية	\N	الدائرة القانونية لشؤون البريد	\N	2016-12-01	\N
6	246	قسم الدراسات والأبحاث	\N	الدائرة القانونية لشؤون البريد	\N	2016-12-01	\N
5	85	دائرة تراخيص طوباس	\N	\N	\N	2017-03-15	\N
11	27	بريد دير دبوان	\N	\N	\N	2016-11-02	\N
11	28	بريد الطيبة	\N	\N	\N	2016-11-02	\N
11	29	بريد سلواد	\N	\N	\N	2016-11-02	\N
11	30	بريد بني زيد الغربية	\N	\N	\N	2016-11-02	\N
11	31	بريد سنجل	\N	\N	\N	2016-11-02	\N
11	32	بريد بيتونيا	\N	\N	\N	2016-11-02	\N
11	33	بريد المرزعة الشرقية	\N	\N	\N	2016-11-02	\N
11	34	بريد عبوين	\N	\N	\N	2016-11-02	\N
11	35	بريد الداخلية	\N	\N	\N	2016-11-02	\N
7	261	شعبة قسم دراسة السوق	\N	 تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	262	شعبة قسم الاحصاء	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	263	شعبة قسم العقود	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	264	شعبة قسم الشكاوي والمتابعة	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	265	شعبة قسم البث المرئي	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	266	شعبة قسم البث المسموع	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	267	شعبة قسم المواصفات	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
7	268	شعبة قسم المقاييس	\N	تابع الادارة العامة للتراخيص	\N	2016-03-30	\N
6	160	قسم الصياغة القانونية	\N	تابع وحدة الشؤون القانونية	\N	2016-03-30	\N
6	161	قسم شؤون البريد	\N	تابع وحدة الشؤون القانونية	\N	2016-03-30	\N
5	70	دائرة مكتب بريد رئيسي أريحا	\N	\N	\N	2016-03-30	\N
5	71	دائرة مكتب بريد رئيسي الخليل	\N	\N	\N	2016-03-30	\N
5	72	دائرة مكتب بريد رئيسي القدس	\N	\N	\N	2016-03-30	\N
5	73	دائرة مكتب بريد رئيسي بيت لحم	\N	\N	\N	2016-03-30	\N
5	74	دائرة مكتب بريد رئيسي جنين	\N	\N	\N	2016-03-30	\N
5	75	دائرة مكتب بريد رئيسي رام الله	\N	\N	\N	2016-03-30	\N
5	76	دائرة مكتب بريد رئيسي سلفيت	\N	\N	\N	2016-03-30	\N
5	77	دائرة مكتب بريد رئيسي طوباس	\N	\N	\N	2016-03-30	\N
5	78	دائرة مكتب بريد رئيسي طولكرم	\N	\N	\N	2016-03-30	\N
5	79	دائرة مكتب بريد رئيسي قلقيلية	\N	\N	\N	2016-03-30	\N
5	80	دائرة مكتب بريد رئيسي نابلس	\N	\N	\N	2016-03-30	\N
4	10	الموظفين غير المثبتين	\N	\N	\N	2016-04-19	\N
5	82	عقود الديوان	\N	\N	\N	2016-04-19	\N
5	83	عقود المالية	\N	\N	\N	2016-04-19	\N
5	84	البطالة الموازية	\N	\N	\N	2016-04-19	\N
9	52	ق.أ رئيس	\N	\N	\N	2016-04-03	\N
7	291	شعبة قسم انظمة المعلومات MIS	\N	الادارة العامة للشؤون الادالرية والمالية	\N	2016-04-03	\N
9	53	ق.أ وكيل الوزارة	\N	\N	\N	2016-04-03	\N
7	303	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	304	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	305	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	306	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	307	شعبة شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	308	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	309	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	310	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	311	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	312	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	313	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	314	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	315	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	316	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	317	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	318	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	319	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	320	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	321	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	322	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	323	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	324	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	325	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	326	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	327	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	328	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	329	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	330	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	331	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	332	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	333	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	334	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	335	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	336	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	337	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	338	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	339	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	340	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	341	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	342	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	343	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	344	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	345	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	346	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	347	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	348	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	349	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	350	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	351	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	352	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	353	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	354	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	355	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	356	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	357	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	358	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	359	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	360	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	361	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	362	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	363	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	364	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	365	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	366	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	367	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	368	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	369	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	370	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	371	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	372	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	373	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	374	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	375	 شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	376	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	377	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	378	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	379	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	380	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	381	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	382	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	383	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	384	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	385	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	386	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	387	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	388	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	389	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
7	390	شعبة مسؤولي شباك	\N	\N	\N	2016-04-04	\N
7	391	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	392	شعبة المسجل	\N	\N	\N	2016-04-04	\N
7	393	شعبة التدقيق	\N	\N	\N	2016-04-04	\N
7	394	شعبة الصناديق	\N	\N	\N	2016-04-04	\N
7	395	شعبة الموزعين	\N	\N	\N	2016-04-04	\N
7	396	شعبة الوارد	\N	\N	\N	2016-04-04	\N
7	397	شعبة الصادر	\N	\N	\N	2016-04-04	\N
7	398	شعبة الطرود الواردة	\N	\N	\N	2016-04-04	\N
7	399	شعبة الطرود الصادرة	\N	\N	\N	2016-04-04	\N
7	400	شعبة قسم المراجعة والتدقيق	\N	\N	\N	2016-04-04	\N
7	401	شعبة ادخال البيانات	\N	\N	\N	2016-04-04	\N
\.


--
-- TOC entry 3944 (class 0 OID 49433)
-- Dependencies: 273
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.attendance (id, employee_no, date, state, type, device_id) FROM stdin;
\.


--
-- TOC entry 3921 (class 0 OID 49215)
-- Dependencies: 250
-- Data for Name: attendance_agreement_employee_actions; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.attendance_agreement_employee_actions (id, employee_id, agreement_id, start_date, end_date) FROM stdin;
1	1	1	2023-06-02	\N
\.


--
-- TOC entry 3917 (class 0 OID 49187)
-- Dependencies: 246
-- Data for Name: attendance_agreements; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.attendance_agreements (id, name, description) FROM stdin;
1	اتفاقية العمل الاداري العام	8:00-15:00
2	اتفاقية الدوام المسائي	22:00-16:00
\.


--
-- TOC entry 3919 (class 0 OID 49198)
-- Dependencies: 248
-- Data for Name: attendance_agreements_details; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.attendance_agreements_details (id, agreement_id, day, att_status, start_time, end_time, check_in_end, allowed_time_check_in, allowed_time_check_out, allowed_p_leave_hours) FROM stdin;
1	1	Sun	3	08:00:00	15:00:00	11:00:00	15	15	3
2	1	Mon	3	08:00:00	15:00:00	11:00:00	15	15	3
3	1	Tue	3	08:00:00	15:00:00	11:00:00	15	15	3
4	1	Wed	3	08:00:00	15:00:00	11:00:00	15	15	3
5	1	Thu	3	08:00:00	15:00:00	11:00:00	15	15	3
6	1	Fri	5	00:00:00	00:00:00	00:00:00	0	0	0
7	1	Sat	5	00:00:00	00:00:00	00:00:00	0	0	0
\.


--
-- TOC entry 3915 (class 0 OID 49176)
-- Dependencies: 244
-- Data for Name: attendance_check_in_out; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.attendance_check_in_out (id, employee_id, date, check_in, check_out, device_id) FROM stdin;
\.


--
-- TOC entry 3938 (class 0 OID 49404)
-- Dependencies: 267
-- Data for Name: crediting; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.crediting (id, year_credi, create_user, create_date) FROM stdin;
\.


--
-- TOC entry 3907 (class 0 OID 49104)
-- Dependencies: 236
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.devices (id, name, device_ip, serial, area, status) FROM stdin;
1	ساعة المقر الرئيسي	10.98.67.31	316134800016	محافظة رام الله والبيرة	t
\.


--
-- TOC entry 3886 (class 0 OID 16387)
-- Dependencies: 215
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
HR\\Migrations\\Version20230315105641_permissions_table	2023-11-29 10:45:07	569
HR\\Migrations\\Version20230315113430_permissions_seeder	2023-11-29 10:45:08	20
HR\\Migrations\\Version20230315114508_role_table	2023-11-29 10:45:08	121
HR\\Migrations\\Version20230315114745_roles_seeder	2023-11-29 10:45:08	11
HR\\Migrations\\Version20230328095355_permission_role_table	2023-11-29 10:45:08	105
HR\\Migrations\\Version20230328100616_permission_role_seeder	2023-11-29 10:45:08	6
HR\\Migrations\\Version20230338075707_os_table	2023-11-29 10:45:08	38
HR\\Migrations\\Version20230340084318_os_seeder	2023-11-29 10:45:08	11
HR\\Migrations\\Version20230406071856_employee_basic_info_table	2023-11-29 10:45:08	88
HR\\Migrations\\Version20230409115604_employee_basic_info_seeder	2023-11-29 10:45:08	13
HR\\Migrations\\Version20230409274017_employee_job_info_table	2023-11-29 10:45:08	101
HR\\Migrations\\Version20230411100949_employee_job_info_seeder	2023-11-29 10:45:09	0
HR\\Migrations\\Version20230411101036_employee_addresses_info_table	2023-11-29 10:45:09	102
HR\\Migrations\\Version20230411101054_employee_addresses_info_seeder	2023-11-29 10:45:09	0
HR\\Migrations\\Version20230411102145_employee_education_info_table	2023-11-29 10:45:09	122
HR\\Migrations\\Version20230411102148_employee_education_seeder	2023-11-29 10:45:09	0
HR\\Migrations\\Version20230411111351_employee_contacts_info_table	2023-11-29 10:45:09	127
HR\\Migrations\\Version20230411111353_employee_contacts_info_seeder	2023-11-29 10:45:09	5
HR\\Migrations\\Version20230412090307_att_emp_table	2023-11-29 10:45:09	86
HR\\Migrations\\Version20230413055059_att_emp_seeder	2023-11-29 10:45:09	303
HR\\Migrations\\Version20230518075234_vacation_setting_table	2023-11-29 10:45:09	98
HR\\Migrations\\Version20230518080318_vacation_setting_seeder	2023-11-29 10:45:09	15
HR\\Migrations\\Version20230518081037_devices_table	2023-11-29 10:45:09	114
HR\\Migrations\\Version20230518082229_devices_seeder	2023-11-29 10:45:10	11
HR\\Migrations\\Version20230521074203_emp_vac_balance_table	2023-11-29 10:45:10	123
HR\\Migrations\\Version20230521074846_emp_vac_balance_seeder	2023-11-29 10:45:10	5
HR\\Migrations\\Version20230521084623_leave_table	2023-11-29 10:45:10	155
HR\\Migrations\\Version20230521084747_leave_seeder	2023-11-29 10:45:10	0
HR\\Migrations\\Version20230522064539_emp_vacation_table	2023-11-29 10:45:10	159
HR\\Migrations\\Version20230522065418_emp_vacation_seeder	2023-11-29 10:45:10	5
HR\\Migrations\\Version20230530090256_attendance_check_in_out_table	2023-11-29 10:45:10	124
HR\\Migrations\\Version20230601104700_attendance_agreements_table	2023-11-29 10:45:10	140
HR\\Migrations\\Version20230601104822_attendance_agreements_seeder	2023-11-29 10:45:10	11
HR\\Migrations\\Version20230601111408_attendance_agreements_details_table	2023-11-29 10:45:10	166
HR\\Migrations\\Version20230601113310_attendance_agreements_details_seeder	2023-11-29 10:45:10	7
HR\\Migrations\\Version20230607081413_attendance_agreement_employee_actions_table	2023-11-29 10:45:10	191
HR\\Migrations\\Version20230607082134_attendance_agreement_employee_actions_seeder	2023-11-29 10:45:11	6
HR\\Migrations\\Version20230613091845_employee_os	2023-11-29 10:45:11	227
HR\\Migrations\\Version20230613092728_employee_os_seeder	2023-11-29 10:45:11	7
HR\\Migrations\\Version20230619070847_menu_table	2023-11-29 10:45:11	152
HR\\Migrations\\Version20230619070854_menu_seeder	2023-11-29 10:45:11	10
HR\\Migrations\\Version20230619071629_menu_items_table	2023-11-29 10:45:11	218
HR\\Migrations\\Version20230619071632_menu_items_seeder	2023-11-29 10:45:11	8
HR\\Migrations\\Version20230706092715_att_org_items_table	2023-11-29 10:45:11	119
HR\\Migrations\\Version20230706093259_att_org_items_seeder	2023-11-29 10:45:11	29
HR\\Migrations\\Version20230709065158_att_org_chart_table	2023-11-29 10:45:11	128
HR\\Migrations\\Version20230709070207_att_org_chart_seeder	2023-11-29 10:45:12	41
HR\\Migrations\\Version20230710052412_jobs_table	2023-11-29 10:45:12	129
HR\\Migrations\\Version20230710053735_jobs_seeder	2023-11-29 10:45:12	11
HR\\Migrations\\Version20230710071252_att_org_emp_node_table	2023-11-29 10:45:12	164
HR\\Migrations\\Version20230710071640_att_org_emp_node_seeder	2023-11-29 10:45:12	610
HR\\Migrations\\Version20230713080613_vacation_type_table	2023-11-29 10:45:13	158
HR\\Migrations\\Version20230713080655_vacation_type_seeder	2023-11-29 10:45:13	15
HR\\Migrations\\Version20230822083625_job_assigment_emp_seeder	2023-11-29 10:45:13	0
HR\\Migrations\\Version20230822083625_job_assigment_seeder	2023-11-29 10:45:13	0
HR\\Migrations\\Version20230822083625_job_assigment_table	2023-11-29 10:45:13	175
HR\\Migrations\\Version20230829110640_job_os_relation	2023-11-29 10:45:13	147
HR\\Migrations\\Version20230919114322_crediting_seeder	2023-11-29 10:45:13	0
HR\\Migrations\\Version20230919114322_crediting_table	2023-11-29 10:45:13	153
HR\\Migrations\\Version20231011181135_job_assigment_dep_seeder	2023-11-29 10:45:13	0
HR\\Migrations\\Version20231011181135_job_assigment_dep_table	2023-11-29 10:45:13	164
HR\\Migrations\\Version20231011181135_job_assigment_emp_table	2023-11-29 10:45:13	158
HR\\Migrations\\Version20231031104929_Permissions_seeder2	2023-11-29 10:45:14	0
HR\\Migrations\\Version20231105102001_permission_role_seeder2	2023-11-29 10:45:14	0
HR\\Migrations\\Version20231106090802	2023-11-29 10:45:14	0
HR\\Migrations\\Version20231108083213_attendance_table	2023-11-29 10:45:14	190
HR\\Migrations\\Version20231115044918_memo_table	2023-11-29 10:45:14	216
HR\\Migrations\\Version20231115062743_memo_attachments_table	2023-11-29 10:45:14	206
HR\\Migrations\\Version20231115062830_memo_comments	2023-11-29 10:45:14	216
HR\\Migrations\\Version20231115062911_memo_recipients	2023-11-29 10:45:14	194
\.


--
-- TOC entry 3909 (class 0 OID 49117)
-- Dependencies: 238
-- Data for Name: emp_vac_balance; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.emp_vac_balance (id, employee_id, vacation_type, start_balance, current_balance) FROM stdin;
1	1	1	30	30
2	1	2	90	90
3	1	3	30	30
4	1	6	10	10
5	689	1	30	30
6	689	2	90	90
7	689	3	30	30
8	689	6	10	10
\.


--
-- TOC entry 3913 (class 0 OID 49154)
-- Dependencies: 242
-- Data for Name: emp_vacation; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.emp_vacation (id, employee_id, vacation_type, annual_vac_type, start_date, end_date, address, mobile, phone, notes, vacation_status, substitute_employee, create_user, create_date, approve_user, approve_date) FROM stdin;
1	1	1	1	2023-01-05	2023-01-05	Nablus	152364897	12548795	Whatever	1	Enas Qadous	1	2023-01-31 00:00:00	\N	\N
\.


--
-- TOC entry 3898 (class 0 OID 48964)
-- Dependencies: 227
-- Data for Name: employee_addresses_info; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.employee_addresses_info (id, employee_id, address, city, region, street, postal_code) FROM stdin;
1	81	عقبة جبر -اريحا	10			
2	770	اريحا فارعة الجفتلك	10			
3	784	بيت امر - الخليل	12			
4	87	الفوار الخليل	12			
5	88	الخليل	12			
6	89	الخليل -عين سارة	12			
7	92	الخليل -دورا -خربة سيميا	12			
8	96	بيت - اولا	12			
9	97	بيت اكسا - رام الله	2			
10	98	ابوديس - القدس	1			
11	100	القدس - الرام	1			
12	777	الخضر - بيت لحم	8			
13	103		8			
14	104	بيت لحم	8			
15	105	بيت جالا-بيت لحم	8			
16	106		0			
17	54	قباطيه جنين	5			
18	55	فقوعه_جينين	5			
19	56	جنين	5			
20	57		0			
21	58	ابوشخيدم -رام الله	2			
22	59	ابوشخيدم-رام الله	2			
23	775	رام الله - عين سينيا	2			
24	782	بيتونيا	2			
25	60		0			
26	766	رام الله	2			
27	61	المصيون-رام الله	2			
28	62		3			
29	63		0			
30	767	سلواد	2			
31	64	رام الله نعلين	2			
32	65	بيت ريما - رام الله	2			
33	66		0			
34	783	عبوين - رام الله	2			
35	68	نعلين-رام الله	2			
36	768	رام الله-نعلين	2			
37	69	دير دبوان رام الله	2			
38	70	رمون-رام الله	2			
39	71	رام الله - قلنديا	2			
40	769	رام الله سنجل	2			
41	72	رام الله - جيفنا	2			
42	73		0			
43	74	البيرة	13			
44	75	عابود	5			
45	76	رام الله-بيت اكسا	2			
46	23		0			
47	24	عابود	2			
48	26	رام الله - عين سينيا	2			
49	28	رام الله -ابوشخيدم	2			
50	715		0			
51	31	بيت ليد - طولكرم	4			
52	801		0			
53	40	كفر الديك - سلفيت	7			
54	765	دير غصون	4			
55	49	طولكرم-محنه	4			
56	735	بيت ليد-طولكرم	4			
57	780	كفر قدوم	6			
58	52	قلقيليه	6			
59	53		0			
60	776	نابلس المخفية	3			
61	2	نابلس	3			
62	3	قبلان نابلس	3			
63	12		0			
64	14		0			
65	17	نابلس	3			
66	764	جنين -مخيم جنين-حارة الدوح	5			
67	18	الخليل	12			
68	19	يطا	12			
69	20		0			
70	21		0			
71	713	فلسطين بيت جالا	8			
72	714	الخليل - الظاهرية	12			
73	721	كفر رمان	2			
74	727		0			
75	730		0			
76	731		0			
77	732		0			
78	733	ابوشخيدم-رام الله	2			
79	734	مخيم الجلزون -	2			
80	736	الخليل	12			
81	737	المزرعه الشرقية	2			
82	738	بيتونيا - رام الله	2			
83	739	عتيل - طولكرم	4			
84	740	جنين	5			
85	741	بير زيت	14			
86	742	رام الله	0			
87	743		0			
88	744	البيرة - رام الله	2			
89	745	بديا - سلفيت	7			
90	813	دورا -الخليل	12			
91	746	رام الله البيرة مخيم الأمعري	2			
92	749		0			
93	750	البيره -سطح مرحبا	1			
94	792	نابلس	3			
95	751	اريحا	10			
96	752	كفر حارس	3			
97	754	طوباس	9			
98	805	قلقيلية	6			
99	753	طولكرم	4			
100	771		0			
101	772		0			
102	759	عبوين -رام الله	2			
103	762		0			
104	761	بيت لحم -بيت ساحور	8			
105	803		0			
106	804		0			
107	807		0			
108	809		0			
109	810		0			
110	811		0			
111	812		0			
112	814		0			
113	816		0			
114	815		0			
115	817		0			
116	818		0			
117	819		0			
118	821		0			
119	822		0			
120	823		0			
121	824		0			
122	826		0			
123	827		0			
124	828		0			
125	829		0			
126	834		0			
127	836		0			
128	837		0			
129	838		0			
130	839		0			
131	840		0			
132	841		0			
133	849		0			
134	847		0			
135	852		0			
136	854		0			
137	857		0			
138	860		0			
139	861		0			
140	862		0			
141	863		0			
142	864		0			
143	865		0			
144	866		0			
145	867		0			
146	868		0			
147	873		0			
148	874		0			
149	875		0			
150	872		0			
151	869		0			
152	871		0			
153	870		0			
154	881		0			
155	879		0			
156	880		0			
157	883		0			
158	882		0			
159	886		0			
160	851		0			
161	885		0			
162	887		0			
163	888		0			
164	889		0			
165	891		0			
166	892		0			
167	893		0			
168	894		0			
169	895		0			
170	899		0			
171	896		0			
172	897		0			
173	900		0			
174	902		0			
175	903		0			
176	904		0			
177	906		0			
178	905		0			
179	907		0			
180	908		0			
181	909		0			
182	910		0			
183	911		0			
184	914		0			
185	915		0			
186	916		0			
187	917		0			
188	926		0			
189	919		0			
190	922		0			
191	920		0			
192	923		0			
193	924		0			
194	925		0			
195	928		0			
196	927		0			
197	929		0			
198	939		0			
199	930		0			
200	931		0			
201	932		0			
202	933		0			
203	934		0			
204	935		0			
205	940		0			
206	936		0			
207	937		0			
208	941		0			
209	942		0			
210	938		0			
211	998		0			
212	943		0			
213	944		0			
214	945		0			
215	946		0			
216	947		0			
217	952		0			
218	950		0			
219	951		0			
220	953		0			
221	969		0			
222	966		0			
223	971		0			
224	968		0			
225	967		0			
226	972		0			
227	970		0			
228	979		0			
229	955		0			
230	958		0			
231	975		0			
232	976		0			
233	977		0			
234	973		0			
235	954		0			
236	980		0			
237	957		0			
238	1025		0			
239	1007		0			
240	981		0			
241	982		0			
242	983		0			
243	984		0			
244	985		0			
245	986		0			
246	987		0			
247	988		0			
248	989		0			
249	990		0			
250	991		0			
251	992		0			
252	993		0			
253	994		0			
254	995		0			
255	997		0			
256	999		0			
257	1000		0			
258	1001		0			
259	1002		0			
260	1003		0			
261	1008		0			
262	1004		0			
263	1006		0			
264	1024		0			
265	1011		0			
266	1333		0			
267	1010		0			
268	1021		0			
269	1036		0			
270	1019		0			
271	1028		0			
272	1020		0			
273	1022		0			
274	1023		0			
275	1026		0			
276	1034		0			
277	1027		0			
278	1029		0			
279	1030		0			
280	1031		0			
281	1032		0			
282	1091		0			
283	974		0			
284	1052		0			
285	1044		0			
286	1035		0			
287	1040		0			
288	1053		0			
289	1054		0			
290	1092		0			
291	1043		0			
292	1037		0			
293	1041		0			
294	1102		0			
295	1038		0			
296	1042		0			
297	1039		0			
298	1094		0			
299	1045		0			
300	1046		0			
301	1047		0			
302	1048		0			
303	1049		0			
304	1097		0			
305	1093		0			
306	1096		0			
307	1095		0			
308	1098		0			
309	1099		0			
310	1100		0			
311	1101		0			
312	1104		0			
313	1105		0			
314	996		0			
315	1110		0			
316	1106		0			
317	1107		0			
318	1108		0			
319	1109		0			
320	1112		0			
321	1115		0			
322	1113		0			
323	1114		0			
324	1132		0			
325	1133		0			
326	1139		0			
327	1134		0			
328	1135		0			
329	1138		0			
330	1136		0			
331	1143		0			
332	1141		0			
333	1144		0			
334	1145		0			
335	1146		0			
336	1147		0			
337	1150		0			
338	1169		0			
339	1170		0			
340	1187		0			
341	1186		0			
342	1197		0			
343	1198		0			
344	1195		0			
345	1196		0			
346	1213		0			
347	1214		0			
348	1218		0			
349	1219		0			
350	1224		0			
351	1220		0			
352	1223		0			
353	1222		0			
354	1221		0			
355	1226		0			
356	1227		0			
357	78		0			
358	79		0			
359	38		0			
360	39		0			
361	774		0			
362	778		0			
363	41		0			
364	779		0			
365	1235		0			
366	1240		0			
367	1243		0			
368	1245		0			
369	1244		0			
370	1242		0			
371	1251		0			
372	1252		0			
373	1253		0			
374	1254		0			
375	1273		0			
376	1274		0			
377	1278		0			
378	1279		0			
379	1284		0			
380	1277		0			
381	1307		0			
382	1308		0			
383	1309		0			
384	1005		0			
385	1123		0			
386	1117		0			
387	1127		0			
388	1119		0			
389	1121		0			
390	1120		0			
391	1130		0			
392	1129		0			
393	1125		0			
394	1118		0			
395	1126		0			
396	1124		0			
397	1131		0			
398	1122		0			
399	1128		0			
400	1116		0			
401	1140		0			
402	1149		0			
403	1148		0			
404	1202		0			
405	1203		0			
406	786		0			
407	785		0			
408	1241		0			
409	1276		0			
410	326	قطاع غزة	15			
411	802		0			
412	1225		0			
413	360	قطاع غزة	15			
414	333	قطاع غزة	15			
415	497	قطاع غزة	15			
416	763		0			
417	337	قطاع غزة	15			
418	362	قطاع غزة	15			
419	535	قطاع غزة	15			
420	399	قطاع غزة	15			
421	325	قطاع غزة	15			
422	442	قطاع غزة	15			
423	429	قطاع غزة	15			
424	918		0			
425	304	قطاع غزة	15			
426	275	قطاع غزة	15			
427	448	قطاع غزة	15			
428	363	قطاع غزة	15			
429	382	قطاع غزة	15			
430	532	قطاع غزة	15			
431	364	قطاع غزة	15			
432	377	قطاع غزة	15			
433	513	قطاع غزة	15			
434	455	قطاع غزة	15			
435	282	قطاع غزة	15			
436	454	قطاع غزة	15			
437	407	قطاع غزة	15			
438	383	قطاع غزة	15			
439	541	قطاع غزة	15			
440	386	قطاع غزة	15			
441	478	قطاع غزة	15			
442	301	قطاع غزة	15			
443	375	قطاع غزة	15			
444	388	قطاع غزة	15			
445	384	قطاع غزة	15			
446	328	قطاع غزة	15			
447	315	قطاع غزة	15			
448	336	قطاع غزة	15			
449	425	قطاع غزة	15			
450	543	قطاع غزة	15			
451	405	قطاع غزة	15			
452	393	قطاع غزة	15			
453	501	قطاع غزة	15			
454	509	قطاع غزة	15			
455	280	قطاع غزة	15			
456	533	قطاع غزة	15			
457	491	قطاع غزة	15			
458	355	قطاع غزة	15			
459	400	قطاع غزة	15			
460	390	قطاع غزة	15			
461	526	قطاع غزة	15			
462	531	قطاع غزة	15			
463	318	قطاع غزة	15			
464	351	قطاع غزة	15			
465	369	قطاع غزة	15			
466	368	قطاع غزة	15			
467	371	قطاع غزة	15			
468	331	قطاع غزة	15			
469	504	قطاع غزة	15			
470	477	قطاع غزة	15			
471	487	قطاع غزة	15			
472	469	قطاع غزة	15			
473	434	قطاع غزة	15			
474	415	قطاع غزة	15			
475	316	قطاع غزة	15			
476	290	قطاع غزة	15			
477	451	قطاع غزة	15			
478	611		0			
479	495	قطاع غزة	15			
480	450	قطاع غزة	15			
481	361	قطاع غزة	15			
482	357	قطاع غزة	15			
483	518	قطاع غزة	15			
484	317	قطاع غزة	15			
485	270	قطاع غزة	15			
486	404	قطاع غزة	15			
487	403	قطاع غزة	15			
488	292	قطاع غزة	15			
489	446	قطاع غزة	15			
490	298	قطاع غزة	15			
491	1103		0			
492	272	قطاع غزة	15			
493	422	قطاع غزة	15			
494	496	قطاع غزة	15			
495	534	قطاع غزة	15			
496	488	قطاع غزة	15			
497	421	قطاع غزة	15			
498	347	قطاع غزة	15			
499	520	قطاع غزة	15			
500	378	قطاع غزة	15			
501	67	قطاع غزة	15			
502	356	قطاع غزة	15			
503	506	قطاع غزة	15			
504	503	قطاع غزة	15			
505	338	قطاع غزة	15			
506	463	قطاع غزة	15			
507	345	قطاع غزة	15			
508	570		0			
509	348	قطاع غزة	15			
510	374	قطاع غزة	15			
511	431	قطاع غزة	15			
512	379	قطاع غزة	15			
513	296	قطاع غزة	15			
514	365	قطاع غزة	15			
515	418	قطاع غزة	15			
516	295	قطاع غزة	15			
517	302	قطاع غزة	15			
518	285	قطاع غزة	15			
519	528	قطاع غزة	15			
520	505	قطاع غزة	15			
521	297	قطاع غزة	15			
522	306	قطاع غزة	15			
523	392	قطاع غزة	15			
524	271	رام الله	2			
525	284	قطاع غزة	15			
526	630		0			
527	288	قطاع غزة	15			
528	514	قطاع غزة	15			
529	427	قطاع غزة	15			
530	468	قطاع غزة	15			
531	476	قطاع غزة	15			
532	530	قطاع غزة	15			
533	484	قطاع غزة	15			
534	494	قطاع غزة	15			
535	323	قطاع غزة	15			
536	376	قطاع غزة	15			
537	499	قطاع غزة	15			
538	332	قطاع غزة	15			
539	299	قطاع غزة	15			
540	498	قطاع غزة	15			
541	423	قطاع غزة	15			
542	319	قطاع غزة	15			
543	444	قطاع غزة	15			
544	269	قطاع غزة	15			
545	300	قطاع غزة	15			
546	335	قطاع غزة	15			
547	436	قطاع غزة	15			
548	312	قطاع غزة	15			
549	500	قطاع غزة	15			
550	540	قطاع غزة	15			
551	349	قطاع غزة	15			
552	291	قطاع غزة	15			
553	366	قطاع غزة	15			
554	350	قطاع غزة	15			
555	517	قطاع غزة	15			
556	510	قطاع غزة	15			
557	485	قطاع غزة	15			
558	516	قطاع غزة	15			
559	545	قطاع غزة	15			
560	303	قطاع غزة	15			
561	417	قطاع غزة	15			
562	470	قطاع غزة	15			
563	475	قطاع غزة	15			
564	432	قطاع غزة	15			
565	391	قطاع غزة	15			
566	435	قطاع غزة	15			
567	462	قطاع غزة	15			
568	471	قطاع غزة	15			
569	1111		0			
570	340	قطاع غزة	15			
571	359	قطاع غزة	15			
572	511	قطاع غزة	15			
573	293	قطاع غزة	15			
574	461	قطاع غزة	15			
575	426	قطاع غزة	15			
576	537	قطاع غزة	15			
577	573		0			
578	467	قطاع غزة	15			
579	253	قطاع غزة	15			
580	373	قطاع غزة	15			
581	481	قطاع غزة	15			
582	395	قطاع غزة	15			
583	224		0			
584	352	قطاع غزة	15			
585	439	قطاع غزة	15			
586	311	قطاع غزة	15			
587	397	قطاع غزة	15			
588	381	قطاع غزة	15			
589	310	قطاع غزة	15			
590	353	قطاع غزة	15			
591	1137		0			
592	410	قطاع غزة	15			
593	398	قطاع غزة	15			
594	507	قطاع غزة	15			
595	474	قطاع غزة	15			
596	472	قطاع غزة	15			
597	372	قطاع غزة	15			
598	329	قطاع غزة	15			
599	396	قطاع غزة	15			
600	314	قطاع غزة	15			
601	339	قطاع غزة	15			
602	346	قطاع غزة	15			
603	529	قطاع غزة	15			
604	344	قطاع غزة	15			
605	447	قطاع غزة	15			
606	367	قطاع غزة	15			
607	413	قطاع غزة	15			
608	437	قطاع غزة	15			
609	486	قطاع غزة	15			
610	268	قطاع غزة	15			
611	460	قطاع غزة	15			
612	441	قطاع غزة	15			
613	433	قطاع غزة	15			
614	508	قطاع غزة	15			
615	289	قطاع غزة	15			
616	260	قطاع غزة	15			
617	259	قطاع غزة	15			
618	283	قطاع غزة	15			
619	294	قطاع غزة	15			
620	281	قطاع غزة	15			
621	453	قطاع غزة	15			
622	274	قطاع غزة	15			
623	424	قطاع غزة	15			
624	523	قطاع غزة	15			
625	440	قطاع غزة	15			
626	525	قطاع غزة	15			
627	334	قطاع غزة	15			
628	358	قطاع غزة	15			
629	256	قطاع غزة	15			
630	263	قطاع غزة	15			
631	264	قطاع غزة	15			
632	265	قطاع غزة	15			
633	406	قطاع غزة	15			
634	380	قطاع غزة	15			
635	257	قطاع غزة	15			
636	521	قطاع غزة	15			
637	261	قطاع غزة	15			
638	544	قطاع غزة	15			
639	262	قطاع غزة	15			
640	313	قطاع غزة	15			
641	354	قطاع غزة	15			
642	385	قطاع غزة	15			
643	267	قطاع غزة	15			
644	466	قطاع غزة	15			
645	276	قطاع غزة	15			
646	414	قطاع غزة	15			
647	492	قطاع غزة	15			
648	255	قطاع غزة	15			
649	438	قطاع غزة	15			
650	273	قطاع غزة	15			
651	266	قطاع غزة	15			
652	519	قطاع غزة	15			
653	536	قطاع غزة	15			
654	452	قطاع غزة	15			
655	465	قطاع غزة	15			
656	408	قطاع غزة	15			
657	279	قطاع غزة	15			
658	428	قطاع غزة	15			
659	320	قطاع غزة	15			
660	389	قطاع غزة	15			
661	464	قطاع غزة	15			
662	254	قطاع غزة	15			
663	416	قطاع غزة	15			
664	718		0			
665	327	قطاع غزة	15			
666	324	قطاع غزة	15			
667	307	قطاع غزة	15			
668	546	قطاع غزة	15			
669	542	قطاع غزة	15			
670	258	قطاع غزة	15			
671	445	قطاع غزة	15			
672	287	قطاع غزة	15			
673	548	قطاع غزة	15			
674	524	قطاع غزة	15			
675	321	قطاع غزة	15			
676	458	قطاع غزة	15			
677	108		0			
678	512	قطاع غزة	15			
679	330	قطاع غزة	15			
680	547	قطاع غزة	15			
681	252	قطاع غزة	15			
682	309	قطاع غزة	15			
683	473	قطاع غزة	15			
684	430	قطاع غزة	15			
685	527	قطاع غزة	15			
686	419	قطاع غزة	15			
687	490	قطاع غزة	15			
688	170	قطاع غزة	15			
689	278	قطاع غزة	15			
690	449	قطاع غزة	15			
691	401	قطاع غزة	15			
692	480	قطاع غزة	15			
693	286	قطاع غزة	15			
694	251	قطاع غزة	15			
695	522	قطاع غزة	15			
696	342	قطاع غزة	15			
697	420	قطاع غزة	15			
698	411	قطاع غزة	15			
699	341	قطاع غزة	15			
700	412	قطاع غزة	15			
701	538	قطاع غزة	15			
702	489	قطاع غزة	15			
703	443	قطاع غزة	15			
704	409	قطاع غزة	15			
705	483	قطاع غزة	15			
706	343	قطاع غزة	15			
707	394	قطاع غزة	15			
708	308	قطاع غزة	15			
709	1229		0			
710	787		0			
711	231		0			
712	159		0			
713	603		0			
714	11		0			
715	166		1			
716	622		0			
717	238		0			
718	212		0			
719	135		0			
720	692		0			
721	216		0			
722	130		0			
723	592		0			
724	581		0			
725	248		0			
726	577		0			
727	227		0			
728	658		0			
729	684		0			
730	110		0			
731	605		0			
732	249		0			
733	604		0			
734	617		0			
735	171		0			
736	163		0			
737	139		0			
738	169		0			
739	165		0			
740	664		0			
741	245		0			
742	242		0			
743	156		0			
744	202		0			
745	150		0			
746	579		0			
747	748		0			
748	690		0			
749	610		0			
750	678		0			
751	576		0			
752	556		0			
753	167		0			
754	112		0			
755	850		0			
756	552		0			
757	136		0			
758	629		0			
759	705		0			
760	707		0			
761	574		0			
762	34		0			
763	109		0			
764	688		0			
765	558		0			
766	215		0			
767	632		0			
768	578		0			
769	654		0			
770	207		0			
771	175		0			
772	220		0			
773	575		0			
774	183		0			
775	549		0			
776	625		0			
777	710		0			
778	200		0			
779	178		0			
780	221		0			
781	711		0			
782	125		0			
783	230		0			
784	154		0			
785	670		0			
786	182		0			
787	116		0			
788	157		0			
789	667		0			
790	686		0			
791	571		0			
792	680		0			
793	194		0			
794	624		0			
795	921		0			
796	199		0			
797	113		0			
798	567		0			
799	192		0			
800	586		0			
801	644		0			
802	687		0			
803	669		0			
804	217		0			
805	660		0			
806	612		0			
807	144		0			
808	665		0			
809	107		0			
810	641		0			
811	187		0			
812	561		0			
813	555		0			
814	615		0			
815	597		0			
816	912		0			
817	876		0			
818	673		0			
819	627		0			
820	596		0			
821	134		0			
822	140		0			
823	640		0			
824	683		0			
825	120		0			
826	149		0			
827	806		0			
828	724		0			
829	160		0			
830	161		0			
831	117		0			
832	598		0			
833	794		0			
834	648		0			
835	820		0			
836	553		0			
837	145		0			
838	652		0			
839	225		0			
840	203		0			
841	562		0			
842	585		0			
843	164		0			
844	619		0			
845	565		0			
846	580		0			
847	115		0			
848	147		0			
849	173		0			
850	563		0			
851	208		0			
852	129		0			
853	656		0			
854	153		0			
855	693		0			
856	118		0			
857	198		0			
858	551		0			
859	189		0			
860	569		0			
861	184		0			
862	618		0			
863	124		0			
864	628		0			
865	559		0			
866	595		0			
867	222		0			
868	668		0			
869	568		0			
870	151		0			
871	634		0			
872	190		0			
873	234		0			
874	613		0			
875	16		0			
876	646		0			
877	244		0			
878	209		0			
879	206		0			
880	196		0			
881	593		0			
882	720		0			
883	246		0			
884	709		0			
885	584		0			
886	236		0			
887	704		0			
888	138		0			
889	232		0			
890	701		0			
891	127		0			
892	708		0			
893	642		0			
894	599		0			
895	152		0			
896	557		0			
897	800	رام الله	2			
898	681		0			
899	560		0			
900	616		0			
901	661		0			
902	859		0			
903	158		0			
904	657		0			
905	582		0			
906	649		0			
907	702		0			
908	177		0			
909	126		0			
910	195		0			
911	729		0			
912	241		0			
913	623		0			
914	682		0			
915	663		0			
916	121		0			
917	679		0			
918	141		0			
919	636		0			
920	205		0			
921	620		0			
922	239		0			
923	13		0			
924	15		0			
925	155		0			
926	808		0			
927	689		0			
928	835		0			
929	685		0			
930	848		0			
931	137		0			
932	856		0			
933	235		0			
934	128		0			
935	123		0			
936	877		0			
937	240		0			
938	691		0			
939	666		0			
940	901		0			
941	204		0			
942	675		0			
943	181		0			
944	631		0			
945	554		0			
946	643		0			
947	148		0			
948	594		0			
949	633		0			
950	114		0			
951	132		0			
952	825		0			
953	564		0			
954	694		0			
955	698		0			
956	197		0			
957	550		0			
958	696		0			
959	119		0			
960	226		0			
961	703		0			
962	193		0			
963	243		0			
964	188		0			
965	233		0			
966	653		0			
967	566		0			
968	250		0			
969	219		0			
970	609		0			
971	706		0			
972	716		0			
973	180		0			
974	1009		0			
975	185		0			
976	146	سلفيت حي الفريز قرب مسجد الابرار	0			
977	211		0			
978	214		0			
979	247		0			
980	671		0			
981	637		0			
982	172		0			
983	700		0			
984	695		0			
985	638		0			
986	725		0			
987	651		0			
988	645		0			
989	1050		0			
990	607		0			
991	213		0			
992	111		0			
993	650		0			
994	621		0			
995	201		0			
996	210		0			
997	674		0			
998	142		0			
999	162		0			
1000	133		0			
1001	719		0			
1002	602		0			
1003	168		0			
1004	186		0			
1005	600	طوباس - حي الحاوز	9			
1006	228		0			
1007	712		0			
1008	858		0			
1009	898		0			
1010	659		4			
1011	677		0			
1012	591		0			
1013	229		0			
1014	655		0			
1015	218		0			
1016	608		0			
1017	853		0			
1018	143		0			
1019	131		0			
1020	176		0			
1021	122		0			
1022	697		0			
1023	606		0			
1024	237		0			
1025	717		0			
1026	179		0			
1027	191		0			
1028	223		0			
1029	626		0			
1030	676		0			
1031	699		0			
1032	588		0			
1033	672		0			
1034	614		0			
1035	647		0			
1036	174		0			
1037	590		0			
1038	601		0			
1039	587		0			
1040	635	عرابة	0			
1041	583		0			
1042	589		0			
1043	878		0			
1044	572		0			
1045	662		0			
1046	6		0			
1047	5		0			
1048	7		0			
1049	10		0			
1050	9		0			
1051	8		0			
1052	4		0			
1053	722		0			
1054	723		0			
1055	726		0			
1056	728		0			
1057	747	دير السودان - رام الله	2			
1058	1268		0			
1059	755		0			
1060	760		0			
1061	757		0			
1062	756		0			
1063	758		0			
1064	831	عرابة - جنين	5			
1065	830	طولكرم	4			
1066	833	عرابة - جنين	5			
1067	832	سلفيت-نابلس	7			
1068	913		0			
1069	855		0			
1070	844		0			
1071	845		0			
1072	843		0			
1073	842		0			
1074	846		0			
1075	965	الخليل	0			
1076	884		0			
1077	890		0			
1078	960		0			
1079	961		0			
1080	948		0			
1081	949		0			
1082	959		0			
1083	978		0			
1084	962		0			
1085	963		0			
1086	964		0			
1087	956	دير غصون -طولكرم	4			
1088	1015	البيرة	2			
1089	1013	طولكرم-عنبتا	4			
1090	1014	مخيم الفارعه	0			
1091	1012		0			
1092	1016	عرابة - جنين	5			
1093	1018	رام الله	2			
1094	1055	زيتا - طولكرم	4			
1095	1017	دير استيا-نابلس	3			
1096	1056	رام الله -كفر نعمة	2			
1097	1057	رام الله -البيرة	2			
1098	1058	حزما-القدس	1			
1099	1033	البيرة	2			
1100	1059	عارورة-رام الله	2			
1101	1060	رامين-طولكرم	4			
1102	1051	سنجل - رام الله	2			
1103	1061	يعبد- جنين	5			
1104	1168		0			
1105	1062	النبي صالح - رام الله	2			
1106	1063	كفر نعمة - رام الله	2			
1107	1064	رام الله	2			
1108	1065	البيرة - رام الله	2			
1109	1066	نابلس	3			
1110	1090	كفر قدوم - قلقيلية	6			
1111	1067		0			
1112	1068	نابلس رفيدية	8			
1113	1069	طولكرم - قفين	4			
1114	1070	علار -طولكرم	4			
1115	1071	بيت ساحور - بيت لحم	8			
1116	1072	العبيدية	8			
1117	1073		0			
1118	1074	بني نعيم - الخليل	12			
1119	1075	الخليل - بئر السبع	12			
1120	1076		12			
1121	1077	السموع - الخليل	12			
1122	1078	الخليل	12			
1123	1079	طوباس	9			
1124	1080	المزرعة القبلية	2			
1125	1081	قباطية-جنين	5			
1126	1082	كفر راعي - جنين	5			
1127	1083	نابلس	3			
1128	1084	حجة -قلقيلية	6			
1129	1085	صوريف	12			
1130	1086	اريحا مخيم عقبة جبر	10			
1131	1087	بروقين - سلفيت	7			
1132	1088	جنين - عجة	5			
1133	1089	بردلا	10			
1134	1292		0			
1135	1142		0			
1136	1151		0			
1137	1152		0			
1138	1155		0			
1139	1157	سلفيت	7			
1140	1158		0			
1141	1154	رام الله - عبوين	2			
1142	1156		0			
1143	1153	بيت لحم- طقوع	8			
1144	1160		6			
1145	1163	حجة - طولكرم	4			
1146	1161	حبلة - قلقيلية	6			
1147	1162	الخليل- السعير	12			
1148	1159	أريحا	10			
1149	1167	بيت فجار - بيت لحم	8			
1150	1166	العبيدية	8			
1151	1165	بيت جالا	8			
1152	1164	بيت جالا	8			
1153	1174	عنبتا-طولكرم	4			
1154	1175	نور شمس	4			
1155	1177	طولكرم شويكة	4			
1156	1173	طولكرم-قفين	4			
1157	1176	عتيل-طولكرم	4			
1158	1171	وادي عز الدين - جنين	5			
1159	1172	عرابة - جنين	5			
1160	1178	عرابة - جنين	5			
1161	1179	يطا الخليل	12			
1162	1180		0			
1163	1182	نعلين	2			
1164	1183	رام الله - البيرة - الأمعري	2			
1165	1184	يعبد	5			
1166	1181	جنين	5			
1167	1185	اريحا عقبة جبر	10			
1168	1188	بيت لحم	8			
1169	1191	نابلس-كفير	3			
1170	1199	طولكرم-بلعا	4			
1171	1192		0			
1172	1189	طولكرم	4			
1173	1190	عتيل- طولكرم	4			
1174	1193	دير الغصون - طولكرم	4			
1175	1194	الزبابدة - جنين	5			
1176	1200	بيت لحم	8			
1177	1201		0			
1178	1205		0			
1179	1207		0			
1180	1206		0			
1181	1204		0			
1182	1208		0			
1183	1209	خربة الطبقه -دورا-الخليل	12			
1184	1210		0			
1185	1212	نابلس-حوارة	3			
1186	1217	الشويخ  - الخليل	12			
1187	1215	نور شمس - طولكرم	4			
1188	1216	عصيرة الشمالية - نابلس	3			
1189	1228		0			
1190	77	جنين-اليامون	5			
1191	80	الخليل	12			
1192	42		0			
1193	47	جيوس - قلقيلية	6			
1194	84	جنين -عرابة	5			
1195	93	قلقيلية	6			
1196	91	بيت ليد-طولكرم	4			
1197	83		0			
1198	30	رام الله-عبوين	2			
1199	94		0			
1200	29		0			
1201	22		0			
1202	25		0			
1203	102	رام الله - كفر عين	2			
1204	101	بيت عور الفوقا	2			
1205	85	رام الله المزرعة الغربية	2			
1206	90	المزرعة القبلية - رام الله	2			
1207	95		0			
1208	82	رام الله- دورا القرع	2			
1209	32	رام الله	2			
1210	86		0			
1211	99	رام الله	2			
1212	773		0			
1213	35		0			
1214	50		0			
1215	37	عنبتا- طولكرم	4			
1216	33	المزرعه القبلية	2			
1217	36	طوباس	9			
1218	48		0			
1219	45		0			
1220	46	القدس-ابوديس	1			
1221	27	نابلس	3			
1222	44	جنين- سيلة الحارثية	5			
1223	51		0			
1224	43	القدس - بيت عنان	2			
1225	791		0			
1226	795		0			
1227	788	رام الله -مخيم الأمعري	2			
1228	790		0			
1229	793	سلفيت	3			
1230	789		0			
1231	1239		0			
1232	796		12			
1233	799		0			
1234	1231		0			
1235	1233		0			
1236	1230	أريحا	10			
1237	1232	كوبر - رام الله	2			
1238	1234		0			
1239	798	كفيرت-جنين	5			
1240	781		0			
1241	797		0			
1242	1238		0			
1243	1237		0			
1244	1236	اريحا	10			
1245	1250		0			
1246	1248		0			
1247	1249		0			
1248	1255		0			
1249	1247		0			
1250	1257		0			
1251	1260		0			
1252	1261		0			
1253	1266		0			
1254	1263		0			
1255	1256		0			
1256	1246		0			
1257	1269		0			
1258	1262		0			
1259	1264		0			
1260	1258	بيت ليد-طولكرم	4			
1261	1270		0			
1262	1272		0			
1263	1259		0			
1264	1271		0			
1265	1267		0			
1266	1265		0			
1267	1286		0			
1268	1285		0			
1269	1275		0			
1270	1280		0			
1271	1282		0			
1272	1290		0			
1273	1289		0			
1274	1291		0			
1275	1281		0			
1276	1288		0			
1277	1283		0			
1278	1287		0			
1279	1294		0			
1280	1293		0			
1281	1211		0			
1282	1296		0			
1283	1295		0			
1284	1304		0			
1285	1305		0			
1286	1300		0			
1287	1297		0			
1288	1306		0			
1289	1298		0			
1290	1301		0			
1291	1303		0			
1292	1302		0			
1293	1299		0			
1294	1314		0			
1295	1311		0			
1296	1317		0			
1297	1312		0			
1298	1332		0			
1299	1321		0			
1300	1331		0			
1301	1320		0			
1302	1313		0			
1303	1310		0			
1304	1316		0			
1305	1318		0			
1306	1315		0			
1307	1319		0			
1308	1326		0			
1309	1323		0			
1310	1322		0			
1311	1328		0			
1312	1324		0			
1313	1329		0			
1314	1325		0			
1315	1330		0			
1316	1327		0			
1317	387	قطاع غزة	15			
1318	502	قطاع غزة	15			
1319	456	قطاع غزة	15			
1320	482	قطاع غزة	15			
1321	493	قطاع غزة	15			
1322	322	قطاع غزة	15			
1323	539	قطاع غزة	15			
1324	515	قطاع غزة	15			
1325	402	قطاع غزة	15			
1326	479	قطاع غزة	15			
1327	459	قطاع غزة	15			
1328	305	قطاع غزة	15			
1329	639		0			
1330	277	قطاع غزة	15			
1331	457	قطاع غزة	15			
1332	370	قطاع غزة	15			
\.


--
-- TOC entry 3894 (class 0 OID 48927)
-- Dependencies: 223
-- Data for Name: employee_basic_info; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.employee_basic_info (id, employee_no, f_name, s_name, t_name, l_name, en_name, gender, religion, birthday, birthplace, nationality, national_id, passport_no, marital_status, employee_status, disability, disability_desc, attendance_agreements_id, avatar, password, secret_key, active, lock, is_first_login) FROM stdin;
1	1	مستخدم			مطورين	مستخدم مطورين	1	1	1990-01-01	xxxxx	1	123456789	ABC123	1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
2	143	اسامة	سمير	يعقوب	عبده		1	1	1981-05-04	1102	1	850461286		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
3	145	خالد	صبحي	محمد	عابد		1	1	1993-04-21	1102	1	854792413		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
4	165679	توفيق	عبدالله	توفيق	حامد		1	1	1990-07-12		1	853005866		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
5	165674	ميس	المنتصر	محمود	ماضي		2	1	1990-06-24		1	851985176		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
6	165673	فاطمة	عبداللطيف	احمد	ضميدي		2	1	1990-01-19		1	852377217		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
7	165675	زكي	شفيع	زكي	زبدة		1	1	1993-06-05		1	854433455		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
8	165678	محمد	أحمد	مؤيد	قناديلو		1	1	1990-09-17		1	410649859		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
9	165677	دينا	بلال		زيدان		2	1	1993-05-04		1	855028676		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
10	165676	رامي	سليم	غازي	هديهد		1	1	1988-02-05		1	850303363		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
11	60506	منير	فائق	رفيق	دويكات		1	1	1968-02-28		1	947538385		2	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
12	150	حبيب	يوسف	محمد	عيسى		1	1	1990-10-29		1	852435304		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
13	83525	مؤيد	يوسف	محمد	دراوشة		1	1	1976-03-09		1	901894022		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
14	151	عميد	محمد	عبداللطيف	شتيه		1	1	1995-02-06		1	859676967		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
15	84003	مراد	رفيق	محمد	نصار		1	1	1981-02-23		1	944064450		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
16	80151	اسامة	فوزي	منير	عابد		1	1	1969-12-18		1	963027784		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
17	153	احمد	محمود	أحمد	جبري		1	1	1995-04-29		1	860143999		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
18	155	عنان	محمد	سمير	عامر		1	1	1994-03-11	1103	1	854739430		1	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
19	157	اسماعيل	ياسرعبيدالله	ابوزهرة			1	1	1997-12-14	1104	1	403182215		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
20	158	محمد	يوسف	سعيد	طه		1	1	1991-06-20		1	853897726		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
21	163	توفيق	زهير	توفيق	أبوعجاق		1	1	1993-01-25		1	411722291		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
22	184816	اسماء	اسامه	عبدالله	خطيب		2	1	1996-04-12		1	401474531		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
23	92	سليمان	محمد	سليمان	صالح		1	1	1960-02-03		1	932041833		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
24	93	قتيبة	طاهر	زهدي	عبدالمجيد		1	1	1990-08-15	1104	1	852489038		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
25	184819	روعة	محمد	مطر	ردايده		2	1	1993-01-31		1	851012732		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
26	95	اسماعيل	محمد	علي	فودة		1	1	1962-03-15	1101	1	983795584		2	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
27	185060	أحمد	حسن	محمد	أبوديه		1	1	1982-03-13	1102	1	972689814		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
28	97	حمدي	يوسف	خليل	قنداح		1	1	1978-05-30	1101	1	904590049		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
29	184809	لانا	عاهد	أحمد	صدقه		2	1	1995-02-22		1	401850097		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
30	184791	أكرم	توفيق	يوسف	عاقلة		1	1	1993-12-01	1101	1	854590692		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
31	101	احمد	ربحي	أحمد	خليل		1	1	1978-01-25	1102	1	905006391		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
32	184830	الهام	عبدالرحمن	محمد	الدباكي		2	1	1985-02-27	1111	1	800474686		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
33	185017	عبدالله	خليل	موسى	شريتح		1	1	1991-03-21	1	1	407242528		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
34	68376	علان	غازي	علان	صلاح		1	1	1976-07-09		1	901121673		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
35	185004	شريف	وجيه	عبدالرحيم	هلال		1	1	1995-02-09		1	859980732		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
36	185019	محمد	حسن	سليمان	دراغمة		1	1	1988-07-07	1102	1	850286303		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
37	185014	كريمان	محمد	عبدالفتاح	ابوعسل		2	1	1987-06-29	1102	1	850545898		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
38	592	مصطفى	عبدالفتاح	محمد	زبيدي		1	1	1982-04-11		1	907222913		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
39	593	رامي	نادر	عبدمسك			1	1	1995-05-01		1	854747730		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
40	110	معاذ	يوسف	عودة	الترك		1	1	1997-12-19	1102	1	403166200		1	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
41	597	عبير	حاتم	نصار	نعامنة		2	1	1986-06-26		1	949586325		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
42	184552	عبدالرحمن	محمود	محمد	عطاطرة		1	1	1994-05-27		1	858550122		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
43	185097	فاتنة	خليل	عبدالعال	رمضان		2	1	1986-08-14	1103	1	850928045		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
44	185064	محمد	ابراهيم	محمد	زيود		1	1	1989-12-05	1107	1	941455685		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
45	185049	باسل	طارق	عبدالقادر	جعفر		1	1	1996-05-21		1	401123377		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
46	185051	عيسى	محمد	عيسى	عليان		1	1	1996-03-20	1103	1	401025218		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
47	184568	احمد	عبدالكريم	عبدالفتاح	شماسنة		1	1	1986-07-12	1105	1	937156594		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
48	185047	رماء	محمد	فارس	بظ		2	1	1988-07-09		1	851989152		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
49	120	عبدالقادر	محمد	سعيد			1	1	1993-02-03	1106	1	854345659		1	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
50	185005	شهد	محمود	جميل	دراغمة		2	1	2000-02-23		1	405585027		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
51	185065	علا	زياد	راشد	مشاقي		1	1	1993-01-29		1	850138116		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
52	130	ماهر	حسن	ادريس	عوينات		1	1	1958-09-10	1105	1	961250446		2	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
53	132	محمود	حسين	حمد	مصلح		1	1	1985-01-25		1	946503679		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
54	45	أحمد	محمد	راشد	كميل		1	1	1991-01-11	1107	1	853801926		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
55	46	أسامة	غالب	عبداللطيف	جيتاوي		1	1	1990-03-04	1107	1	852418771		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
56	49	هاني	سامي	محمد	تلي		1	1	1988-08-02	1107	1	850225384		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
57	52	زيد	شاكر	مصطفى	غانم		1	1	1989-09-27		1	853078541		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
58	54	صدام	محمود	سالم	ابوسالم		1	1	1990-08-28	1101	1	853090165		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
59	56	معتصم	محمود	حسن	قنداح		1	1	1991-02-14	2	1	858583081		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
60	60	محمد	بكر	محمد	شيحة		1	1	1987-08-27		1	992535989		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
61	62	وفاء	صالح	محمد	حمايل		2	1	1990-04-03	1103	1	851276535		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
62	63	أسامه	كمال	أحمد	ياسين		1	1	1997-09-02	1102	1	402377485		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
63	66	مأمون	عمر	عثمان	غانم		1	1	1955-09-20		1	80776149		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
64	68	حسام	توفيق	حسين	مصلح		1	1	1974-06-01	1101	1	901158220		2	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
65	69	رجا	محمد	اسماعيل	العموري		1	1	1963-08-15	1101	1	996456570		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
66	71	وليد	عمران	عبدالله	حسن		1	1	1983-06-24		1	916629090		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
67	22204	نوفل	حسن	ابراهيم	المبيض		1	1	1949-01-01		1	927046136		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
68	77	محمد	رامي	حسان	شعبان		1	1	1979-01-21	1101	1	904013562		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
69	81	صالح	موسى	ابراهيم	عواودة		1	1	1990-04-11	1101	1	852488121		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
70	82	عبدالرؤوف	زياد	فايز	شوخة		1	1	1991-08-11	1101	1	853888816		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
71	84	عيد	ابراهيم	محمود	أبوناصر		1	1	1978-09-03	1101	1	902909431		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
72	86	رمزي	هاني	عبدالجليل	دلاش		1	1	1985-11-10	1101	1	910906551		2	11			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
73	87	فادي	نزال	عبدالكريم	سلامة		1	1	1990-01-14		1	853035251		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
74	88	احمد	عبدالرازق	دردساوي			1	1	1988-09-18	1101	1	850354077		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
75	89	محمود	عبدالعزيز	دار	حسن		1	1	1961-06-04	1107	1	923545859		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
76	90	محمد	خير	جمعة	مسعود		1	1	1965-12-06	1101	1	940073653		2	13			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
77	184212	حسام	رائد	محمود	سمارة		1	1	1996-10-27	1107	1	853593432		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
78	590	اسيل	مراد	عبدالكريم	احمد		1	1	1999-05-29		1	405003534		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
79	591	وصال	عدنان	محمد	صالح		1	1	1991-02-12		1	850837907		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
80	184514	ضياء	عدنان	أحمد	السيد		1	1	1993-11-14	1104	1	853948248		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
81	4	محمود	فتحي	محمود	طبية		1	1	1986-01-15	1115	1	920669520		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
82	184829	هنادي	كمال	أحمد	المصري		2	1	1993-06-24	2	1	410745368		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
83	184790	دعاء	تيسير	محمود	عوده		2	1	1989-04-24		1	410821888		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
84	184757	خالد	نعمان	حلمي	موسى		1	1	1990-10-01	1102	1	852226166		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
85	184826	محمد	خليل	داود	شريتح		1	1	1992-01-01	1101	1	852404466		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
86	184831	وديع	عباس	عبدالله	مزاحم		1	1	1994-11-11		1	860086503		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
87	13	شادن	اسماعيل	محمد	حموز		2	1	1975-11-26	1104	1	903896942		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
88	14	ابتسام	عبداللطيف	حمدان	خمور		2	1	1964-07-08		1	979446655		4	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
89	15	محمد	خلوي	عرفات	حسونة		1	1	1980-07-20	1104	1	908115108		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
90	184827	فاطمة	محمدصابر	ابراهيم	شريتح		2	1	1985-07-13	1103	1	921718102		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
91	184780	سامي	محمد	موسى	جمعة		1	1	1981-09-21	4	1	914295506		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
92	19	محمد	اديب	أحمد	محمد		1	1	1991-05-03	1104	1	852176106		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
93	184775	يامن	احمد	عبدالرحمن	زيد		1	1	1987-02-23	1102	1	850135369		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
94	184807	محمد	توفيق	محمد	عمرو		1	1	1991-03-19		1	852178607		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
95	184828	ميره	ابراهيم	محمد	جرناوي		2	1	1986-11-10		1	853651404		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
96	23	مراد	عبدالمهدي	محمود	نمر		1	1	1988-03-13	1104	1	850163767		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
97	24	كمال	حسان	حسين	حبابة		1	1	1961-01-06	1103	1	940088263		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
98	25	شادي	أحمد	عبدالله	عليان		1	1	1978-12-12	2	1	904093960		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
99	184832	عصام	كايد	يونس	فليان		1	1	1982-11-11	1101	1	920100344		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
100	27	ثائر	عماد	حسان	رامية		1	1	1986-06-14	1103	1	911064111		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
101	184824	عاطف	جودت	محمد	حاج		1	1	1977-05-29	1101	1	851339499		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
102	184821	سعد	يوسف	عبددغرة			1	1	1988-04-24	1101	1	850044256		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
103	31	مدحت	امين	صبحي	الخطيب		1	1	1983-10-30	1103	1	943342030		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
104	35	محمد	عيسى	اسحق	حمود		1	1	1987-10-02	1109	1	949792196		1	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
105	39	محمد	اسعد	صبحي	الخطيب		1	1	1990-11-18	1109	1	852670231		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
106	41	محمد	ياسر	أحمد	الشوشة		1	1	1989-11-05		1	851812040		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
107	69885	عمار	رفيق	توفيق	سلامه		1	1	1971-03-29		1	907099485		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
108	44319	عمار	كامل	يوسف	مرعي		1	1	1970-03-02		1	410077572		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
109	68377	عمر	احمد	كامل	مسلماني		1	1	1972-04-29		1	929424174		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
110	64413	عمر	جبر	احمد	عبدالله		1	1	1967-08-29		1	978546851		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
111	101754	عمر	عبدالحميد	عبدالله	السمامره		1	1	1981-05-30		1	907013205		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
112	67919	عمر	عبدالعزيز	خليل	صالح		1	1	1965-04-09		1	994090348		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
113	69500	عمر	عبدالله	راغب	الخواجه		1	1	1971-11-15		1	962060364		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
114	92001	عمر	محمد	راشد	يوسف		1	1	1967-03-02		1	999726862		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
115	73553	عمر	محمد	محمود	عبدالحافظ		1	1	1965-09-14		1	936498575		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
116	69441	عواد	مصطفى	احمد	جبر		1	1	1960-05-22		1	998930739		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
117	73446	عوده	محمد	عوده	بعيرات		1	1	1967-04-17		1	968165944		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
118	73588	عوض	عطيه	حسن	زيدان		1	1	1965-04-02		1	996460846		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
119	93041	عيسى	محمد	جبر	معايطه		1	1	1982-12-10		1	910655430		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
120	73430	غسان	خليل	حسن	ابوريا		1	1	1966-06-23		1	982956583		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
121	82893	فادي	محمد	أحمد	مرجانه		1	1	1980-05-13		1	907090971		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
122	155152	فارس	محمد	مصطفى	ابومعلا		1	1	1978-04-13		1	901855965		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
123	91618	فاروق	دواس	محمود	ابوعواد		1	1	1972-10-12		1	929191567		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
124	73614	فتحي	عبدالمجيد	نمر	عبدالفتاح		1	1	1959-01-23		1	946785847		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
125	69409	فخري	خالد	محمد	احمد		1	1	1962-02-07		1	932898133		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
126	82633	فداء	عبدالجبار	اسماعيل	عصفور		2	1	1975-12-07		1	411796063		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
127	81291	فداء	وحيد	عبدالعزيز	العملة		2	1	1980-10-03		1	906393129		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
128	91616	فراس	فرج	محمد	جمهور		1	1	1980-09-25		1	905607149		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
129	73579	فلوريد	عزت	محمود	الزربا		1	1	1960-10-22		1	086077591		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
130	62900	فوزيه	ربحي	جمال	عامر		2	1	1973-12-16		1	410125405		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
131	155150	فؤاد	محمد	حسن	شيخ		1	1	1983-03-14		1	939073086		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
132	92002	كفاح	أحمد	عادل	مرقة		1	1	1979-10-19		1	904899861		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
133	151322	كمال	احمد	محمد	جربوع		1	1	1978-10-08		1	902901073		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
134	73422	كمال	عبدالعزيز	خليل	دعاجنة		1	1	1960-10-25		1	970057675		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
135	62119	لازم	اسماعيل	حسين	الطير		1	1	1969-05-06		1	993485986		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
136	68060	لافي	محمود	خليل	عثمان		1	1	1959-02-11		1	968510545		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
137	88855	علام	موسى				1	1	1960-01-01		1			2	10	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
138	81267	سهاد	سعيد	عبدالقادر	حمدان		2	1	1982-04-25		1	907160899		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
139	64914	شاهر	محمد	حسان	الخمايسه		1	1	1964-08-31		1	964590160		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
140	73424	شحده	محمد	خليل	الشراونه		1	1	1964-12-19		1	972901052		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
141	82906	شيرين	عبدالقادر	سعيد	البسومي		2	1	1981-01-11		1	040726242		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
142	151320	صابرين	محمد	صالح	حامد		2	1	1987-07-21		1	411592926		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
143	155146	صالح	ابراهيم	صالح	الشلبي		1	1	1963-09-28		1	987501582		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
144	69882	صالح	علي	صالح	ابوهندي		1	1	1968-02-01		1	950363051		2	10			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
145	73489	صلاح	عبدالفتاح	عبدالرحمن	ابوحمده		1	1	1976-05-27		1	902384932		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
146	96419	طارق	فكري	عزت	الزربا	Tareq Fekri Izzat Al-Zurba	1	1	1986-06-30		1	850448879		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
147	73559	طلال	محمود	محمد	ناصر		1	1	1962-12-02		1	932895147		2	13			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
148	91998	عامر	أحمد	توفيق	صعبي		1	1	1974-11-25		1	900057803		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
149	73436	عامر	حسن	عبدالرحمن	قرعي		1	1	1960-04-01		1	974776171		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
150	66532	عاهد	رشيد	عودة	الزبده		1	1	1967-04-01		1	909398059		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
151	80092	عاهد	محمد	ديب	جبر		1	1	1962-10-09		1	995386554		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
152	81498	عاهد	محمد	فايز	صبيح		1	1	1969-09-17		1	919071340		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
153	73586	عبدالرحيم	محمود	امين	دويكات		1	1	1965-03-10		1	916405244		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
154	69411	عبدالسلام	احمد	مسلم	الذويب		1	1	1979-01-16		1	904092582		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
155	84514	عبدالفتاح	محمد	سعيد	عبدالفتاح		1	1	1977-07-14		1	904076536		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
156	66367	عبدالقادر	عاشور	يوسف	الرياحي		1	1	1958-04-26		1	936253061		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
157	69482	عبدالله	عبداللطيف	حسين	الشحرور		1	1	1967-04-02		1	943192633		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
158	81869	عبدالله	محمد	احمد	عبدالله		1	1	1977-10-15		1	902851799		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
159	60300	عبدالله	محمد	عبدالله	عثمان		1	1	1957-11-17		1	086075520		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
160	73440	عبدالحميد	سعيد	عبدالله	لحلوح		1	1	1961-03-20		1	945367944		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
161	73441	عبدالغني	عبدالكريم	فياض	خضر		1	1	1956-06-24		1	979260163		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
162	151321	عبير	حافظ	نعيم	شافعي		2	1	1987-06-10		1	851578070		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
163	64913	عدنان	كامل	علي	عوده		1	1	1966-01-20		1	982200966		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
164	73524	عزام	محمد	فارس	سفيان		1	1	1969-11-17		1	990019283		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
165	65302	عصام	حسين	محمد	التايه		1	1	1966-03-08		1	955966635		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
166	60705	عصمت	خميس	ماهر	العلمي		2	1	1971-07-19	1103	1	028320356		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
167	67799	عطاف	احمد	محمود	الشرفا		2	1	1979-09-02		1	036077378		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
168	151841	علا	صادق	سليمان	حمارشه		2	1	1984-12-13		1	947918223		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
169	65301	علاء	الدين	محمد	ابراهيم		1	1	1973-06-30		1	928072826		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
170	46006	ناصر	يونس	يوسف	ابوهنيه		1	1	1966-11-25		1	968831792		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
171	64910	علي	سلمان	عبدالفتاح	الرجوب		1	1	1959-03-30		1	905515342		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
172	97243	عماد	جعفر	عمر	حماد		1	1	1974-06-23		1	989559612		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
173	73560	عماد	حمدي	اسماعيل	ابوزنط		1	1	1958-08-17		1	962865572		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
174	163470	عماد	عبدالرحمن	علي	طميزه		1	1	1986-05-17		1	909868416		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
175	69310	عماد	فائق	يوسف	عامر		1	1	1972-08-01		1	904267176		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
176	155151	رامي	زايد	محمد	جعيدي		1	1	1979-10-24		1	904993284		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
177	82468	رامي	كمال	صابر	جابر		1	1	1981-02-05		1	905748216		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
178	69400	رامي	محمد	احمد	ابوالحور		1	1	1979-09-16		1	904639358		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
179	160002	رامي	يوسف	عبدالقادر	يعقوب		1	1	1970-12-04		1	951750181		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
180	96236	رانية	جميل	عبدالفتاح	جابر		2	1	1975-09-15		1	901097162		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
181	91801	رانيه	محمود	عبدالله	مطري		2	1	1982-06-12		1	907308605		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
182	69433	رائد	احمد	جميل	زريقي		1	1	1975-03-10		1	927703041		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
183	69314	رائد	ذيب	عبدالله	محمود		1	1	1977-12-23		1	901238188		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
184	73612	رائد	ماهر	سعيد	الخاروف		1	1	1960-11-04		1	966970790		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
185	96418	رأفت	خيري	مفضي	صوافطه		1	1	1984-03-15		1	941035016		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
186	151842	ربى	أحمد	حسن	ابوجعفر		2	1	1984-02-05		1	940845886		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
187	69898	رجائي	لطفي	يوسف	ابوصلاح		1	1	1976-03-19		1	901047696		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
188	95814	رشيد	عبدالرحيم	رشيد	حنون		1	1	1984-05-08		1	938158227		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
189	73606	رمضان	قاسم	رمضان	الغزاوي		1	1	1965-03-17		1	991052333		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
190	80113	رولى	احمد	شاكر	مصطفى		2	1	1976-10-19		1	900091307		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
191	160003	رياض	حسين	عبدالنبي	حمدان		1	1	1965-11-20		1	947031639		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
192	69502	رياض	عبدالرحمن	خليل	شلبي		1	1	1970-05-01		1	945485449		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
193	93820	رياض	وليد	أحمد	حمارشه		1	1	1978-01-19		1	901218255		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
194	69491	ريما	فهد	مسعود	طنبور		2	1	1964-11-19		1	411135676		2	10			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
195	82749	ريما	محمود	مصطفى	ديوان		2	1	1982-01-01		1	410642581		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
196	80349	زهران	عثمان	مقبل	حسن		1	1	1965-06-12		1	983851791		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
197	92707	زياد	أحمد	علي	عرباسي		1	1	1974-02-07		1	945542785		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
198	73593	سالم	جميل	سالم	البلبول		1	1	1973-03-17		1	983350265		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
199	69499	سامر	راشد	احمد	خويره		1	1	1976-02-14		1	979467370		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
200	69320	سامر	عوني	سليم	عساف		1	1	1978-02-01		1	901237784		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
201	116713	ليث	دراغمة	الاتصالات			1	1	1980-05-06		1	906169958		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
202	66371	سامي	فايز	فلاح	محمد		1	1	1971-04-14		1	976072587		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
203	73511	سائد	وليد	موسى	ياسين		1	1	1973-11-20		1	900122094		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
204	91798	سعد	بدر	حسين	درويش		1	1	1973-12-18		1	851075150		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
205	82932	سعيد	شريف	حسين	الكرمي		1	1	1980-07-25		1	904971306		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
206	80297	سعيد	عبدالرحمن	محمد	حمد		1	1	1970-06-22		1	968048371		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
207	69309	سعيد	كامل	احمد	عوده		1	1	1962-01-03		1	969556786		1	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
208	73571	سعيد	محمد	سعاده	دويكات		1	1	1965-09-03		1	947534053		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
209	80189	سعيد	نبهان	اسماعيل	عزارة		1	1	1957-11-13		1	975453168		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
210	150238	سلام	اسماعيل	جابر	تركمان		2	1	1984-12-20		1	941450124		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
211	96527	سليمان	داود	سليمان	مسلم		1	2	1978-07-12		1	902851427		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
212	61992	سليمان	مصطفى	سليمان	زهيري		1	1	1958-04-29		1	992308270		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
213	101752	سماح	فتحي	فارس	لباده		2	1	1972-12-11		1	945728061		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
214	96528	جابر	محمد	أحمد	هصيص		1	1	1979-01-28		1	901873893		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
215	68796	جاويد	احمد	محمود	حسون		1	1	1959-09-01		1	974721037		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
216	62438	جمال	عفيف	سبع	النابلسي		1	1	1959-06-01		1	410446157		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
217	69846	جمال	مصباح	عوض	الشريف		1	1	1956-08-08		1	411271323		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
218	155097	جمال	مفلح	محمد	الزواهرة		1	1	1980-01-08		1	904624806		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
219	95826	جمانه	سامي	محمد	ابراهيم		2	1	1979-07-04		1	906181391		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
220	69312	جمعه	حسين	جمعه	فرح		1	1	1979-04-23		1	904094810		2	13			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
221	69401	جميل	حسن	جدوع	زواهرة		1	1	1963-01-03		1	935446179		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
222	73621	جميل	موسى	سليمان	الزغارنه		1	1	1960-04-10		1	979402773		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
223	160004	جهاد	حسن	يوسف	ربايعه		1	1	1968-02-03		1	902464114		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
224	38964	جهاد	حسني	محمد	حمدان		1	1	1967-08-08		1	989120266		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
225	73503	جهاد	خيري	جادالله	ابوعلوي		1	1	1961-12-30		1	953723541		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
226	93043	جواد	محمد	عبدالكريم	اسماعيل		1	1	1972-07-18		1	904465861		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
227	64041	حاتم	سليمان	ابراهيم	الزيدات		1	1	1971-09-17		1	978347243		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
228	152210	حافظ	حسني	حافظ	الشنتير		1	1	1983-09-02		1	942242173		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
229	155065	حربي	عبدالكريم	عبدالله	ابوالعيله		1	1	1968-08-07		1	958681959		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
230	69410	حسام	محمد	احمد	يعقوب		1	1	1966-04-10		1	977301878		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
231	60294	حسن	سليمان	عبدالله	ابوالعيله		1	1	1965-07-15		1	976909838		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
232	81274	حسن	مسعود	سليمان	ابوبكر		1	1	1965-10-31		1	976754291		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
233	95815	حسنين	علي	محمد	القاضي		1	1	1980-11-27		1	906224266		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
234	80122	حسين	ابراهيم	شاكر	خليل		1	1	1982-05-14		1	908009491		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
235	91614	حسين	ذيب	محمد	حسين		1	1	1974-09-06		1	994314045		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
236	81076	حسين	محمد	حسين	صوافطة		1	1	1978-11-03		1	901859843		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
237	157166	حكم	شافع	مصطفى	معالي		1	1	1987-11-16		1	850708942		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
238	61986	حمد	محمد	طه	العامور		1	1	1963-07-30		1	961270683		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
239	83102	حمزه	أحمد	أحمد	السراحنه		1	1	1980-06-26		1	907608558		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
240	91622	حمزه	عمر	محمود	الجمل		1	1	1977-11-05		1	904130549		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
241	82752	حياة	عبدالخالق	خليل	شبيب		2	1	1962-10-19		1	954555983		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
242	65790	خالد	ابراهيم	كامل	احمد		1	1	1972-10-16		1	904190360		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
243	94646	خالد	محمد	سعيد	نمر		1	1	1979-06-23		1	944064005		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
244	80162	خضر	احمد	محمود	خضر		1	1	1970-05-02		1	979260692		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
245	65342	خلف	طالب	محمد	احمد		1	1	1973-11-15		1	994474211		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
246	80835	خليل	حسن	محمد	سالم		1	1	1961-10-11		1	954120242		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
247	96676	دينا	عيسى	اسحق	احمود		2	1	1977-08-15		1	901210047		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
248	63204	رافت	خليل	زكي	خليل		1	1	1973-06-15		1	991863226		2	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
249	64537	رافت	سليم	محمد	رضوان		1	1	1970-06-02		1	923785794		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
250	95821	رامي	محمد	ماهر	حسن		1	1	1981-04-04		1	040997033		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
251	47109	ايمن	اكرم	سعيد	القوقا		1	1	1979-02-01		1	901496794		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
252	45665	راتب	حلمي	احمد	عيسى		1	1	1966-08-24		1	904426178		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
253	38893	عبدالله	علي	عبدالقادر	احميده		1	1	1976-05-05		1	901252072		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
254	43564	وسام	عدنان				1	1	1972-04-15		1	410299382		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
255	42675	ايهاب	محمد	سالم	الهنادي		1	1	1980-12-22		1	905251310		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
256	42379	حماده	محمود	صالح	العطار		1	1	1964-07-14		1	971379466		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
257	42385	جهاد	محمد	علي	حسن		1	1	1964-02-10		1	906470497		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
258	44056	وليد	محمود	حسن	الحلو		1	1	1964-06-20		1	960878056		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
259	42112	سامي	سالم	سلامه	ابومخيمر		1	1	1972-10-26		1	915324966		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
260	42074	هاشم	محمد	هاشم	العتال		1	1	1961-11-25		1	975858531		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
261	42388	حسين	عبدالله	خليل	ابومشايخ		1	1	1955-04-06		1	959071945		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
262	42390	ابراهيم	عبدالرحيم	احمد	القطراوي		1	1	1958-03-29		1	972620140		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
263	42380	ايمن	مدحت	لطف	مهاني		1	1	1966-01-03		1	923001739		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
264	42381	صبحي	حسن	غانم	فياض		1	1	1963-10-27		1	975947953		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
265	42382	عبدالله	محمد	عبدالله	جوده		1	1	1954-07-11		1	936609841		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
266	42711	عبدالقادر	عبدالكريم	محمد	ابوعوده		1	1	1951-12-30		1	959885252		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
267	42532	محمد	فوزي	محمد	ابونعمه		1	1	1976-12-02		1	801038571		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
268	42017	اشرف	محمد	ربيع	عيد		1	1	1976-03-02		1	900960584		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
269	27983	ختام	عبدالله	حسن	ابوداير		2	1	1969-12-27		1	920735438		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
270	19229	اسماعيل	حسين	اسماعيل	جنديه		1	1	1972-07-25		1	923988612		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
271	25836	فداء	زهير	بولس	صليبا		2	2	1971-02-16	1	1	912267820		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
272	20499	شريف	سرحان	عثمان	الدريملي		1	1	1954-06-27		1	935885558		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
273	42709	احسان	عبدالكريم	عبدالله	زيديه		1	1	1975-07-17		1	410134993		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
274	42371	رجاء	عبداللطيف	محمد	الزقزوق		2	1	1965-10-04		1	958996753		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
275	10791	يوسف	عبدالحميد	يوسف	ابوغزه		1	1	1965-06-22		1	955271630		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
276	42543	زكريا	صالح	كامل	عبدو		1	1	1972-09-02		1	912396827		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
277	205232	سامح	حمدى	يوسف	حلس		1	1	1988-07-02		1	802018614		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
278	46039	مها	خضر	ابراهيم	عياد		2	2	1973-02-28		1	962415337		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
279	43487	عماد	عبدالعزيز	عبدالله	ابوتايه		1	1	1964-09-11		1	0		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
280	13786	يحيي	صالح	كامل	عبدو		1	1	1970-08-19		1	931280358		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
281	42249	طارق	ابراهيم	احمد	شتات		1	1	1969-04-13		1	412318644		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
282	11674	رشاد	ابراهيم	عبدالعزيز	صبح		1	1	1960-08-22		1	904347473		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
283	42137	ابراهيم	يوسف	محمود	دبور		1	1	1980-10-19		1	411072267		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
284	25967	عوني	عبدالهادي	عبدالقادر	حميد		1	1	1971-06-11		1	936752096		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
285	25034	عبدالحليم	عبدالفتاح	محمود	مسعود		1	1	1969-07-07		1	906045166		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
286	46893	منذر	اكرم	حسن	فروانه		1	1	1977-10-14		1	900620527		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
287	44058	عصام	محمد	السيد	الهندي		1	1	1968-11-01		1	915158380		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
288	26431	هاني	محمود	ابراهيم	الشريف		1	1	1976-07-03		1	901336081		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
289	42073	صالح	محمد	مصطفي	صالح		1	1	1967-07-02		1	903877108		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
290	17038	خالد	احمد	اسماعيل	رشوان		1	1	1966-02-06		1	938555463		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
291	28204	جهاد	رشاد	محمود	شنيوره		1	1	1961-03-03		1	939880878		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
292	19275	احمد	فضل	خليل	عبدالسلام		1	1	1974-01-13		1	802076141		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
293	37183	رجائي	مدحت	رافت	حجاج		1	1	1976-12-03		1	901364372		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
294	42240	عطا	حسن	براوي	ابورزق		1	1	1963-12-06		1	940340235		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
295	24603	فتحي	محمد	عبدالرزاق	رمضان		1	1	1958-06-30		1	908908346		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
296	24590	سالم	ابراهيم	ناصر	ابوعمره		1	1	1954-09-12		1	942125840		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
297	25246	توفيق	حسن	توفيق	عوض		1	1	1954-05-26		1	925940934		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
298	19992	عبدالناصر	عبدربه	محمود	ريحان		1	1	1957-02-19		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
299	27950	راتب	مطر	رشيد	العمصي		1	1	1952-12-24		1	940890247		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
300	27984	محمد	ابراهيم	محمد	محجز		1	1	1967-05-01		1	951650720		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
301	12239	محمود	حمد	حمدان	قشطه		1	1	1955-03-20		1	903367654		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
302	24663	فوزي	لافي	محمد	لافي		1	1	1974-01-16		1	900153321		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
303	28630	عايشه	عبدربه	محيسن	السميري		2	1	1949-11-28		1	939829065		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
304	10121	محمد	ابراهيم	سليمان	العامري		1	1	1956-11-17		1	911020873		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
305	205160	ايهاب	سهيل	يونس	ابوعمشه		1	1	1978-01-31		1	900526823		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
306	25730	بشاره	فؤاد	بشاره	الخوري		1	1	1963-05-09		1	946550258		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
307	44052	محمد	عبدالغنى	محمد	الشيخ		1	1	1975-09-13		1	410155519		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
308	49801	نائله	محمد	ابراهيم	البسيوني		2	1	1971-06-23		1	912907912		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
309	45674	شادي	سعدي	حسين	عوض		1	1	1979-05-13		1	903640753		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
310	39754	اياد	سلامه	دياب	العجله		1	1	1972-11-02		1	922256946		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
311	39648	نهاد	محمود	طلب	الخضري		1	1	1971-11-17		1	911576148		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
312	27991	زكي	محمد	علي	ابونصار		1	1	1955-03-11		1	968767848		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
313	42526	رزق	محمود	رزق	السويركي		1	1	1972-06-26		1	912390713		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
314	40862	اسماعيل	عبدالقادر	اسماعيل	كلوب		1	1	1951-04-19		1	970010138		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
315	13128	محمود	عبدالرحيم	محمود	ابوعيسي		1	1	1960-04-03		1	967711557		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
316	16471	ناهض	جبر	احمد	ابوسكران		1	1	1965-06-10		1	902856525		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
317	19227	ماهر	اكرم	حسن	فروانه		1	1	1967-06-06		1	923041750		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
318	15050	جهاد	حسين	طالب	العريني		1	1	1967-08-22		1	906420286		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
319	27954	حنان	احمد	محمد	عكلوك		2	1	1976-07-30		1	410926653		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
320	43561	باسل	طلال	عبدالرحمن	الشيخ		1	1	1977-01-08		1	700031537		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
321	44181	معين	سليمان	عبدالقادر	ابواللبن		1	1	1969-01-15		1	970463584		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
322	204566	شادي	محمد	محمود	الحناوى		1	1	1979-11-15		1	954758942		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
323	27116	انعام	رزق	احمد	العرابيد		2	1	1969-11-22		1	410165799		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
324	44051	محمد	صلاح	عطيه	العجله		1	1	1978-10-04		1	901457440		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
325	9138	زهير	رشاد	محمد	البيطار		1	1	1950-05-03		1	902510833		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
326	1933	محمود	طلب	احمد	الخضري		1	1	1948-10-20		1	961240736		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
327	43845	نادي	حسن	محمد	الصوفي		1	1	1949-04-05		1	907782817		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
328	12913	محمود	بخيت	علي	بخيت		1	1	1957-02-11		1	963782149		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
329	40859	محمد	عوده	سليمان	ابوعوده		1	1	1949-05-06		1	916480437		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
330	44528	جلال	ابراهيم	عبداللطيف	شعلان		1	1	1950-02-28		1	0		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
331	16380	نسرين	ممدوح	صبري	صيدم		2	1	1969-09-17		1	410126429		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
332	27949	حسين	سالم	حسين	ابوناجي		1	1	1949-04-20		1	945242238		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
333	4391	فتحي	رجب	سلمان	الحرازين		1	1	1948-02-01		1	930810528		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
334	42376	فاروق	اسماعيل	حرب	عفانه		1	1	1952-02-20		1	940011331		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
335	27986	فتحي	عبدالفتاح	عبدالله	جوده		1	1	1952-01-07		1	976325845		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
336	13423	ياسر	شعبان	عبدالله	مهنا		1	1	1965-10-29		1	915951537		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
337	7096	محمد	موسي	عبدالجواد	الدعالسه		1	1	1948-08-20		1	917610438		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
338	22861	محمود	عبدالقادر	احمد	مسلم		1	1	1948-01-12		1	909986036		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
339	40982	علي	عليان	محمد	البرديني		1	1	1949-04-03		1	975332529		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
340	32618	عبدالفتاح	سعيد	العبدالرنتيسي			1	1	1963-07-31		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
341	48463	ماهر	احمد	ذيب	ريان		1	1	1979-01-08		1	901517490		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
342	48362	باسل	سيف	الدين	محمد		1	1	1977-12-26		1	900529363		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
343	48854	سعيد	سعيد	محمود	البياري		1	1	1978-05-05		1	900661562		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
344	41464	محمد	جابر	محمد	ابوعسكر		1	1	1970-11-05		1	909497364		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
345	23395	نوال	السعيد	محمد	كلوب		2	1	1972-07-10		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
346	41062	منيره	علي				2	1	1960-12-29		1	412351884		1	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
347	21605	خالد	صائب	خالد	الريس		1	1	1973-04-24		1	410130496		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
348	23555	باسم	محمد	ابراهيم	رجب		1	1	1974-02-20		1	410142954		1	5			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
349	28203	حسن	محمد	حسن	مقاط		1	1	1961-05-11		1	985310341		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
350	28206	عوني	محمد	سليم	كحيل		1	1	1955-07-20		1	917445967		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
351	15999	عزات	سعيد	محمد	الريفي		1	1	1956-02-16		1	907500144		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
352	39173	بشير	مصباح	حامد	البردويل		1	1	1956-03-13		1	931077069		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
353	39773	احمد	محمد	دخل	الله		1	1	1974-01-05		1	900180779		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
354	42527	احمد	نايف	صالح	شبير		1	1	1975-09-29		1	901342766		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
355	14889	حسن	علي	ابراهيم	شهوان		1	1	1960-11-12		1	928127760		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
356	22535	احمد	نمر	توفيق	مهاني		1	1	1977-12-13		1	901597757		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
357	18014	محمود	عبدالعزيز	محمد	ابوشريعه		1	1	1970-10-29		1	946572880		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
358	42378	احمد	محمد	عبدالقادر	ابوسيف		1	1	1958-09-03		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
359	37028	يوسف	عبدالرحمن	عيد	سحويل		1	1	1960-06-28		1	922040662		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
360	3195	احمد	حسن	عبدالسلام	غريب		1	1	1948-11-20		1	928410810		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
361	17972	عبدالعزيز	توفيق	محمد	قديح		1	1	1950-02-19		1	950040121		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
362	7607	محمود	محمد	احمد	الفرا		1	1	1954-04-07		1	938567245		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
363	11303	غسان	محمد	ابراهيم	حجازي		1	1	1965-03-20		1	967475856		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
364	11400	احمد	اسماعيل	محمد	عزام		1	1	1959-05-12		1	960205235		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
365	24591	منصور	احمد	يوسف	ابوعمره		1	1	1955-01-18		1	952127959		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
366	28205	علاء	صالح	ابراهيم	المشهراوي		1	1	1966-09-15		1	902261858		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
367	41626	توفيق	سليمان	زايد	ابوشريعه		1	1	1956-02-19		1	803059716		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
368	16005	عبدالكريم	محمد	عمر	البحطيطي		1	1	1960-02-09		1	921085189		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
369	16002	طلعت	محمد	خليل	اللوح		1	1	1961-01-01		1	902090950		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
370	205272	محمد	مؤمن	راجح	عايش		1	1	1981-08-20		1	906774419		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
371	16334	محمد	احمد	صالح	سكيك		1	1	1992-12-31		1	410068373		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
372	40754	احمد	جمعه	سالم	هليل		1	1	1974-08-03		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
373	38894	عماد	عبدالله	عبدالحميد	شاهين		1	1	1974-06-11		1	900238304		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
374	23734	غاده	محمد	شعبان	نسمان		2	1	1972-02-05		1	410134456		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
375	12598	ناهض	رجب	حسن	العشي		1	1	1962-09-01		1	907550149		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
376	27388	توفيق	محمد	حسن	شمالي		1	1	1977-05-24		1	901655605		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
377	11478	خالد	سلامه	محمد	ابوحسان		1	1	1965-01-07		1	907132849		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
378	22117	احمد	محمد	محمد	ذكري		1	1	1942-01-13		1	410466270		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
379	24589	جمال	خليل	حسن	بكير		1	1	1959-01-17		1	973960958		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
380	42384	عيد	عبدالله	حسنين	ابونصيره		1	1	1950-12-23		1	968945642		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
381	39743	صابر	محمد	قدوره	صالح		1	1	1963-05-14		1	945892388		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
382	11334	عبدالرحمن	صبحي	عبدشقليه			1	1	1956-05-07		1	932093149		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
383	12046	صالح	بدوي	صالح	الشناط		1	1	1957-05-03		1	908903727		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
384	12908	عماد	سالم	محمد	صيام		1	1	1968-09-24		1	912265832		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
385	42531	اشرف	محمد	عبدالهادي	اسليم		1	1	1978-01-14		1	900529025		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
386	12237	سليمان	موسي	اسعد	سرداح		1	1	1959-04-02		1	962611562		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
387	201848	صلاح	محمود	صالح	عروق		1	1	1977-10-25		1	900486184		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
388	12836	زهدي	رشاد	محمد	البيطار		1	1	1953-03-22		1	902510841		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
389	43562	حسام	محمد	سالم	ماضي		1	1	1969-02-15		1	919025809		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
390	14892	جواد	علي	اسماعيل	القصابغلي		1	1	1960-05-07		1	903166163		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
391	29230	سهير	علي	عبدمعروف			2	1	1968-03-08		1	411191315		1	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
392	25801	اشرف	حسين	فرج	الواديه		1	1	1976-08-28		1	901267823		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
393	13514	عماد	ابراهيم	احمد	البلعاوي		1	1	1976-01-17		1	901000190		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
394	49536	منال	كامل	محمد	الطويل		2	1	1976-02-22		1	900977372		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
395	38955	محمد	علي	حسين	الزويدي		1	1	1980-02-03		1	903542116		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
396	40861	يوسف	حسن	يوسف	الزعلان		1	1	1974-06-01		1	900220153		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
397	39649	حسين	محمد	عبدالرحمن	شاهين		1	1	1962-05-27		1	906360367		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
398	40156	محمود	عبدالفتاح	محمود	حسين		1	1	1948-12-24		1	906045141		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
399	8978	زكي	شعبان	حمدان	ابوعمر		1	1	1953-05-16		1	954340337		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
400	14891	ايهاب	طه	احمد	الغندور		1	1	1969-12-30		1	935770271		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
401	46667	محمد	علي	محمود	البرعي		1	1	1979-05-14		1	951487958		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
402	204915	انوار	عبدالله	حسين	الجوجو		2	1	1982-04-21		1	906529474		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
403	19264	سمير	فايز	اسماعيل	عبدالقادر		1	1	1969-04-27		1	910089739		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
404	19243	اسامه	محمد	اسماعيل	المدهون		1	1	1961-02-20		1	926236233		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
405	13513	محمدصالح	دردونه	نادي	دردونه		1	1	1959-12-03		1	921360632		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
406	42383	خضر	سلمي	حسين	قويدر		1	1	1959-02-20		1	968860858		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
407	12045	عبدالهادي	كامل	احمد	شنيوره		1	1	1963-04-06		1	939881272		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
408	43423	محمود	جمعه	محمد	ابوجياب		1	1	1964-02-17		1	909750895		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
409	48790	هدايه	محمود	محمد	العسولي		2	1	1969-08-21		1	411067176		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
410	40101	سهير	اسماعيل	محمد	الاعرج		2	1	1972-11-15		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
411	48365	محمد	ابراهيم	سلمان	الحمايده		1	1	1967-09-18		1	923774236		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
412	48607	اسماء	حمدان	مصطفى	عبيد		2	1	1974-01-21		1	900166463		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
413	41627	يوسف	حسين				1	1	1959-02-02		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
414	42544	حسين	يوسف	محمد	ابوشريعه		1	1	1975-02-09		1	900832056		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
415	16457	بشير	كمال	حافظ	الاغا		1	1	1960-01-21		1	910415462		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
416	43565	محمود	وصفي	محمود	البكري		1	1	1980-02-22		1	905269726		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
417	29214	حسام	حسن	عبدالله	المصري		1	1	1970-12-13		1	909905549		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
418	24592	ابراهيم	يوسف	احمد	محمد		1	1	1958-08-05		1	925602765		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
419	45984	امجد	حسن	يوسف	دحلان		1	1	1975-07-12		1	900888736		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
420	48363	محمد	ابراهيم	صبحي	شعشاعه		1	1	1979-03-13		1	903484996		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
421	21518	محمد	سليمان	عطيه	ابوموسي		1	1	1973-10-12		1	924444730		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
422	20941	سامي	سالم	محمد	العويطي		1	1	1961-10-03		1	952237550		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
423	27952	ابراهيم	محمد	مسلم	عصفور		1	1	1957-04-24		1	923785133		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
424	42372	بدوان	عبدالفتاح	احمد	بدوان		1	1	1970-04-30		1	910731942		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
425	13424	مهدي	عرفات	حسين	حرزالله		1	1	1973-12-31		1	935347443		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
426	38011	احمد	خليل	محمد	نبهان		1	1	1960-12-03		1	410053789		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
427	26551	ربيع	فرح	ربيع	النجار		1	1	1967-09-22		1	918305145		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
428	43559	جلال	عبدالفتاح	محمد	اسماعيل		1	1	1968-11-13		1	920930872		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
429	9390	سليم	حسين	سليم	حرزالله		1	1	1960-11-13		1	931085179		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
430	45767	فرج	محمود	محمد	المصري		1	1	1965-10-23		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
431	24588	منذر	عبدالفتاح	حسن	كراز		1	1	1965-05-10		1	959092354		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
432	29229	ممدوح	روبين	محمد	زين		1	1	1973-05-04		1	924580145		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
433	42055	عيسي	رزق	عبدعطاالله			1	1	1967-08-05		1	983279878		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
434	16456	بلال	حسن	محمد	القرشلي		1	1	1975-12-31		1	900971995		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
435	29247	سامي	خميس	سالم	الدره		1	1	1964-09-21		1	912828530		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
436	27988	سامي	ابراهيم	محمد	ابومخيمر		1	1	1972-08-13		1	934952763		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
437	41990	منصور	عبدالهادي	محمد	فالوجي		1	1	1971-08-11		1	925350399		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
438	42685	رامي	احمد	سليمان	ابوسلامه		1	1	1981-02-28		1	906643176		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
439	39647	محمد	اكرم	صدقي	الكاظمي		1	1	1972-05-12		1	932603053		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
440	42374	رائد	نعيم	سليمان	عكاشه		1	1	1977-09-17		1	901601567		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
441	42021	فرج	احمد	حسن	زقوت		1	1	1977-09-25		1	901592055		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
442	9207	عوض	عيسي	محمد	العيسوي		1	1	1956-10-30		1	926415142		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
443	48698	عبدالله	محمد	احمد	طافش		1	1	1982-01-11		1	909127433		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
444	27955	نصر	كامل	ابراهيم	صيام		1	1	1967-08-02		1	911962074		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
445	44057	امين	عدنان	صالح	الاغا		1	1	1969-10-27		1	945270858		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
446	19475	وليد	محمود	حسين	صقر		1	1	1963-10-10		1	952245389		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
447	41565	عمر	ذيب	هاشم	جنيد		1	1	1966-11-06		1	915842686		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
448	11299	خضر	محمد	احمد	الغول		1	1	1950-12-08		1	952485340		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
449	46539	رائد	حمدي	محمود	حميد		1	1	1973-10-06		1	950833269		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
450	17802	محمد	احمد	مطر	منصور		1	1	1965-02-05		1	410318695		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
451	17137	يوسف	عبدالله	حسن	ابوداير		1	1	1965-09-08		1	906801451		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
452	43156	زياد	محمد	على	تمراز		1	1	1972-11-24		1	915305999		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
453	42370	عاطف	يوسف	عبدالمجيد	احمد		1	1	1961-05-14		1	917046542		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
454	11968	اميمه	محمد	سليم	صادق		2	1	1962-04-21		1	935042036		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
455	11646	عمر	عزالدين	عمر	الخضري		1	1	1959-07-31		1	946202876		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
456	204532	ياسر	محمد	على	تايه		1	1	1978-06-06		1	900521782		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
457	205254	ختام	خميس	سعيد	زملط		2	1	1977-03-06		1	900778960		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
458	44214	ايمن	ابراهيم	حسين	حبوب		1	1	1975-01-16		1	900806340		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
459	205159	اياد	زهير	محمد	الكفارنه		1	1	1980-05-10		1	903510345		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
460	42019	عمر	عمر	خليل	المعصوابي		1	1	1972-02-20		1	912290129		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
461	37542	احمد	محمد	يوسف	داود		1	1	1968-04-29		1	907000392		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
462	29919	محمد	احمد	حسني	زويدي		1	1	1951-01-28		1	902046549		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
463	23068	حسام	حلمي	محمد	شاهين		1	1	1965-09-09		1	923764021		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
464	43563	عاطف	احمد	ايوب	عطاالله		1	1	1958-08-18		1	901985960		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
465	43346	عبدالله	سلمان	عطيه	ابوعيده		1	1	1975-07-05		1	900878380		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
466	42542	ماجد	محمد	درويش	المدهون		1	1	1974-09-19		1	900315185		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
467	38729	صابر	سليمان	عبدالقادر	ابولبن		1	1	1966-11-08		1	911996676		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
468	26662	نائل	اكرم	محمد	الدهشان		1	1	1969-09-20		1	912267069		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
469	16455	ابراهيم	مبارك	هويشل	ابوهويشل		1	1	1972-02-08		1	915306757		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
470	29227	محمداشرف	عصام	كامل	النونو		1	1	1976-07-06		1	901332270		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
471	29927	رياض	محمد	علي	عوده		1	1	1962-10-08		1	926485665		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
472	40626	محمد	احمد				1	1	1979-12-21		1	800813644		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
473	45717	ابراهيم	موسى	محمود	الدبس		1	1	1958-01-14		1	921155735		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
474	40362	عمر	سلامه	ابراهيم	ابويوسف		1	1	1980-11-22		1	905501482		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
475	29228	مها	محمد	شكري	الاحول		2	1	1975-10-30		1	900840067		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
476	26870	سناء	عبدالمعطي	حسين	الغصين		2	1	1960-03-23		1	411163157		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
477	16452	وليد	هاشم	سليم	الاغا		1	1	1957-11-16		1	932060643		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
478	12238	معتز	حسام	جبر	الوحيدي		1	1	1947-09-04		1	921340337		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
479	205149	ناهض	محمد	صلاح	جراده		1	1	1961-11-02		1	976375188		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
480	46825	مشرف	نعمان	مشرف	القدوه		1	1	1980-10-07		1	410146211		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
481	38895	عبدالغني	ابراهيم	احمد	ابوطير		1	1	1977-01-13		1	901241893		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
482	204533	رائد	محمد	غازى	عبدالرحمن		1	1	1977-07-15		1	901667162		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
483	48853	فاتن	جهاد	عبدالله	مهنا		2	1	1973-03-09		1	412449514		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
484	26885	زهير	نعيم	عبدالوهاب	وهبه		1	1	1954-02-12		1	923060164		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
485	28292	نبيل	محمد	احمد	الطواب		1	1	1968-12-19		1	411955644		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
486	41992	سمير	غازي	شعبان	مرتجي		1	1	1961-01-29		1	923895155		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
487	16454	مجدي	حسن	جبر	العفيفي		1	1	1960-06-18		1	906396379		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
488	21397	حسام	بكير	حسن	عبدو		1	1	1964-02-25		1	921443024		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
489	48671	رائد	عبدالعزيز	حسين	فارس		1	1	1980-07-17		1	905267530		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
490	46003	ضياء	هشام	محمد	ابوجبل		1	1	1979-03-17		1	903483303		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
491	14882	محمد	محمد	عبدالرحمن	الحلبي		1	1	1966-07-19		1	926805284		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
492	42608	تامر	حامد	رجب	الغول		1	1	1977-04-12		1	901628792		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
493	204565	ريم	محمد	ابراهيم	داود		2	1	1976-10-16		1	411930175		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
494	26932	عبدالفتاح	علي	حسن	عيسي		1	1	1955-03-21		1	0		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
495	17800	رجائي	عطيه	عبدالعزيز	عيسي		1	1	1961-12-02		1	912350535		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
496	20949	مازن	صلاح	عطيه	العجله		1	1	1961-07-03		1	913021036		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
497	5844	عبدالخالق	لطفي	حسن	السويركي		1	1	1952-10-30		1	931010532		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
498	27951	محمد	خطاب	احمد	خطاب		1	1	1953-09-02		1	942131632		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
499	27818	رمضان	محمود	سليمان	ابوعوده		1	1	1962-03-04		1	916480577		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
500	27992	خالد	سعيد	موسي	ضاهر		1	1	1954-06-22		1	903006732		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
501	13766	سمر	رجب	سعيد	عطاالله		2	1	1969-05-24		1	911444545		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
502	202010	محمد	زياد	احمد	حجو		1	1	1977-12-17		1	900615303		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
503	22821	انور	محمد	حسن	موسي		1	1	1966-07-29		1	965000656		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
504	16451	سامي	محمود	احمد	السيد		1	1	1959-12-12		1	958981458		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
505	25145	نبيل	محمد	حسين	سرور		1	1	1965-06-11		1	906257548		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
506	22539	لؤي	يوسف	عمر	شعث		1	1	1969-10-19		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
507	40194	حسن	محمد	محمود	عقل		1	1	1962-11-02		1	410011761		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
508	42068	زياد	محمد	ابراهيم	البرعي		1	1	1960-03-15		1	916805773		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
509	13768	وائل	مصطفي	عبدالهادي	شلايل		1	1	1968-10-28		1	910808062		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
510	28208	احمد	حسن	عقيل	زقوت		1	1	1952-01-04		1	976515148		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
511	37099	انور	مصلح	عبدالله	سعده		1	1	1956-07-09		1	901930354		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
512	44527	محمد	سليمان	محمد	الحساينه		1	1	1977-07-08		1	901655209		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
513	11587	حازم	محمد	هاشم	الفرا		1	1	1968-02-15		1	963528542		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
514	26432	شرف	عياده	عليان	ابوالقمبز		1	1	1969-12-06		1	912271012		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
515	204568	محمود	رفيق	حسن	المدهون		1	1	1981-12-23		1	906729421		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
516	28441	خميس	علي	فضل	الجماصي		1	1	1954-11-07		1	922505375		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
517	28207	رجب	العبدحسن	السلطان			1	1	1955-03-21		1	902305747		1	7			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
518	18041	مازن	محمود	محمد	على		1	1	1967-08-18		1	908170848		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
519	42986	اياد	عبدالكريم	محمود	الهرش		1	1	1975-03-14		1	900846585		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
520	21836	ذياب	محمد	ذياب	ابوعيده		1	1	1968-04-11		1	912038270		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
521	42386	محمد	ابراهيم	محمد	ابوعوض		1	1	1967-01-28		1	953891678		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
522	47127	رائد	محمد	سليم	صادق		1	1	1969-02-12		1	935042069		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
523	42373	رجائي	سعيد	عبدالعزيز	عفانه		1	1	1963-12-14		1	915678577		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
524	44060	اسامه	محمود	محمد	ابوحطب		1	1	1969-08-31		1	410533616		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
525	42375	يوسف	سالم	سلامه	ابوغرابه		1	1	1962-07-16		1	974990236		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
526	14899	عبدالكريم	فراج	علي	بكرون		1	1	1965-12-10		1	923317564		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
527	45843	عصام	مصطفي	جوده	جوده		1	1	1966-05-02		1	966357691		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
528	25100	سناء	محمود	محمد	ابوحطب		2	1	1967-04-14		1	411081169		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
529	41091	حنان	خليل	طه	سمور		2	1	1973-10-25		1	412347692		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
530	26882	محمود	ابراهيم	علي	خضر		1	1	1969-11-24		1	910090513		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
531	15049	ماهر	عطا	روبين	الفرام		1	1	1974-04-24		1	919263673		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
532	11356	نسرين	عيسي	نصيف	الفار		2	1	1966-09-11		1	976373274		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
533	14881	رفيق	صبحي	سلامه	الشيخ		1	1	1956-10-02		1	923315253		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
534	21371	محمود	ابراهيم	عواد	الشريف		1	1	1950-10-06		1	911492148		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
535	8079	سليم	عوض	سليم	الخضري		1	1	1956-11-05		1	941548026		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
536	43135	محمد	يوسف	احمد	السباح		1	1	1972-08-10		1	914579230		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
537	38534	انمار	محمد	حسين	ابوحويج		2	1	1961-12-02		1	412327447		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
538	48625	محمد	محمد	رزق	ابراهيم		1	1	1972-08-31		1	0		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
539	204567	حسام	الدين	نوفل	حسن		1	1	1982-11-21		1	800900284		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
540	27993	ممدوح	محمود	محمد	ابوعسكر		1	1	1975-10-29		1	901007039		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
541	12049	عدنان	سلمي	عبدالكريم	النجار		1	1	1958-10-11		1	963527932		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
542	44055	عاطف	اسماعيل	محمد	عزام		1	1	1972-01-20		1	912282290		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
543	13480	اكرم	صبحي	عبدو	الشاعر		1	1	1972-08-22		1	919611590		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
544	42389	عبدالقادر	حافظ	محمد	ورش		1	1	1952-05-09		1	916315633		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
545	28521	عطا	شعبان	محمد	بكر		1	1	1952-04-19		1	928000736		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
546	44054	محمد	سالم	ابراهيم	ابوعمره		1	1	1981-04-16		1	908986581		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
547	45662	رافت	محمد	حسن	محسن		1	1	1976-09-02		1	901357715		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
548	44059	ايمن	محمد	حماد	ابومغيصيب		1	1	1975-12-27		1	411914534		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
549	69317	لبنى	اسحاق	سليمان	البرهم		2	1	1976-11-10		1	904615879		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
550	92710	ليث	عدنان	عبدالقادر	دراغمه		1	1	1983-07-08		1	936295062		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
551	73603	ماجد	عبدالكريم	عبدالله	ابوالعيلة		1	1	1970-06-27		1	962878062		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
552	67958	مازن	عزيز	علي	اللحام		1	1	1974-02-01		1	411457385		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
553	73479	ماهر	امين	صبحي	الخطيب		1	1	1973-06-09		1	987577566		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
554	91991	ماهر	حلمي	فياض	القيسي		1	1	1976-04-03		1	900384413		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
555	69944	ماهر	علي	محمود	محمد		1	1	1978-08-01		1	907995500		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
556	67798	ماهر	فايز	حماد	الاحمد		1	1	1975-05-28		1	962917316		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
557	81557	مجدولين	عبدالله	احمد	عباس		2	1	1972-12-14		1	411721103		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
558	68712	مجدي	احمد	عبدالفتاح	عبدالحميد		1	1	1961-04-06		1	998831572		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
559	73619	مجدي	عامر	اسعد	زيداني		1	1	1976-03-22		1	900106147		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
560	81637	محمد	احمد	سليم	الاحمد		1	1	1981-02-08		1	907722896		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
561	69903	محمد	اسحق	عز	الدين		1	1	1970-12-15		1	908152010		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
562	73516	محمد	اسماعيل	محمد	المغربي		1	1	1966-07-19		1	944015338		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
563	73563	محمد	انيس	يوسف	سحويل		1	1	1956-05-05		1	938500543		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
564	92425	محمد	جعفر	صادق	سعاده		1	1	1981-04-29		1	906487343		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
565	73549	محمد	حمدان	محمد	احمد		1	1	1960-05-20		1	958363269		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
566	95820	محمد	خيري	عيد	علوي		1	1	1983-08-31		1	936504455		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
567	69501	محمد	سعيد	سليمان	سعيد		1	1	1968-01-20		1	936415165		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
568	76729	محمد	صالح	احمد	عيسى		1	1	1962-01-21		1	938377694		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
569	73611	محمد	صالح	محمد	اعبيد		1	1	1962-01-29		1	988655445		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
570	23427	محمد	عادل	محمد	ياسين		1	1	1971-02-09		1	411860133		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
571	69489	محمد	عبدالله	محمد	سعده		1	1	1977-12-03		1	904505435		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
572	165411	محمد	عدنان	محمد	داود		1	1	1978-03-28		1	907112585		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
573	38641	محمد	علي	محمد			1	1	1958-07-05		1	411776529		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
574	68373	محمد	علي	ابراهيم	شحاده		1	1	1979-10-18		1	905141776		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
575	69313	محمد	علي	محمد	علي		1	1	1973-04-05		1	907931364		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
576	67694	محمد	كنعان	مصطفى	محمد		1	1	1958-12-15		1	969571850		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
577	63206	محمد	محمود	سعيد	ابوعيفان		1	1	1964-12-13		1	986352359		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
578	68798	محمد	محمود	سلامه	ربعي		1	1	1958-05-03		1	984761262		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
579	66534	محمد	محمود	محمد	ابوسليمان		1	1	1979-11-06		1	904599057		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
580	73550	محمد	مرتضى	عبدالجليل	صالح		1	1	1961-04-01		1	991796384		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
581	63203	محمد	هزيم	يعقوب	عثمان		1	1	1961-05-18		1	938512241		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
582	82162	محمد	يوسف	خليل	جبران		1	1	1973-12-08		1	990593899		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
583	163681	محمد	يوسف	محمد	خليل		1	1	1964-08-16		1	967853003		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
584	80898	محمود	احمد	عبدالرحيم	صافي		1	1	1971-03-13		1	909519381		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
585	73517	محمود	جاسر	محمود	عفونه		1	1	1961-04-01		1	957597784		2	13			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
586	69503	محمود	حسن	خليل	محمد		1	1	1962-06-02		1	975365867		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
587	163543	محمود	طارق	محمود	هريش		1	1	1973-05-05		1	914114590		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
588	160008	محمود	عادل	حمدان	الجبالي		1	1	1968-01-05		1	942811191		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
589	163695	محمود	فارس	محمد	يونس		1	1	1986-05-12		1	914235080		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
590	163539	محمود	نادر	محمود	الفارس		1	1	1982-04-23		1	913205837		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
591	154539	مراد	عبدالجابر	محمود	عاروري		1	1	1986-07-20		1	851312256		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
592	63169	مراد	عبدالرحيم	احمد	برهوم		1	1	1974-01-01		1	901162453		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
593	80658	مراد	مصطفى	محمود	صالح	Morad Zaitawi	1	1	1976-11-08		1	900369281		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
594	91999	مراد	هشام	صالح	الفروخ		1	1	1979-02-01		1	905190021		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
595	73620	مصباح	حسين	احمد	راميه		1	1	1960-11-06		1	988807640		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
596	73419	مصطفى	اسعد	مصطفى	ابوحسن		1	1	1963-01-18		1	947760591		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
597	69963	مصطفى	محمود	يوسف	ابونفيسه		1	1	1965-04-16		1	965178544		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
598	73458	مصطفي	حسن	محمد	داود		1	1	1972-03-17		1	925059255		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
599	81468	مصعب	طلال	محمد	سدر		1	1	1981-12-15		1	911669745		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
600	151843	معاذ	بهجات	مصطفى	دراغمه	Moath Bahjat Mustaf Daraghmeh	1	1	1984-11-01	114	1	941135170		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
601	163542	معتصم	فخري	محمد	دويكات		1	1	1981-11-16		1	907926133		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
602	151404	منال	علي	سليمان	عبدالرحمن		2	1	1968-06-22		1	411993710		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
603	60309	موسى	امين	موسى	الغوج		1	1	1959-03-04		1	978775930		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
604	64694	موسى	عيسى	عبدالحميد	الزعاقيق		1	1	1978-10-14		1	902603380		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
605	64444	موسى	محمد	احمد	العسعس		1	1	1964-06-06		1	987140654		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
606	157104	مي	عبدالمجيد	حسن	حبايب		2	1	1981-07-26		1	983182965		1	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
607	101751	مي	عمر	أحمد	سمور		2	1	1984-06-16		1	936852409		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
608	155103	ميساء	محمد	أمين	يوسف		2	1	1973-04-12		1	026292169		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
609	95827	ميسم	جهاد	خليل	البابا		2	1	1985-02-19		1	850900275		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
610	66959	ميسون	خميس	محمود	الحمد		2	1	1959-04-11		1	954562138		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
611	17358	ميمون	رفيق	حسين	نزال		1	1	1959-01-20		1	960715274		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
612	69881	ناجح	محمود	احمد	مصطفى		1	1	1963-02-11		1	999726946		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
613	80123	نادية	ابراهيم	محمد	عريان		2	1	1967-09-18		1	410619308		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
614	160657	ناريمان	قاسم	عبدالكريم	عزام		2	1	1983-04-25		1	411515638		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
615	69962	ناصر	طاهر	يوسف	شوخه		1	1	1974-01-06		1	954454351		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
616	81638	ناصر	فرح	حسن	جبارين		1	1	1968-02-25		1	963060405		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
617	64908	ناصر	يوسف	جبر	الكعكي		1	1	1974-07-02		1	943447417		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
618	73613	نائل	وجيه	جبر	ابراهيم		1	1	1959-03-01		1	991785361		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
619	73528	نجيب	شاكر	محمود	بدر		1	1	1961-06-18		1	933403172		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
620	82980	نداء	علي	حمزة	السخن		2	1	1972-03-21		1	410811509		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
621	101758	نديم	محمد	محمد	بزار		1	1	1983-06-22		1	921727749		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
622	61589	نزيه	محمود	حسين	حسن		1	1	1980-03-29		1	906819123		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
623	82753	نسرين	توفيق	عبدطقش			2	1	1973-11-06		1	026293621		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
624	69492	نسرين	محمود	عبدالعزيز	النجمي		2	1	1976-11-29		1	900381187		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
625	69318	نسيم	احمد	محمد	احمد		1	1	1974-02-24		1	994313153		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
626	160005	نسيم	أحمد	سلامه	جمعة		1	1	1974-08-29		1	984633206		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
627	73409	نصري	جميل	خليل	لحلوح		1	1	1961-05-07		1	968265280		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
628	73615	نضال	احمد	رشيد	سليمان		1	1	1965-03-17		1	942810532		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
629	68061	نضال	حسان	محمود	الحليفاوي		1	1	1962-07-28		1	989215736		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
630	26098	نضال	عبدالرحمن	احمد	ابوعلي		1	1	1964-06-28		1	948027776		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
631	91802	نهال	راشد	أحمد	دار		2	1	1983-06-13		1	944399567		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
632	68797	نهيد	جمعه	عثمان	ابوصلاح		1	1	1977-08-27		1	913496345		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
633	92000	نور	الدين	احمد	محمود		1	1	1971-01-05		1	000442033		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
634	80101	نور	الدين	هاشم	عطية		1	1	1977-01-15		1	900382441		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
635	163679	نور	فاروق	عبدحج	عبد	Noor Farouq Abed Haj- Abed	2	1	1982-10-25	1102	1	920285814		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
636	82915	هادي	جعفر	صادق	السعاده		1	1	1979-05-21		1	906487335		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
637	97242	هبه	عبدالرحمن	نمر	الناصر		2	1	1981-10-08		1	907587513		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
638	98024	هبه	عمر	محمود	ابوهاني		2	1	1981-05-26		1	913211561		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
639	205220	هديل	حسن	عيسى	حمدان		2	1	1975-03-11		1	901059485		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
640	73425	هشام	ابراهيم	شحاده	مخامره		1	1	1969-08-04		1	966812695		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
641	69887	هشام	حسني	صالح	ملحم		1	1	1961-06-19		1	950950782		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
642	81464	همام	رشدي	عبدالجبار	محمد		1	1	1975-09-21		1	901099895		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
643	91994	هنيه	صالح	زيدان	عجاج		2	1	1962-03-17		1	994243392		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
644	69697	هيا	جمال	طاهر	موسى		2	1	1978-02-17		1	901173906		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
645	100684	هيثم	زكريا	عبدالقادر	الشريف		1	1	1974-09-27		1	942567959		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
646	80155	وحيد	فواز	فايز	قدورة		1	1	1970-09-10		1	902072651		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
647	162294	وداع	محمد	ابراهيم	لدادوه		2	1	1986-05-10		1	946450244		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
648	73472	وسيم	علي	حسن	نوفل		1	1	1958-12-04		1	922170246		2	10			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
649	82336	وضاح	خالد	حمد	الله		1	1	1978-05-06		1	902936848		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
650	101755	وفاء	محمد	حمزه	عواد		2	1	1980-07-14		1	410127559		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
651	98026	وليد	خالد	هارون	مرعي		1	1	1984-11-22		1	941514382		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
652	73502	ياسر	احمد	محمد	غانم		1	1	1960-01-26		1	944583087		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
653	95816	ياسر	محمد	سليم	وحيدي		1	1	1985-06-23		1	946052149		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
654	69308	يحيى	حامد	محمد	الأقرع		1	1	1959-09-26		1	992400358		2	13			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
655	155095	يعقوب	عبد	العزيز	عبدالرزاق		1	1	1970-06-01		1	907605992		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
656	73580	يوسف	محمد	الحاج	محمد		1	1	1961-02-15		1	972900823		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
657	82039	يوسف	محمد	سري	شاكر		1	1	1979-01-21		1	031530892		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
658	64320	يوسف	محمد	عبدعوض			1	1	1965-02-15		1	944795269		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
659	153432	يوسف	محمد	يوسف	ارتاحي	Yousef Mohammad Ertahi	1	1	1986-07-05	1106	1	946466588		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
660	69847	يونس	احمد	عبدالفتاح	عوض		1	1	1975-01-30		1	939258372		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
661	81661	ابراهيم	خالد	ابراهيم	ابولبده		1	1	1977-10-21		1	904974656		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
662	165412	ابراهيم	محمد	عبداللطيف	عمرو		1	1	1968-06-06		1	942915109		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
663	82876	ابراهيم	محمد	علي	يوسف		1	1	1978-02-10		1	905746152		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
664	65341	احمد	حسن	عبدالقادر	حماد		1	1	1980-02-26		1	904643574		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
665	69883	احمد	سعود	احمد	منيزل		1	1	1963-01-01		1	410446801		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
666	91627	احمد	عبدالجبار	عثمان	جبريل		1	1	1968-12-10		1	946787769		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
667	69484	احمد	عطا	علي	السلامين		1	1	1965-08-12		1	987256591		2	13			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
668	75627	احمد	عمر	سليمان	صفوري		1	1	1971-11-02		1	994328375		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
669	69815	احمد	محمود	احمد	علي		1	1	1975-07-02		1	900721382		2	10			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
670	69431	اسامه	يوسف	حسن	مشاقي		1	1	1973-10-08		1	900054008		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
671	96765	اسلام	صبحي	سليم	عارضه		2	1	1986-06-10		1	851569434		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
672	160009	اسماعيل	مصطفى	اسماعيل	نمر		1	1	1968-07-10		1	995116589		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
673	73406	اشرف	رشاد	يونس	زاهده		1	1	1975-05-16		1	900014663		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
674	150250	اشرف	عبدالحليم	كامل	فرسخ		1	1	1974-10-10		1	906947593		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
675	91800	اكرام	راشد	احمد	خويره		2	1	1979-06-02		1	904006087		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
676	160006	اكرم	محمد	محمود	اشنيور		1	1	1970-07-02		1	950276592		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
677	153939	الاء	أحمد	سليم	جيوسي		2	1	1987-05-15		1	946646288		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
678	67099	امجد	رشدي	صادق	الحنبلي		1	1	1962-07-29		1	980252688		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
679	82894	امجد	عمر	أحمد	بدير		1	1	1977-01-01		1	901235424		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
680	69490	امجد	فضل	عبدالمنعم	الهشلمون		1	1	1975-02-06		1	933344996		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
681	81612	امل	عبدفهمي	احمد			2	1	1983-08-28		1	851312322		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
682	82828	أمينة	محمد	حمدان	ابوحديد		2	1	1981-01-30		1	907613806		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
683	73427	انور	محمد	محمود	شنيور		1	1	1962-07-31		1	950276568		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
684	64327	اوس	محمد	علي	عوض		1	1	1967-11-26		1	901404681		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
685	85648	اياد	ابراهيم	حسن	عريقات		1	1	1980-08-09		1	905734406		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
686	69488	اياد	هشام	رشاد	خطيب		1	1	1973-04-14		1	990728966		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
687	69757	ايفا	جميل	عبدالعزيز	تلول		2	1	1971-05-07		1	946834223		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
688	68379	ايمان	تحسين	محمد	اسعد		2	1	1966-09-24		1	995470275		1	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
689	85233	ايناس	طلال	قاسم	قادوس		2	1	1977-12-30		1	905036125		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
690	66806	ايهاب	رشاد	عيد	قريع		1	1	1976-09-15		1	900384728		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
691	91624	ايهاب	محمد	عبددغرة			1	1	1978-02-20		1	851611897		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
692	62180	ايهاب	محمد	فايز	صبيح		1	1	1972-05-29		1	919071365		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
693	73587	ايوب	احمد	عبدالحميد	عبيدة		1	1	1965-01-15		1	988605465		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
694	92467	أحمد	جميل	أحمد	عاصي		1	1	1985-03-18		1	852232321		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
695	97611	أحمد	عبدالمطلب	حسين	السيد		1	1	1983-04-19		1	851612895		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
696	92781	أحمد	فوزي	مفلح	ابوبكر		1	1	1979-02-16		1	904726965		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
697	155154	أحمد	محمد	محمود	الهدار		1	1	1980-12-30		1	919772368		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
698	92564	أحمد	يوسف	محمد	الحاج		1	1	1967-08-02		1	963605175		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
699	160007	ايمن	قاسم	محمد	جبر		1	1	1971-08-05		1	953536703		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
700	97267	باسل	رئيس	احمد	عنتر		1	1	1978-05-08		1	905002168		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
701	81284	باسل	عريف	روبين	الجعبري		1	1	1977-11-28		1	851091132		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
702	82403	باسم	حسني		محمد		1	1	1960-11-15		1	981350267		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
703	93361	باسم	موسى	مسعود	عيسى		1	1	1970-01-04		1	945485209		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
704	81110	بثينة	عبدالمنعم	محمد	حمدان		2	1	1982-06-09		1	410128037		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
705	68079	بلال	عبدالغني	مصطفى	كنعان		1	1	1960-06-25		1	944746031		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
706	95828	بلال	عرفات	حسن	مرمش		1	1	1983-06-24		1	066212911		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
707	68085	بلال	محمود	محمد	ناصر		1	1	1967-01-07		1	932895162		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
708	81441	بلال	مصطفى	محمد	عنايا		1	1	1969-10-13		1	981482102		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
709	80897	بيان	صالح	احمد	برهوم		1	1	1979-01-15		1	904130739		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
710	69319	بيسان	كمال	رزق	عبدالرازق		2	1	1980-01-23		1	904998580		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
711	69406	تغريد	رمضان	عبدالله	ابوسمره		2	1	1964-02-25		1	974740433		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
712	152216	تمارا	فاروق	نظمي	باكير		2	1	1986-07-13		1	850446337		2	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
713	165	جيهان	محمد	سلمان	حسين		2	1	1978-01-07	1109	1	901207050		1	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
714	166	حمزه	خليل	ابراهيم	الطل		1	1	1993-03-26	1104	1	853949931		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
715	99	محمد	عمر	رمضان	محيسن		1	1	1992-07-19		1	854708682		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
716	96205	مريم	محمد	أحمد	دار		2	1	1986-05-17		1	910909191		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
717	158004	علا	عفيف	برهان	ياسين		2	1	1979-02-25		1	903914059		2	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
718	43714	عدنان	موسى	اسماعيل	الشيخ		1	1	1972-05-14		1	982063018		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
719	151403	احمد	توفيق	احمد	صوافطه		1	1	1973-03-21		1	908326812		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
720	80834	ثائر	ابراهيم	عمر	الزير		1	1	1975-12-13		1	944817287		2	9			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
721	179	يوسف	محمد	يوسف	يعقوب		1	1	1985-02-19	4	1	412580003		1	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
722	166759	شادي	تيسير	عيسى	زغب		1	1	1988-11-03		1	938616489		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
723	166761	عماد	قاسم	صبري	خليفة		1	1	1984-11-26		1	946306446		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
724	73439	حسني	علي	احمد	ابوغنام		1	1	1969-11-06		1	943810465		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
725	98025	نهاد	عزت	محمد	حسين		1	1	1976-09-08		1	904076437		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
726	167034	سامح	محمد	اسعد	قبها		1	1	1993-01-15		1	852127604		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
727	183	طارق	اشرف	عزيز	حامد		1	1	1986-09-08		1	911058634		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
728	167117	انعام	محمد	أحمد	سطرية		2	1	1989-08-09		1	852231257		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
729	82751	سمر	ضيف	الله	محمد		2	1	1976-11-21		1	902902790		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
730	184	محمد	سهيل	صبحي	عابد		1	1	1997-11-16		1	402676407		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
731	185	محمود	خالد	ابراهيم	ياسين		1	1	1969-01-16		1	980368377		2	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
732	186	ابراهيم	اكرم	ابراهيم	مهنا		1	1	1980-10-17		1	906214234		2	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
733	187	سالم	أحمد	سالم	أبوسالم		1	1	1994-12-20	1101	1	860054543		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
734	188	شاكر	ناصر	شاكر	ناصر		1	1	1993-03-26	21	1	851129452		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
735	122	عماد	مصطفى	محمود	زيتاوي		1	1	1984-12-06	1106	1	946589942		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
736	189	محمد	زهير	عبدالرحمن	قواسمة		1	1	1995-09-25	1104	1	401587738		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
737	190	وسيم	جاد	الله	سليم		1	1	1995-11-08	1101	1	410886295		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
738	191	مصطفى	محمد	مصطفى	هريش		1	1	1994-01-27	1101	1	854855236		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
739	192	ميسر	ضرار	معروف	خليل		2	1	1992-05-23	1106	1	853873958		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
740	193	مجد	زاهي	عبدالكريم	السعدي		1	1	1989-09-14		1	851749838		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
741	194	بشار	زياد	عبدابوعواد			1	1	1989-08-02	1103	1	852271410		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
742	195	احمد	اياد	سمير	عبدالدايم		1	1	1997-06-26	1101	1	402607733		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
743	196	أمير	جميل	محمد	خالد		1	1	1995-12-02		1	401641394		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
744	197	عدي	اياد	فايز	ابوغانم		1	1	1997-11-19	1101	1	402679542		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
745	198	صلاح	واصف	احمد	ابوصفية		1	1	1994-12-28	1102	1	859963241		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
746	200	بهاء	الدين	عبدالحميد	نعيم		1	1	1993-08-08	1101	1	854753183		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
747	167865	كريم	مصطفى	جاسر	دار	Kareem Mustafa Jaser Dar Bader	1	1	1988-06-07	4	1	412211823		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
748	66785	محمد	عبدالمنان	محمد	بدر		1	1	1971-05-20		1	948299953		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
749	201	سارة	محمد	شفيق	حلاق		2	1	1992-11-27		1	854338464		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
750	203	احمد	محمد	عبداللطيف	كنعان		1	1	1994-08-20	1101	1	944807965		1	13	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
751	210	نضال	محمد	حسين	فرح		1	1	1992-10-27	1115	1	853589505		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
752	213	معاذ	جبرين	محمد	اليوسف		1	1	1991-08-01	8	1	853179810		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
753	219	ابراهيم	عزام	سليم	سنيورة		1	1	1988-08-29	6	1	851139246		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
754	216	رشيد	زياد	رشيد	دراغمة		1	1	1994-07-19	1102	1	860082478		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
755	167999	معاذ	محي	الدين	عرابي		1	1	1993-05-06		1	853249977		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
756	168139	عاصم	هاشم	عبدالغني	يمك		1	1	1993-05-07		1	859016545		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
757	168092	ناديه	نبيل	عبدالكريم	صوان		2	1	1985-04-05		1	850893926		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
758	168140	محمد	محمود	عبدالهادي	العصافرة		1	1	1995-06-03		1	859864324		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
759	224	محمد	عايد	يوسف	دار		1	1	1992-01-01	1101	1	854273679		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
760	168091	محمد	عصام	محمد	ابوفرحة		1	1	1984-07-22		1	941139651		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
761	229	عمر	يوسف	علي	ابولطيفة		1	1	1985-08-04	1109	1	859839896		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
762	228	احمد	فواز	سامي	محمود		1	1	1991-09-22	1106	1	854360542		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
763	6611	عمر	شاكر	شاهين			1	1	1922-01-20		1	96926611		2	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
764	154	أشرف	علي	أسعد	دمج		1	1	1991-07-07	1107	1	852571157		1	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
765	118	وئام	عمر	حسن	قب		2	1	1975-06-06	4	1	959120031		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
766	61	خالد	عزمي	حسين	حمدان		1	1	1989-06-14	1101	1	852481928		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
767	67	عبدالفتاح	نمر	خراز			1	1	1958-09-20	1101	1	931840359		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
768	78	هيثم	عليان	احمد	طنطور		1	1	1987-07-25	1103	1	992530378		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
769	85	جهاد	جواد	عبدالجواد	عصفور		1	1	1989-04-20	1101	1	850493263		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
770	5	عز	الدين	عماد	فارس		1	1	1995-09-12	1102	1	859411258		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
771	220	سليمان	حسن	مصطفى	شراكة		1	1	1993-01-20		1	854407707		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
772	223	خالد	محمد	جميل	سيف		1	1	1997-07-16		1	402792543		1	12	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
773	184833	محمد	عبدداود	جودة			1	1	1990-07-14		1	852402783		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
774	595	مجدي	ابراهيم	عيد	الهذالين		1	1	2002-02-13		1	407435999		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
775	57	بلال	محمد	صبحي	ياسين		1	1	1984-06-20	1101	1	938383569		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
776	141	حسين	صالح	بدوي	ناصر		1	1	1965-07-25	1102	1	946629672		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
777	28	ريما	عبدالحميد	ذيب	عبدالحميد		2	1	1966-05-25	1109	1	924638588		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
778	596	جواهر	موسى	ارحيل	نجاده		1	1	1997-04-28		1	401139274		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
779	598	محمد	اسعاف	انور	الخطيب		1	1	1995-12-05		1	401516554		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
780	129	محمد	رشيد	محمد	عامر		1	1	1959-04-14	1105	1	986695252		2	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
781	185783	دعاء	عليان	عبدالجمل			2	1	1988-10-03		1	850321720		4	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
782	59	مرفت	حسن	أحمد	فوراني		2	1	1969-01-01	4	1	410643316		2	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
783	73	محمد	اسماعيل	محمود	عدس		1	1	1960-09-23	1101	1	993486125		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
784	11	محمد	عيسى	عبدالحميد	العزبة		1	1	1968-03-24	1104	1	984228163		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
785	1024	سوزي	ابراهيم	حسن	ابوشعبان		1	1	1983-02-23		1	931689996		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
786	1023	سناء	علي	مصطفى	خطيب		1	1	1986-04-20		1	914591953		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
787	60000	ليث	دراغمة	الترددات			1	1	2023-02-01		1	518962333		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
788	185663	آيه	عوني	صالح	الصالحي		2	1	1993-02-22	1103	1	854407442		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
789	185666	أسيل	طالب	محمد	مناع		2	1	1997-11-14		1	402673958		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
790	185664	بيان	محمد	فؤاد	داود		2	1	1998-08-05		1	403871296		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
791	185654	منار	ماهر	طه	سلايمه		1	1	1992-06-11		1	853824522		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
792	208	نائل	حسان	عبدابوحمد			1	1	1988-04-18	1102	1	850463761		2	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
793	185665	نعيم	جهاد	نمر	أبوحسان		1	1	1996-04-23	1102	1	401402441		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
794	73470	وائل	حسين	محمود	عوض		1	1	1961-03-25		1	953227873		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
795	185661	محمد	عاطف	توفيق	شوبكي		1	1	1990-08-30		1	851786509		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
796	185672	محمد	شعلان	فزاع	الجعبري		1	1	1989-02-02		1	851949024		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
797	185788	وسام	أحمد	خميس	أبوزخم		1	1	1996-01-14		1	410792914		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
798	185778	قصي	نشأت	صادق	عواد		1	1	1994-12-24	1107	1	858516180		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
799	185708	عز	الدين	رياض	عمر		1	1	1994-02-16		1	854742517		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
800	81601	محمد	عاطف	محمد	ميداني	Mohammed Atef Midani	1	1	1980-10-16	151501	1	410638902		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
801	103	محمد	عطا	تميم	تميمي		1	1	1989-07-14		1	852453570		1	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
802	2760	ايمان	بهيج	شريف	ابوعواد		1	1	1995-07-04		1	859826182		1	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
803	231	عز	الدين	اياد	انور		1	1	1995-05-21		1	854725017		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
804	232	مؤمن	عرفات	ديب	مسودة		1	1	1997-08-29		1	402720551		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
805	217	جميل	محمد	جميل	شواهنة		1	1	1993-03-13	1105	1	854422953		1	3	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
806	73438	عماد	عبدالله	علي	اسليم		1	1	1971-02-04		1	934160870		2	3			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
807	233	مروان	جاسر	محمد	سباتين		1	1	1999-02-25		1	404364515		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
808	85104	محمد	عبدالله	مسعود	درويش		1	1	1978-01-15		1	905551651		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
809	234	محمد	احمد	ابراهيم	ابوغليون		1	1	1998-01-17		1	403196785		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
810	235	حمزه	محمد	حسن	جلايطة		1	1	1999-02-12		1	401391362		1	12	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
811	237	محمود	هاني	عبدالجليل	دلاش		1	1	1994-10-13		1	860092485		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
812	238	هيثم	محمد	عايش	ابوحور		1	1	1994-06-21		1	859550030		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
813	199	محمود	شحدة	احمد	رجوب		1	1	1984-07-02	1104	1	938392297		1	8	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
814	239	مصعب	خالد	حسن	الفواقسة		1	1	1994-07-25		1	860117217		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
815	243	عبدالقادر	فهمي	صالح	ابولبدة		1	1	1976-02-17		1	901048553		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
816	241	منذر	حسن	حمودة	شيخ		1	1	2001-01-21		1	406749234		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
817	245	ايوب	صبحي	حسن	وهدان		1	1	1995-05-08		1	400631172		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
818	246	عمر	عبدالمنعم	حمد	نصر		1	1	1982-11-01		1	920102225		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
819	247	اسراء	احسان	يعقوب	ديك		2	1	1993-11-26		1	858844889		2	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
820	73473	نشات	حسن	عبداحمد	ابومحسن		1	1	1962-06-14		1	982674137		2	4			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
821	249	خليل	سعيد	صقر	شعراوي		1	1	1997-07-09		1	402449896		1	12	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
822	250	بهاء	الدين	محمد	نعمان		1	1	1998-06-10		1	403855174		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
823	253	محمد	محمود	حسن	دراويش		1	1	1999-10-03		1	405066267		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
824	254	سامر	عبدالرحيم	جمعة	حمدان		1	1	1991-10-20		1	853928943		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
825	92003	سامي	يوسف	شاكر	زيبادي		1	1	1977-08-14		1	906463617		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
826	256	محمد	صلاح	الدين	محمد		1	1	1997-07-26		1	402795231		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
827	257	رامي	محمود	راجح	قراريه		1	1	1986-09-17		1	850499195		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
828	258	كرم	محمد	حسن	دراويش		1	1	1999-06-10		1	404720286		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
829	259	أيوب	موسى	علي	الذويب		1	1	1996-04-22		1	401446919		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
830	169356	عدنان	عمار	سامي	الخندقجي		1	1	1989-07-10	1106	1	852214493		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
831	169355	وائل	ضرار	ابراهيم	عز		1	1	1992-10-19	1102	1	853413185		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
832	169360	خالد	هاشم	عبداللطيف	زهد		1	1	1988-03-17	2	1	851025023		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
833	169358	سماح	عبداللطيف	محمود	لحلوح		2	1	1991-03-03	1107	1	852510676		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
834	260	علي	عيسى	احمد	ابورحمة		1	1	2001-02-03		1	405638586		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
835	85251	سماح	حسني	عبدالفتاح	بكر		1	1	1982-08-31		1	914134184		2	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
836	261	أيسر	سليمان	محمود	شملاوي		1	1	1989-04-10		1	851934042		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
837	264	وعد	حسن	ديب	الفرارجة		2	1	1992-01-12		1	852757640		2	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
838	265	احمد	ابراهيم	عيسى	حديدي		1	1	1997-01-02		1	402282966		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
839	266	أحمد	شهاب	احمد	عبدالوهاب		1	1	1992-08-10		1	853651818		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
840	268	عزت	زهير	عزت	زهد		1	1	1984-07-02		1	938161320		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
841	274	شرف	الدين	محمد	شريف		1	1	1995-02-13		1	411447758		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
842	170984	ايمن	عمر	عبدالرحمن	ابوالرب		1	1	1991-12-12		1	854152501		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
843	170983	محمد	صلاح	مصطفى	جفال		1	1	1993-04-19		1	858591662		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
844	170981	ايه	عصام	صالح	دويكات		2	1	1993-09-21		1	854704806		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
845	170982	نداء	انور	احمد	الجرابعة		2	1	1991-02-14		1	853062024		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
846	171020	يعرب	اسحق	ابراهيم	عواد		1	1	1978-09-14		1	904582913		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
847	278	شادي	يعقوب	محمد	شريف		1	1	1990-06-26		1	851589267		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
848	88844	د.اسحق	سدر				1	1	1963-11-05		1	964475271		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
849	277	انس	ابراهيم	محمد	شريف		1	1	1994-07-31		1	854868155		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
850	67951	فارس	أحمد	حسين	محمود		1	1	1964-04-09		1	414462119		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
851	320	نور	الدين	كمال	عبدالعزيز		1	1	1998-05-09		1	403450976		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
852	280	ضرار	محمد	عبدالحميد	ابوشيخة		1	1	1992-11-13		1	854323805		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
853	155135	ميادة	حمزة	يحيى	عابد		1	1	1981-08-18		1	916525728		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
854	282	أبي	محمد	ياسر	موسى		1	1	1992-11-03		1	853736700		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
855	170712	فاطمة	علي	عبدالله	حمودة		2	1	1982-12-05		1	914120639		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
856	88885	مروة	شفيق	موسى	أبوشارب		2	1	1985-02-28		1	941465866		2	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
857	283	اكرام	ظاهر	محمود	عودة		2	1	1995-04-12		1	859528721		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
858	152217	ابراهيم	احمد	ناصر	أبوبكر		1	1	1985-05-03		1	948184387		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
859	81801	ضياء	حسن	يوسف	حرب		1	1	1981-03-24		1	907722417		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
860	284	آيات	عبدالمجيد	أحمد	عويس		2	1	1998-04-15		1	403433725		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
861	285	عصام	حسن	عبدالفتاح	شلالدة		1	1	1997-10-14		1	402863948		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
862	288	اسامه	عبدالهادي	توفيق	جابر		1	1	1987-12-31		1	851173666		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
863	289	عهود	سعيد	محمد	جرار		2	1	1985-03-14		1	415348036		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
864	290	تامر	نظمي	عبداللطيف	اطرش		1	1	1988-09-16		1	850250838		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
865	291	بركات	عبدالرحيم	بركات	عبوه		1	1	1996-03-21		1	401493879		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
866	292	محمد	فتحي	عبدالمجيد	شباك		1	1	1994-07-11		1	411421191		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
867	293	طارق	محمود	صالح	عطاونه		1	1	1996-08-07		1	401433669		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
868	294	أصاله	حاتم	نصار	امطير		1	1	1995-07-18		1	860099274		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
869	299	محمد	عقاب	صالح	صبحة		1	1	1995-10-09		1	415358225		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
870	303	خليل	ابراهيم	محمود	مطير		1	1	1995-06-19		1	859829848		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
871	301	توفيق	طلال	رضوان	سيوري		1	1	1990-12-18		1	852767755		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
872	298	ربيع	صلاح	عبدالحافظ	طميزة		1	1	1992-02-26		1	851849364		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
873	295	ناني	رائد	جمال	حسان		1	1	1999-02-26		1	404394850		1	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
874	296	علاء	عبدالرحمن	سعيد	خلف		1	1	1987-02-24		1	850019274		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
875	297	حسن	كايد	محمود	أبوشخيدم		1	1	1995-07-13		1	851123489		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
876	73275	رضا	يحيى	رضا	حمامي		1	1	1969-09-17		1	955467758		1	9	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
877	91620	خلود	خالد	علي	عمر		2	1	1980-11-19		1	944068162		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
878	164907	عائشة	عطا	نمر	حمدان		1	1	1988-06-05		1	850836859		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
879	312	نسرين	جمال	روحي	خليلي		2	1	1995-02-21		1	860191642		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
880	315	ابراهيم	أحمد	ابراهيم	صايمه		1	1	1994-12-31		1	400518205		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
881	311	أحمد	هاني	أحمد	شاهين		1	1	1997-01-25		1	402328264		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
882	317	ميس	بشار	نمر	بصلات		2	1	1995-11-16		1	859775124		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
883	316	امير	عامر	عمران	حموري		1	1	1998-02-09		1	401118534		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
884	172358	نور	يوسف	محمد	نصار		2	1	1995-10-11		1	410815245		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
885	321	عثمان	احمد	ابراهيم	غوانمة		1	1	1995-06-26		1	400634895		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
886	318	ليلى	عبدالرحمن	أحمد	يدك		2	1	1990-05-13		1	852326891		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
887	323	رجاء	رفيق	فائق	عيسى		2	1	1978-09-30		1	411770852		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
888	326	محمود	عماد	بدوي	عودة		1	1	1999-10-17		1	405321704		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
889	327	باهر	حسن	مصطفى	شنابلة		1	1	2001-05-11		1	406828718		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
890	172637	لارا	نصري	خليل	ابوجيش		2	1	1994-12-21		1	402107809		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
891	328	سعود	عيسى	اسعد	دوابشة		1	1	1991-05-22		1	853489516		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
892	329	خليل	محمد	خليل	أبوربيع		1	1	1988-06-01		1	850355355		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
893	330	ايهاب	خميس	عباس	خرمة		1	1	1993-07-09		1	854710076		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
894	331	عبدالرحمن	عبدالرحمن	سنجق			1	1	1988-04-13		1	850605866		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
895	332	أحمد	وليد	ابراهيم	أبوالعوف		1	1	1985-12-30		1	411981921		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
896	336	امال	محمود	عثمان	كرامة		2	1	1996-11-15		1	402066807		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
897	338	يزن	عمر	سعيد	القزق		1	1	1997-05-20		1	402601421		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
898	152471	منار	نزيه	عبدالله	قاسم		1	1	1984-11-27		1	914508189		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
899	334	نادين	شريف	محمد	خطيب		2	1	1993-04-18		1	412970196		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
900	343	عبدالرحيم	عساف	حسن	خولي		1	1	1964-03-26		1	949322150		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
901	91752	منذر	يوسف	عبدالهادي	سمارة		1	1	1987-09-21		1	911580157		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
902	344	رامي	سليمان	علي	خضر		1	1	1982-04-18		1	911509230		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
903	345	محمد	ربيع	كمال	موسى		1	1	1991-05-01		1	852198464		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
904	346	ملغي					1	1	1985-12-30		1	411981921		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
905	349	اديب	احمد	فارس	فارس		1	1	2001-02-03		1	406605048		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
906	348	فادي	فارس	حسين	عرينات		1	1	1988-02-20		1	850859000		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
907	350	اليانا	اندراوس	الياس	بنورة		2	2	1997-07-03		1	402588271		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
908	351	انس	محمد	عدنان	بالي		1	1	2000-11-24		1	405640665		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
909	353	ثراء	عبدالرؤوف	محمد	صلاحات		2	1	1990-06-20		1	851983940		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
910	354	ثائر	كمال	زهدي	بالي		1	1	1989-06-20		1	852894526		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
911	355	محمد	حسين	محمد	لولو		1	1	1992-05-12		1	854003506		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
912	72934	فراس	احمد	سعيد	حماد		1	1	1974-06-08		1	943443366		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
913	169958	سامر	كمال	محمد	علي		1	1	1980-05-06		1	123456789		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
914	358	محمد	فتحي	كمال	عابد		1	1	1992-01-08		1	853997641		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
915	361	بيسان	حسن	عبدالواحد	حميد		2	1	1992-11-12		1	854094612		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
916	362	عز	الدين	عارف	عبدالكريم		1	1	2002-05-17		1	806650523		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
917	363	وفاء	عبدالحكيم	جميل	قدوم		2	1	2001-01-10		1	406932186		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
918	10000	HR	POST				1	1	2021-05-23		1	998877665		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
919	372	حنين	حسن	علي	مساعيد		2	1	1991-06-12		1	852169200		1	12	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
920	375	زهدي	نايف	زهدي	جرار		1	1	1970-10-31		1	985136753		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
921	69493	ايمن	محمد	مصطفى	القدري		1	1	1980-08-30		1	907977482		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
922	374	نور	بهجت	مصطفى	دراغمة		2	1	1997-04-08		1	402692362		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
923	376	نمر	لؤي	أحمد	بدوان		1	1	1988-03-11		1	410127302		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
924	377	فداء	فضل	محمد	مخامرة		2	1	1995-12-06		1	411343650		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
925	378	نور	شحدة	فيصل	نتشة		2	1	1999-05-17		1	404699126		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
926	369	رأفت	محمد	فواز	فايز		1	1	1992-01-06		1	854029931		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
927	380	محمود	مؤيد	محمود	خضور		1	1	1992-02-29		1	852906262		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
928	379	رزان	أحمد	حرب	ابوسيف		2	1	1990-04-02		1	850414236		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
929	381	هبة	عبدالرحيم	سميح	نزال		2	1	1996-05-24		1	401384904		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
930	384	حسام	جميل	محمد	اسماعيل		1	1	1977-04-01		1	410755789		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
931	385	يوسف	أحمد	موسى	حريبات		1	1	1995-01-07		1	859726119		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
932	386	دينا	عبدالستار	زهير	عواد		2	1	1998-09-20		1	403980246		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
933	388	مجد	محمد	أحمد	سعدي		1	1	1997-08-15		1	402756969		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
934	389	محمد	محمود	خالد	ابوطبيخ		1	1	1997-03-06		1	402617740		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
935	390	صالح	عماد	أحمد	ابوشرار		1	1	1996-05-24		1	401125141		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
936	393	غزل	فيكتور	نصري	كوكالي		2	1	1994-01-26		1	854846581		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
937	394	محمد	ابراهيم	أحمد	جبرين		1	1	1997-09-22		1	402844104		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
938	400	ولاء	أمين	يونس	زهران	Walaa zahran	2	1	1992-01-24		1	852411537		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
939	383	عبير	فخري	يوسف	دراغمة		2	1	1985-03-12		1	853319960		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
940	391	ايهم	عدنان	صادق	الشاعر		1	1	1985-03-07		1	406335448		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
941	398	روان	جلال	عبدالرحيم	بشير		2	1	1991-11-07		1	853903813		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
942	399	علي	احمد	صالح	خطيب		1	1	1991-10-19		1	853087260		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
943	402	لينا	محمد	محمود	نشوية		2	1	1989-12-30		1	852053024		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
944	403	انغيم	محمد	حسن	القاضي		2	1	2000-09-16		1	405505587		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
945	404	باسل	طلال	محمود	الرواشدة		1	1	1985-03-02		1	407429794		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
946	405	احمد	رائد	احمد	شروف		1	1	1992-05-02		1	854057239		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
947	406	رشا	عماد	جميل	مصاروة		2	1	1997-04-10		1	402412464		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
948	174851	هبه	محمد	يوسف	حمد		2	1	1991-10-19		1	854199197		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
949	174856	شروق	محمد	موسى	جودة		2	1	1985-03-05		1	850894510		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
950	408	فيليتسيا	رجا	محمد	عموري		2	1	1998-09-18		1	403990070		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
951	410	ربى	حسني	محمد	ناصر		2	1	1974-04-18		1	900100611		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
952	407	ربيع	رمزي	زهير	دار		1	1	2002-07-18		1	407470889		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
953	411	أحمد	عبدالكريم	عبدالفتاح	الحمادنه		1	1	1999-09-21		1	412076234		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
954	433	بشرى	عبدالفتاح	مصطفى	عياش		2	1	1996-02-09		1	401559455		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
955	426	ناهده	مصطفى	محمد	ازمقنا		2	1	2000-06-22		1	406460089		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
956	175307	سها	احمد	خيري	زرعي		2	1	1991-07-07	1102	1	853905131		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
957	435	مي	نافع	محمود	عيسى		2	1	1998-08-20		1	403889025		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
958	427	لينا	هاني	حسن	خطيب		2	1	1991-02-05		1	850394008		2	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
959	174871	محمد	فتحي	يونس	صباح		1	1	1988-03-03		1	850201419		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
960	174849	محمد	ربحي	عبدالفتاح	ياسين		1	1	1989-04-21		1	853321412		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
961	174850	ايه	جمال	نعيم	فاخوري		2	1	1990-02-25		1	850093295		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
962	174873	آلاء	زياد	محمود	غانم		2	1	1994-07-24		1	854879640		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
963	174874	عبدالرحمن	علي	صدقي	الأحمد		1	1	1989-08-14		1	859177826		1	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
964	174875	إياد	عامر	محمود	شعبان		1	1	2000-01-01		1	851833111		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
965	171072	نصر	محمد	رمضان	عبدالرحيم		1	1	1994-07-29		1	859435653		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
966	415	دانه	فوزي	نيازي	جرار		2	1	1989-09-23		1	851401158		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
967	419	محمد	نمر	حامد	رمضان		1	1	1988-08-12		1	851992180		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
968	418	ماجدولين	محمد	أحمد	صالح		2	1	1987-09-12		1	850176389		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
969	412	أسماء	رائد	حسين	نصر		2	1	2001-07-03		1	406499848		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
970	423	يوسف	اياد	يوسف	حمادنه		1	1	1995-02-25		1	860191824		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
971	417	رزان	عماد	صالح	نوفل		2	1	1999-07-01		1	404956005		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
972	422	يوسف	عبدالفتاح	فتح	الله		1	1	1980-10-09		1	906488804		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
973	431	أكرم	خيري	عبدالنبي	بعيرات		1	1	1980-12-06		1	906259734		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
974	500	سوسن	عبدالكريم	أحمد	كنعان		2	1	1987-03-28		1	850994096		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
975	428	لمياء	محمود	علي	فرج		1	1	1996-02-28		1	401111331		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
976	429	نذير	العبدفرح	علوي			1	1	1995-12-08		1	401646807		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
977	430	كاتيا	زهير	عيسى	عازر		2	1	1999-04-20		1	314929050		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
978	174872	عبدالله	محمد	خالد	سمودي		1	1	1995-12-03		1	411781990		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
979	425	فايز	محمود	فايز	علاريه		1	1	1992-02-14		1	852599661		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
980	434	ضرار	سميح	عبدالعزيز	خضر		1	1	1970-04-29		1	945485985		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
981	439	حلا	ماهر	محمد	رمزي		2	1	1999-09-15		1	404891053		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
982	440	دانيا	نعيم	محمد	جمعة		2	1	2021-01-30		1	406843516		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
983	441	شيماء	مثقال	يوسف	المساعيد		2	1	1989-10-10		1	851398974		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
984	442	طارق	زياد	رشيد	عاشور		2	1	1989-01-23		1	850556994		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
985	443	خالد	وليد	راتب	صلاح		2	1	1993-05-11		1	400213427		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
986	444	امين	نادر	صبحي	قمحاوي		1	1	1992-11-15		1	853944957		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
987	445	أحمد	عدلي	وليد	اشتيه		1	1	1998-12-29		1	404495582		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
988	446	برهان	محمد	يوسف	العمور		1	1	1980-07-18		1	908083371		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
989	447	مراح	محمد	حسن	عزموطي		2	1	2020-01-01		1	853316941		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
990	448	اسمهان	رفعت	عزيز	قبها		2	1	1985-02-13		1	947595377		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
991	449	ورود	احمد	ابراهيم	قبها		2	1	1995-05-02		1	858594526		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
992	450	عبدالله	يوسف	عبدالحليم	زيادة		2	1	1985-01-22		1	850998626		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
993	451	عبدالرحمن	كمال	محمد	علي		1	1	1985-03-08		1	858824741		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
994	452	احمد	محمد	سلمان	سلمان		2	1	1993-01-19		1	853641348		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
995	453	أميرة	راشد	هشام	بزار		2	1	1997-09-30		1	402846430		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
996	544	سيف	الدين	وائل	عطيه		2	1	1996-12-16		1	402239909		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
997	455	عبدالقادر	محمد	جميل	صوافطة		1	1	1985-03-14		1	407334168		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
998	401	قصي	أيمن	حسن	زماعرة		1	1	1995-01-18		1	411641509		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
999	456	محمد	عيسى	عبدالحليم	زماعرة		1	1	1998-12-22		1	403940448		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1000	457	محمد	عبدالرحمن	سعد	غياضة		1	1	1985-03-14		1	404101735		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1001	458	نور	علي	جبرين	شكارنه		1	1	1995-06-10		1	860110758		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1002	459	احمد	سالم	محمد	ابوعبيد		1	1	2000-03-25		1	405364456		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1003	460	ليث	الدين	أحمد	خليل		1	1	1985-03-04		1	404290017		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1004	463	روان	جمال	كمال	فقهاء		1	1	1987-11-25		1	850146093		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1005	645	ملغي					2	1	1996-08-20		1	بيءةنرلات		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1006	465	ياسمين	حازم	حاتم	حميدات		2	1	1996-08-29		1	401361357		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1007	438	شذى	عبدالرؤوف	أحمد	محمود		1	1	1986-10-02		1	851691212		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1008	461	حسام	عنان	سعد	سعد		1	1	1990-03-13		1	852420470		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1009	96304	علا	عبدالقادر	حسن	اسدي		2	1	1983-06-27		1	941339855		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1010	472	ساره	محمد	سليم	شعبان		2	1	1992-09-03		1	859177784		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1011	467	حنان	نصري	عمر	ذيب		2	1	1983-08-30		1	936502475		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1012	176207	غدير	فاروق	حسين	زهور		2	1	1990-03-23		1	852588854		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1013	176205	ايه	سليمان	عبدالله	الفقهاء		2	1	1991-10-16	1106	1	854360492		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1014	176206	طارق	محمد	جميل	سوالمة		1	1	1988-06-08	1102	1	850798463		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1015	176204	بيسان	اسامة	جلال	جرار		2	1	1995-03-05	1101	1	860188416		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1016	176208	مسعود	حمدان	نصري	عارضه		1	1	1989-12-28	1107	1	850741794		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1017	176215	اقبال	عطا	ابراهيم	أبوحجلة		2	1	1979-05-11	4	1	906846639		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1018	176209	ريما	عزام	فوزي	الحاج		2	1	1992-10-04	2	1	410126601		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1019	478	مرفت	خالد	لطفي	نصر		2	1	1997-11-29		1	402836563		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1020	482	عاصم	حسن	عوض	شاهين		1	1	2001-06-07		1	406608000		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1021	475	فيصل	غازي	فيصل	زيد		1	1	1994-07-16		1	859244592		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1022	484	اشرف	محمود	صالح	عبدالهادي		1	1	1974-08-21		1	976859082		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1023	485	رغد	تحسين	عبدالرحيم	حمايدي		2	1	1998-06-16		1	403612773		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1024	466	عبدالسلام	نبيل	عبدالكريم	الشوبكي		1	1	2000-01-01		1	853534006		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1025	436	انور	اسعاف	انور	خطيب		1	1	1993-04-08		1	854402815		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1026	486	سلين	محمود	سمير	عمرو		2	1	1998-02-21		1	403342835		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1027	490	قاسم	محمود	أحمد	اسماعيل		1	1	1999-03-27		1	404450728		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1028	479	رؤى	رائد	جمال	شيخ		2	1	1999-12-27		1	405493172		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1029	493	خليفه	وليد	اسحق	القشقيش		1	1	2000-11-05		1	405750654		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1030	494	ايمان	محمد	عبدالمجيد	ابوعمر		2	1	1992-04-17		1	853759355		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1031	495	محمد	عايش	عدنان	شبانه		1	1	2009-02-24		1	405502212		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1032	497	محمد	ناصر	عبدالرؤوف	بدر		1	1	1995-06-06		1	859832982		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1033	176331	محمد	ابراهيم	محمد	علي		1	1	1984-05-09	1101	1	938390762		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1034	488	ياسر	محمد	أحمد	نابلسية		1	1	1989-10-01		1	853388643		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1035	505	آلاء	محمد	احمد	عيد		2	1	1992-05-07		1	854321106		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1036	477	رياض	ايمن	محمود	معالي		1	1	1999-01-01		1	408599413		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1037	511	عزت	محمد	عزت	حزين		1	1	1998-03-25		1	403351315		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1038	515	نرمين	ماجد	يوسف	أبوعودة		2	1	1998-07-18		1	403890411		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1039	518	ميخائيل	جورج	ميخائيل	حجل		1	2	1986-02-10		1	911068245		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1040	506	لينا	ابراهيم	نمر	عبدالرازق		2	1	1980-06-24		1	907151872		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1041	513	باسل	سليمان	أحمد	شاعر		1	1	1995-01-24		1	859853558		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1042	517	محمد	يوسف	محمد	ديك		1	1	1999-10-16		1	404898306		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1043	510	عبدالله	حسين	سعيد	ابوهلال		1	1	1998-11-09		1	404342933		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1044	503	عبداللطيف	اياد	عبداللطيف	يونس		1	1	1995-01-21		1	858512387		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1045	520	ديانا	خالد	علي	صلاح		2	1	1994-05-09		1	859552366		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1046	522	محمد	أحمد	راجح	دار		1	1	2001-05-27		1	406667493		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1047	523	علاء	عاهد	محمد	جبر		1	1	1994-08-22		1	858535131		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1048	525	احمد	يوسف	حمد	صدقه		1	1	1998-10-30		1	404305658		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1049	526	عمر	كمال	صدقي	خميس		1	1	2001-03-31		1	405685652		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1050	100689	اياد	محمود	فلاح	عبدالفتاح		1	1	1974-08-09		1	994311983		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1051	176359	شروق	احمد	ابراهيم	عصفور		2	1	1994-07-29	1101	1	860148139		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1052	502	فدا	موسىفايز	ابوصفيه			1	1	1995-03-17		1	859757726		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1053	507	وعد	عبدالله	نوسى	ابوزر		1	1	1993-11-17		1	854908548		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1054	508	معين	هشام	مصطفى	موقدي		1	1	1992-02-06		1	854359114		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1055	176213	سيلينا	ناصر	عبدالحافظ	حسونة		2	1	1994-07-10	1106	1	858609571		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1056	176217	غدير	ابراهيم	عارف	سايس		2	1	1992-02-02	1103	1	852530237		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1057	176275	حسان	أحمد	محمد	مسلط		1	1	1995-11-30	1101	1	400649901		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1058	176328	أمير	حسن	عارف	الخطيب		1	1	1993-04-01	1103	1	854401783		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1059	176333	محمد	عادل	راغب	خصيب		1	1	1987-12-02	6	1	851610659		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1060	176358	وئام	هاني	راتب	زيدان		1	1	1990-02-09	1106	1	850094194		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1061	176360	خليل	جمال	جابر	الخضر		1	1	1988-06-11	2	1	410201032		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1062	179124	منال	عبدالحفيظ	حسن	تميمي		2	1	1973-06-18	1101	1	934160714		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1063	181171	اسلام	عبداللطيف	عارف	دار		1	1	1979-12-12	1103	1	904591310		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1064	181173	ابراهيم	شريف	محمد	محمد		1	1	1987-03-14	2	1	414526541		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1065	181175	يسري	سيف	مصطفى	رضوان		1	1	1984-05-04	1101	1	936456342		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1066	181207	خميس	وليد	موسى	ياسين		1	1	1983-01-30	1102	1	936078823		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1067	181209	يزيد	زامل	محمود	غشاش		1	1	1984-08-01		1	941041543		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1068	181211	كمال	محمد	ابراهيم	عساكرة		1	1	1983-02-21	1109	1	920282720		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1069	181223	اشرف	نبيل	ابراهيم	زبن		1	1	1981-07-13	2	1	850897026		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1070	181225	محمد	موفق	محمد	مجادبه		1	1	1987-04-29	1106	1	850017153		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1071	181227	أمين	عبدالله	سعيد	عوض		1	1	1977-11-16	1109	1	900725466		2	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1072	181228	خالد	محمد	ابراهيم	درعاوي		1	1	1983-01-01	4	1	906907902		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1073	181229	حسين	باجس	حسين	دار		1	1	1986-09-26		1	950581074		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1074	181231	نبيل	حسين	محمد	عبدالله		1	1	1973-07-21	1104	1	949692651		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1075	181232	مجدي	محمد	ماجد	رشيد		1	1	1976-02-29	1104	1	933231193		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1076	181233	مصطفى	عبدالحميد	نمر	مجاهد		1	1	1984-08-06	1104	1	921666525		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1077	181234	اياد	محمود	اسماعيل	أبوالكباش		1	1	1988-02-15	1103	1	851419051		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1078	181235	سامر	عاصم	عبدالله	عمرو		1	1	1976-07-15	1104	1	901396010		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1079	181242	محمد	صالح	محمود	دراغمة		1	1	1973-02-19	1114	1	904462587		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1080	181351	عرفات	عبدالمعطي	عثمان	لدادوة		1	1	1977-10-15	1101	1	945333722		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1081	181353	مراد	فريد	محمود	سباعنة		1	1	1983-07-25	1107	1	938027364		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1082	181358	محمد	عدنان	ساري	مرشد		1	1	1991-02-25	1107	1	852434117		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1083	181360	ابراهيم	منير	ابراهيم	سلامة		1	1	1978-08-26	1102	1	940548225		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1084	181362	صبحي	رباح	حسن	مصالحة		1	1	1985-12-16	1102	1	910564178		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1085	181379	شادي	محمود	مصطفى	الغنيمات		1	1	1976-10-01	1104	1	901399832		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1086	181381	حسن	علي	حسن	وهدان		1	1	1989-03-12	1115	1	852689371		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1087	181382	سلام	سليم	محمد	بركات		1	1	1974-01-25	1101	1	978154516		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1088	181395	جاسر	حاتم	احمد	معالي		1	1	1977-08-26	1107	1	908083462		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1089	181460	هبة	فالح	احمد	صوافطة		2	1	1980-01-31	1107	1	907593693		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1090	181208	اسعد	ابراهيم	اسعد	علي		1	1	1994-09-21	1105	1	411389547		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1091	499	اسيل	جمال	عبدالكريم	ابوشنب		2	1	1999-12-30		1	404999328		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1092	509	صفاء	عدنان	محمد	رياحي		2	1	1983-05-15		1	411114689		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1093	531	محمد	نعمان	رباح	ثلثين		1	1	1996-10-22		1	401497789		1	4	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1094	519	ايمان	محمد	خميس	عمرو		1	1	1979-09-10		1	904572211		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1095	533	عبدالله	محمد	عبداللطيف	العدم		1	1	1990-06-30		1	851590554		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1096	532	ترتيل	عز	الدين	عبدالحفيظ		2	1	1999-11-05		1	404992893		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1097	529	محمود	عناد	صادق	نعيرات		1	1	1991-10-17		1	851773598		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1098	534	عمير	محمود	سعيد	عزام		1	1	1989-06-06		1	851866103		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1099	535	عروه	معن	محمد	موسى		1	1	2003-09-06		1	408919157		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1100	536	ماهر	جمال	حسن	ولد		1	1	1994-05-09		1	854955507		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1101	537	عثمان	فالح	أحمد	بزور		1	1	1985-02-23		1	941032633		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1102	514	ساهر	رمزي	عيسى	انضوني		1	1	1990-01-01		1	852830223		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1103	20000	خالد	زهد	(الخدمات	العامة)		1	1	1988-03-17		1	851025023		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1104	541	عبدالله	باسل	محمد	شلهوب		1	1	1990-05-28		1	852327220		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1105	543	عبير	ماهر	عبدالكريم	سوالمة		1	1	1993-10-01		1	858520240		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1106	547	صبحه	سمير	موسى	الحسين		1	1	1989-10-26		1	851394601		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1107	548	تسنيم	عزام	فايز	عنبوسي		1	1	1996-05-24		1	401339593		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1108	549	فراس	يونس	محمد	دراغمه		1	1	1984-02-23		1	936536960		2	12	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1109	550	احمد	زياد	احمد	شعيبات		1	1	2022-02-15		1	406776807		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1110	546	ديالا	فراس	محمد	دودين		1	1	1997-11-10		1	402865174		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1111	30000	اسلام	عارضة	(علاقات	عامة)		2	1	1990-01-01		1	123456123		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1112	552	محمد	حسين	محمد	الحافظ		1	1	1999-06-03		1	404709743		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1113	554	محمد	يوسف	محمد	دراغمه		1	1	2001-08-19		1	406520213		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1114	555	رامي	صالح	سعيد	البيطار		1	1	1977-11-14		1	908583941		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1115	553	محمد	جمال	روحي	خليلي		1	1	1998-06-10		1	403809700		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1116	1017	ربيحة	أحمد	محمد	عوض		1	1	1976-01-01		1	850875030		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1117	1002	دعاء	طاهر	محمود	سلعوس		1	1	1978-01-09		1	902932433		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1118	1011	ولاء	تيسير	محمد	تيم		2	1	1988-06-13		1	946502853		4	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1119	1004	جلال	فتحي	رشيد	منصور		1	1	1978-11-27		1	905168555		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1120	1007	خالد	محمد	علي	عبسي		1	1	2002-12-25		1	408637452		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1121	1006	قصي	جميل	عبدالحافظ	مزاحم		1	1	2002-03-06		1	408320299		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1122	1015	ندى	محمود	حسين	شقور		1	1	1981-10-01		1	907802078		1	3	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1123	1001	زينب	علي	احمد	قواسمه		1	1	1981-09-27		1	850900150		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1124	1013	فياز	جوده	عبدخليل			2	1	1975-05-09		1	958721904		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1125	1010	جيهان	عطاالله	زايد	فوده		2	1	1986-04-05		1	850974056		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1126	1012	صابرين	نزير	ابراهيم	سلامة		2	1	1987-04-23		1	911584092		2	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1127	1003	منال	جمعة	محمود	زيدان		2	1	1972-06-11		1	954112140		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1128	1016	وداد	نبيل	حسين	ابوحمد		2	1	1982-08-27		1	910634468		4	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1129	1009	سجى	هاشم	ابراهيم	الهوارين		2	1	2000-03-05		1	404702979		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1130	1008	تحرير	سمير	حسن	زيات		2	1	1995-09-19		1	859621567		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1131	1014	محمد	انيس	محمد	دراج		1	1	2003-11-29		1	409570686		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1132	556	منصور	مؤيد	محمود	منصور		1	1	2001-11-04		1	407483585		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1133	557	فيصل	نضال	جميل	اسماعيل		1	1	2002-05-10		1	450111695		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1134	560	مؤمن	تحسين	عبدالله	شاهين		1	1	1995-08-06		1	859396327		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1135	561	فاتنة	فرحان	شكري	دار	ا	1	1	1997-12-17		1	403157456		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1136	563	ثائر	محمود	سليم	سليمان		1	1	1996-01-24		1	401556550		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1137	40000	مركز	الاتصال	الوطني			1	1	2022-01-01		1	985623568		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1138	562	انوار	محمد	يحيى	عطا		1	1	1994-10-20		1	859871402		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1139	559	مهند	صادق	رزق	علي		1	1	1994-12-28		1	860051481		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1140	1018	احمد	حسام	شحادة	عقل		1	1	2003-08-22		1	401757257		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1141	565	محمد	تيسير	مفظي	خواجا		1	1	1996-02-03		1	401105333		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1142	182640	معاذ	محمد	عبدالغني	ملحم		1	1	1991-03-20		1	850061821		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1143	564	روان	ناجي	فضل	فرحان		1	1	1992-05-03		1	852799402		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1144	566	روان	عبدالهادي	مصطفى	ابوحسين		1	1	1997-10-17		1	402351043		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1145	567	محمد	محمود	محمد	عواوده		1	1	1992-12-30		1	854510732		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1146	568	محمد	شاكر	محمود	ابوكنعان		1	1	1992-05-01		1	854011194		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1147	569	لبنى	تحسين	عزات	عبدالغني		1	1	1986-07-30		1	914241112		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1148	1020	رنا	سليمان	محمد	شوامره		1	1	1989-08-22		1	850790668		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1149	1019	احلام	صبحي	حسين	مطير		1	1	1982-05-20		1	412550881		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1150	570	علي	تيسير	محمود	عودة		1	1	2001-09-10		1	407372549		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1151	182801	مجد	سفيان	محمد	أبوحاكمة		1	1	1991-02-15		1	852361427		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1152	182802	سارة	نبيل	احمد	ابوسرور		2	1	1995-02-10		1	858556806		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1153	182812	رزق	سليمان	محمد	حميد		1	1	1988-08-27	1109	1	913450680		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1154	182806	اسماعيل	جعفر	اسماعيل	حرب		1	1	1990-08-08	1101	1	852273507		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1155	182803	محمد	عدنان	رزق	عرموش		1	1	1994-07-18		1	860150135		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1156	182811	سامح	ربحي	حسين	غفري		1	1	1995-05-06		1	860044049		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1157	182804	عبدالرحيم	ناصر	عبدالرحيم	شتيه		1	1	1996-01-01	1108	1	401831466		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1158	182805	عبير		محمد	راضي		2	1	1994-09-12		1	858819899		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1159	182838	فادي	غالب	شلالش	نجوم		1	1	1986-06-26	1101	1	910909415		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1160	182834	حمزة	عبدالعزيز	محمود	غشاش		1	1	1988-07-29	1105	1	850345646		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1161	182836	محمد	يوسف	محمد	المرداوي		1	1	1983-08-11	1105	1	938145661		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1162	182837	رائد	محمد	عبدالحميد	جبارين		1	1	1987-01-20	1104	1	937285112		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1163	182835	محمد	انيس	محمد	بطه		1	1	1983-12-12	13	1	909852246		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1164	182852	محمود	نبيل	محمود	معلا		1	1	1988-04-16	1109	1	913454773		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1165	182850	اياد	محمود	امين	ابونصار		1	1	1989-10-24	1103	1	851476085		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1166	182846	وائل	فايز	حسين	حساسنة		1	1	1992-06-07	1109	1	853824415		1	8			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1167	182839	محمد	عيسى	علي	الديريه		1	1	1988-08-17	1109	1	920231099		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1168	176435	مهدي	جمال	احمد	سعد		1	1	1988-10-26		1	850863051		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1169	571	عز	عبدالمحسن	محمد	ابوريان		1	1	1986-04-14		1	850881400		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1170	572	محمد	يعقوب	عبدالعزيز	قواسمه		1	1	2001-05-06		1	406230763		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1171	182939	محمد	نبيل	محمود	هصيص		1	1	1993-12-04	1107	1	858563380		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1172	182940	وضاح	امجد	فريد	حمدان		1	1	1992-09-22	1102	1	853977809		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1173	182919	أيمن	سامي	مصطفى	طعمة		1	1	1994-10-10	1106	1	859585283		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1174	182915	محمد	احمد	جميل	ابوعلي		1	1	1990-07-25	1106	1	852630524		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1175	182916	الطيب	نمر	خالد	يوسف		1	1	1989-07-20	1106	1	850380924		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1176	182920	معتز	عبدالمعطي	مكحول			1	1	1987-09-27	1106	1	850064882		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1177	182918	علي	عبدالكريم	ابراهيم	حسن		1	1	1994-01-07	1106	1	854775970		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1178	182941	خالد	شعبان	احمد	مصطفى		1	1	1989-02-25	1107	1	850117912		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1179	182960	محمد	احمد	محمد	ابوطه		1	1	1985-03-27	1103	1	850902636		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1180	182961	بكر	عطا	الله	سميح		1	1	1987-09-12		1	950584383		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1181	182973	فريد	جلال	محمد	أبوتك		1	1	1989-08-07	15	1	414976209		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1182	182966	طارق	حسن	توفيق	مصلح		1	1	1992-02-19	1103	1	853648681		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1183	182967	محمد	زكريا	صالح	طينة		1	1	1986-01-11	1101	1	910761899		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1184	182971	معتصم	محمد	جابر	ابوبكر		1	1	1970-07-12	2	1	412182529		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1185	182974	سمير	خليل	محمد	المقيطي		1	1	1988-07-20	1115	1	941169773		2	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1186	574	احمد	جاسر	هلال	ابوطه		1	1	2000-09-07		1	405716218		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1187	573	لميس	سلام	شريف	شديد		1	1	1997-07-02		1	411286685		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1188	183086	محمد	موسى	خميس	ابراهيم		1	1	1982-07-24	1109	1	907307839		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1189	183090	احمد	نادر	محمد	ابوتمام		1	1	1991-10-24	2	1	411548688		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1190	183091	محمد	جمال	(محمد	فضل)		1	1	1990-09-05	2	1	853218295		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1191	183087	بهاء	الدين	عصام	مدحت		1	1	1993-12-26	1102	1	855061180		1	1	N		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1192	183089	تسنيم	محمود	فواز	حمد		2	1	1994-01-24		1	308125228		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1193	183092	ناصر	ابراهيم	عبدالفتاح	القب		1	1	1985-04-13	1106	1	938104676		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1194	183093	هيثم	خليل	أحمد	سباعنه		1	1	1980-12-12	1107	1	921525283		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1195	577	بشار	اسحق	محمد	ابونجمة		1	1	2001-06-21		1	406828988		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1196	578		ايهاب	علي	موسى		1	1	1997-03-16		1	401735477		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1197	575	محمد	زياد	عبدالرحمن	العرجه		1	1	1989-01-07		1	852003169		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1198	576	فاطمة	يوسف	حسن	طه		1	1	2001-06-08		1	406671123		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1199	183088	خيري	رياض	توفيق	اعمير		1	1	1983-08-08	1106	1	941329682		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1200	183301	امجد	موسى	احمد	عدوين		1	1	1974-02-17	1109	1	975304957		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1201	183522	ابراهيم	عصام	محمد	شهوان		1	1	1999-01-24		1	403992753		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1202	1021	محمد	هشام	هاشم	الزقزوق		1	1	1994-04-10		1	804742609		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1203	1022	معاذ	فايق	ابراهيم	ابونصر		1	1	2000-10-16		1	804807220		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1204	183593	لميس	صادق	حسن	ابوزهيد		2	1	1992-07-03		1	853293355		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1205	183571	شروق	احمد	عبدالله	صلاحات		2	1	1991-02-22		1	853195071		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1206	183592	امال	زكريا	عبدالمعطي	سلاودة		2	1	1995-10-09		1	401001284		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1207	183591	حنين	هاني	راشد	صلاحات		2	1	1992-03-11		1	851643650		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1208	183594	امنة	ابراهيم	محمد	مصري		2	1	1989-02-02		1	850411760		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1209	183704	مهند	ابراهيم	احمد	الأطرش		1	1	1975-09-16	1104	1	930183991		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1210	183711	همام	فواز	فارس	أبورميلة		1	1	1993-04-17		1	854031861		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1211	186713	علاء	خالد	احمد	دراغمة		1	1	1995-02-03		1	858558588		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1212	183713	امجد	اسعد	محمد	خموس		1	1	1990-01-01	1102	1	852380336		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1213	579	ولاء	مصطفى	محمد	ابوصالحة		1	1	1986-09-01		1	85440926		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1214	580	احمد	هاشم	طالب	صباح		1	1	1989-06-06		1	851718643		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1215	183822	الاء	خالد	قاسم	أبوسريس		2	1	1985-06-17	1106	1	946457801		4	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1216	183844	مهند	مرشد	يحيى	عثامنة		1	1	1984-05-26	2	1	942291881		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1217	183821	أحمد	منير	محمد	الحلايقة		1	1	1986-11-20	1104	1	921510384		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1218	581	ساري	احمد	عبدالحميد	السويطي		1	1	1989-12-21		1	852948629		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1219	582	امجد	عبدالرؤوف	فلاح	خطيب		1	1	1988-12-22		1	850148644		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1220	584	ساري	احمد	عبدالحميد	سويطي		1	1	1989-12-21		1	852948629		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1221	587	امير	سليم	حمدان	سليمان		1	1	2004-05-04		1	407588185		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1222	586	صهيب	محمود	ابراهيم	فقها		1	1	1993-06-11		1	858572555		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1223	585	عدي	رسلان	محمد	ابوزياد		1	1	1996-10-10		1	401980669		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1224	583	منجد	محمد	حسن	محمود		1	1	1995-08-05		1	859525263		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1225	3067	اثير	طالب	وجيه	جبر		1	1	1992-07-17		1	854269008		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1226	588	لمى	سعد	سليمان	دراغمة		1	1	1988-08-11		1	853482909		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1227	589	حسام	عمر	جميل	الحساسنة		1	1	1999-11-13		1	405060179		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1228	183907	آلاء	سعيد	صلاح	حبايب		2	1	1997-07-19		1	402183131		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1229	50000	شكاوى	واستفسارات	البريد			1	1	2022-12-01		1	519195265		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1230	185711	باسل	اسامة	عيسى	زغب		1	1	1992-10-09	1115	1	853586139		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1231	185709	أيات	محمود	احمد	دراغمة		2	1	1994-07-12		1	854971660		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1232	185718	عبدالحميد	عصام	عبدالحميد			1	1	1990-08-07	1101	1	853085835		1	1			1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1233	185710	نجوى	عادل	كمال	ابوعصب		2	1	1985-01-13		1	946487568		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1234	185719	مرام	فارس	محمد	دراغمة		2	1	1991-06-20		1	853124576		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1235	599	علي	حامد	عبدالحزيز	حامد		1	1	1991-02-11		1	852841659		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1236	185862	مراد	جاد	الله	صالح		1	1	1995-08-14	1115	1	400635652		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1237	185861	فداء	صبحي	احمد	عوضات		2	1	1983-03-01		1	939075479		5	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1238	185860	أميرة	إياد	نجي	نزال		2	1	1996-06-20		1	411452212		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1239	185667	بلقيس	باسم	محمود	معالي		2	1	1996-11-08		1	401384631		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1240	600	رغد	احمد	سعيد	صباح		1	1	1998-09-02		1	403831266		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1241	1025	شاكر	عبدالجواد	محمد	محارب		1	1	2002-08-12		1	407623677		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1242	606	سجود	عبدالرحمن	نمر	ابوالرب		1	1	1996-04-28		1	401419569		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1243	603	علي	حسين	محمد	اسماعيل		1	1	1988-11-08		1	851912162		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1244	605	نادين	محمد	عودة	مصلح		1	1	1997-06-20		1	402609424		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1245	604	ريناد	توفيق	صالح	شريتح		1	1	1998-03-20		1	403336431		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1246	186374	شروق	محمد	اسماعيل	حموده		2	1	1998-05-12		1	402403083		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1247	186260	ربا	كمال	احمد	عيد		1	1	1994-08-12		1	854773348		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1248	186256	ايام	رابح	رشيد	اسعد		1	1	1990-10-03		1	852638428		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1249	186258	ايمان	برهان	عارف	مزيد		1	1	1994-12-12		1	411559826		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1250	186255	محمد	عماد	عبدالعزيز	عيسى		1	1	1999-04-23		1	404375644		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1251	607	رهف	محمد	نافز	عساف		1	1	1998-10-03		1	403972078		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1252	613	دعاء	نعيم	عبدالله	ابولطيفة		1	1	1990-05-12		1	852275130		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1253	614	شروق	زهير	مصطفى	ابوهديل		1	1	1996-12-31		1	408497113		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1254	615	علاء	منذر	فؤاد	خواجا		1	1	2000-04-30		1	406402776		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1255	186259	امير	رائد	عبدالقادر	مناصرة		1	1	1999-04-28		1	404373532		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1256	186372	فراس	عيسى	صبري	الزير		1	1	1989-03-07		1	850374760		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1257	186339	براء	منصور	عبداللطيف	صوص		1	1	1991-04-07		1	853100857		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1258	186379	محمود	احمد	محمود	الكوع		1	1	1981-12-06	13	1	850924374		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1259	186394	علا	عماد	شريف	ابوعواد		2	1	1999-06-18		1	404950784		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1260	186366	نور	مروان	الياس	بنوره		2	2	1998-04-17		1	403453558		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1261	186367	معاذ	ابراهيم	محمد	صوافطة		1	1	1996-06-24		1	401822564		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1262	186377	يوسف	فائق	سعيد	صوافطة		1	1	1995-10-11		1	410849798		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1263	186371	يعقوب	جمال	يعقوب	صلاح		1	1	1992-12-29		1	854279759		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1264	186378	مرام	احمد	علي	خرمه		2	1	1990-07-16		1	852340314		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1265	186415	أحمد	توفيق	عبدعبيد			1	1	1995-09-19		1	411525124		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1266	186368	محمد	ماجد	رزق	طميزه		1	1	1993-02-01		1	853607893		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1267	186396	أماني	حسام	مصطفى	أبوفرحة		2	1	1986-06-16		1	914237268		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1268	167886	لنا	محمود	بكر	حجازي		1	1	1986-08-14		1	410212930		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1269	186375	عبدالله	تيسير	جبر	رجوب		1	1	1996-09-01		1	401703582		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1270	186383	شذى	محمد	حسن	حمد		1	1	2022-08-18		1	404881161		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1271	186395	جهاد	مؤيد	يوسف	عبيد		1	1	1997-09-08		1	402829782		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1272	186385	اسلام	يوسف	امين	وراسنه		1	1	1997-05-06		1	402359079		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1273	621	كرم	رفيق	حمدان	خرمه		1	1	1998-04-14		1	403398050		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1274	622	احمد	جاسر	خليل	الحاج		1	1	1991-01-21		1	852619345		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1275	186586	اريج	سليمان	عزات	شراب		2	1	1996-04-13		1	401439872		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1276	1026	روبي	جمال	جميل	حامد		1	1	1989-03-27		1	850495755		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1277	639	عبدالسلام	ذياب	عبدالسلام	درامنه		1	1	1992-12-24		1	852415645		1	8	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1278	626	ولاء	علي	خير	الدين		1	1	1995-12-25		1	401552518		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1279	627	ميس	عاهد	فريد	غنام		1	1	1998-07-27		1	403827173		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1280	186593	حلا	محمد	غالب	ظاهر		1	1	1997-04-21		1	402917728		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1281	186674	دام	العز	خليل	ابراهيم		1	1	1998-03-31		1	403327901		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1282	186595	مرام	عدنان	حسين	الدباغ		1	1	1992-06-08		1	854274552		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1283	186685	حلوة	امجد	حسن	بعدين		1	1	1995-08-15		1	859763013		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1284	632	عمار	عدنان	هاشم	صلاح		1	1	1977-10-13		1	901400028		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1285	186547	نداء	ياسر	محمد	عواوده		1	1	1993-01-01		1	854385564		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1286	186545	سعيد	معن	سعيد	شبيطه		1	1	1991-01-11		1	852535210		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1287	186686	ابراهيم	علي	حسن	حوشيه		1	1	1997-01-23		1	401359328		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1288	186675	مريم	مفيد	عوض	حرب		1	1	1992-01-05		1	854101276		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1289	186622	ريم	عبدالرؤوف	صالح	ابوبكر		2	1	1991-04-18		1	852566355		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1290	186615	ادم	حافظ	محمد	حلايقة		1	1	2000-10-06		1	406575639		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1291	186625	انتماء	محمد	جابر	حامد		1	1	1991-02-07		1	858602576		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1292	181740	رشيد	اكرم	رشيد	العرب		1	1	1994-12-01		1	854629748		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1293	186710	محمد	خالد	حماد	عمري		1	1	1991-11-24		1	852123785		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1294	186708	ايات	عادل	عبدالقادر	سعدة		1	1	1990-06-04		1	853173953		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1295	186779	رويده	منير	صبحي	دار		2	1	1993-04-30		1	854105749		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1296	186731	نور	عدنان	محمود	عمرو		2	1	1991-07-07		1	858648603		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1297	186915	رولا	كنعان	يوسف	شريتح		2	1	1992-08-11		1	853655165		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1298	186917	شهد	عفيف	لطفي	ظاهر		2	1	1999-02-04		1	404488652		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1299	186921	نهاوند	موسى	عيسى	ابوعفيفه		2	1	1989-05-24		1	852851765		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1300	186888	لنا	جلال	محمود	الجابري		2	1	1995-09-15		1	400289674		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1301	186918	امال	عادل	سعيد	خير		2	1	1991-02-10		1	086087871		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1302	186920	ضياء	محمد	خالد	شعلة		1	1	1993-10-13		1	854946506		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1303	186919	عمر	عاطف	فائق	شحادة		1	1	1996-08-28		1	411662802		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1304	186884	ايه	عبدالسلام	ابراهيم	دار		2	1	1992-10-14		1	853614220		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1305	186886	جهاد	خالد	محمد	اليعاقبه		1	1	1993-10-03		1	855085387		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1306	186916	رئال	احمد	خضر	زبادي		1	1	2000-12-03		1	406426700		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1307	640	درين	ايمن	حمد	الحامد		2	1	1999-04-15		1	404449431		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1308	641	هيلين	جاك	سليمان	دحدل		1	1	1992-02-09		1	203593140		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1309	642	موسى	بسام	موسى	شلالده		1	1	2000-05-24		1	406367425		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1310	187090	اسامه	عاصم	مصطفى	عودة		1	1	1997-05-06		1	402604680		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1311	187021	رنين	حسام	بدر	أبوعلان		1	1	1998-04-03		1	403620503		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1312	187045	تالا	جمال	نظام	عيروط		2	1	1998-08-08		1	403926892		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1313	187069	ريم	محمد	سليمان	بلاطيه		2	1	1995-08-16		1	859763070		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1314	187016	اميره	محمد	عوض	عوض		1	1	1999-08-09		1	406303560		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1315	187094	محمد	كامل	محمد	كميل		1	1	1994-08-27		1	852128859		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1316	187091	باسل	عبدالمنعم	طه	شتيه		1	1	1995-04-02		1	860184175		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1317	187044	محمود	عبدالقادر	محمد	خلاف		1	1	1992-01-04		1	853563518		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1318	187093	ضياء	أسامه	فهمي	مرقه		1	1	1986-05-05		1	914600135		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1319	187095	انسام	ناصر	شريف	سلامة		2	1	1994-07-16		1	854972833		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1320	187067	صفاء	نضال	راغب	سيف		2	1	1992-12-23		1	853589299		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1321	187062	نورا	انور	توفيق	لحلوح		2	1	1996-08-04		1	401328695		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1322	187106	رايه	محمود	حامد	اسماعيل		2	1	1989-09-06		1	853078996		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1323	187097	ماهر	خالد	عثمان	الحروب		1	1	1984-01-03		1	943333054		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1324	187110	هيا	عبدالمجيد	محمود	قبها		2	1	1990-06-17		1	852403450		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1325	187115	عبدالستار	سالم	محمد	صبيح		1	1	1992-08-22		1	853650414		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1326	187096	يزن	طارق	محمد	شيخ		1	1	2021-08-13		1	407246073		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1327	187174	جمانه	أحمد	حسين	خضور		2	1	1991-07-22		1	852914571		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1328	187107	خديجة	نادي	أحمد	بركات		2	1	1989-04-10		1	850292574		4	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1329	187113	صالح	رايق	مصطفى	عامر		1	1	2002-09-09		1	407622539		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1330	187140	يحيى	نادر	موسى	غانم		1	1	1996-04-22		1	411147788		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1331	187065	محمد	حاتم	شحادة	محفوظ		1	1	1992-06-13		1	853183663		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1332	187047	محمد	غالب	رجا	صبرا		1	1	1988-09-21		1	851724880		2	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
1333	469	محمد	ابراهيم	مصطفى	جبر		1	1	1997-07-03		1	40263268		1	1	Y		1	/img/users/default.png	$2y$10$kTrsFn8xeN34o4b7AKyftuveMugs2mCTwTcy0nreA5zS1WoQdx.TG	\N	t	0	t
\.


--
-- TOC entry 3902 (class 0 OID 49000)
-- Dependencies: 231
-- Data for Name: employee_contacts_info; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.employee_contacts_info (id, employee_id, p_email, p_mobile, p_telephone, g_email, g_mobile, g_telephone) FROM stdin;
1	1	a@mail.com	0321456987	9876543210	abc@mtit.gov.ps	0562314789	123
2	81						
3	770						
4	784			2521783			
5	87						
6	88						
7	89						
8	92		0598315008				0568504706
9	96						
10	97						
11	98			2792696			
12	100						
13	777						
14	103						
15	104						
16	105						
17	106						
18	54						
19	55						
20	56						
21	57						
22	58		0599640394				
23	59		0598688506				
24	775			022811348			
25	782						
26	60						
27	766						
28	61						
29	62						
30	63						
31	767						
32	64						
33	65			022860310			
34	66						
35	783			02-2807201			
36	68						
37	768						
38	69	abu_mousa_90@yahoo.com	0562504797	022896345			
39	70						
40	71						
41	769	jehad.asfour89@gmail	0598558856				022809008
42	72						
43	73						
44	74						
45	75						
46	76						
47	23						
48	24						
49	26						
50	28						
51	715						
52	31						
53	801						
54	40		0592628882				
55	765						
56	49						
57	735	imadzt@gmail.com	0562500150	092681854			92684235
58	780						
59	52			092942115			
60	53						
61	776						
62	2	Osama_abdh_1988@hotmail	0599034962				092531962
63	3		0502016340				
64	12						
65	14						
66	17						
67	764						
68	18	Annan_19994@hotmail.com	0592088855				
69	19	iabuzahra0@gmail.com	0568183873				
70	20						
71	21						
72	713						
73	714						
74	721	yousef.yacoub@palpost.ps	0599807060				
75	727						
76	730						
77	731						
78	732						
79	733						
80	734	zlo0olz@hotmail.com	0568552196		0599368007	0599368007	
81	736						
82	737						
83	738	mustafa.harish27@gmail.com					
84	739						
85	740		0599838511	0569838511			
86	741						
87	742						
88	743						
89	744						
90	745		0597861916				
91	813						
92	746						
93	749		0597979878	022810742			
94	750		0599679723				
95	792						
96	751						
97	752	muath.alyousef@palpost.ps	0569010700	092513029			259
98	754						
99	805						
100	753						
101	771						
102	772						
103	759						
104	762						
105	761						
106	803						
107	804						
108	807						
109	809						
110	810						
111	811						
112	812						
113	814						
114	816						
115	815		0598624525				
116	817						
117	818						
118	819						
119	821						
120	822						
121	823						
122	824						
123	826	msarhan@mtit.gov.ps	0599597959				121
124	827						
125	828						
126	829						
127	834						
128	836						
129	837						
130	838						
131	839						
132	840						
133	841						
134	849						
135	847						
136	852	s.derar@cert.ps	0594594913				
137	854						
138	857						
139	860						
140	861						
141	862						
142	863						
143	864						
144	865	barakat@cert.ps	0562500282				
145	866						
146	867						
147	868	asala.imtair@mtit.gov.ps					
148	873						
149	874						
150	875						
151	872						
152	869						
153	871		0568370075	0598170075			
154	870						
155	881						
156	879						
157	880						
158	883						
159	882	maysbassalat315@gmail.com					
160	886						
161	851						
162	885						
163	887						
164	888	mahmod.imad23@gmail.com	0562504810				
165	889						
166	891						
167	892						
168	893						
169	894						
170	895						
171	899						
172	896						
173	897						
174	900						
175	902						
176	903						
177	904						
178	906						
179	905						
180	907						
181	908						
182	909						
183	910						
184	911		0562504613				355
185	914						
186	915						
187	916						
188	917						
189	926						
190	919						
191	922						
192	920	zjarrar@mtit.gov.ps	0592980008				
193	923						
194	924						
195	925						
196	928						
197	927	mahmmodayyad@hotmail.com	0568151214				
198	929						
199	939						
200	930						
201	931						
202	932						
203	933						
204	934						
205	935						
206	940						
207	936						
208	937						
209	941						
210	942						
211	938						
212	998	qusay.numan@yahoo.com	0595296666				0569500220
213	943						
214	944						
215	945						
216	946						
217	947						
218	952						
219	950						
220	951						
221	953						
222	969						
223	966						
224	971						
225	968						
226	967	mramadan@mtit.gov.ps	0562111431				
227	972						
228	970	Yhamadnah@mtit.gov.ps	0562111435				
229	979						
230	955						
231	958						
232	975						
233	976						
234	977						
235	973		0562504746				203
236	954						
237	980	d.khader@cert.ps	0562111408				
238	957						
239	1025						
240	1007						
241	981						
242	982						
243	983						
244	984						
245	985						
246	986						
247	987						
248	988						
249	989						
250	990						
251	991						
252	992						0562500277
253	993						
254	994	dodo_salman@hotmail.com 	0598254961				0562500279
255	995						
256	997						
257	999						
258	1000						
259	1001						
260	1002						
261	1003						
262	1008						
263	1004						
264	1006	YHIMEDAT@MTIT.gov.ps	0562504999				
265	1024						
266	1011						
267	1333						
268	1010						
269	1021						
270	1036						
271	1019						
272	1028						
273	1020						
274	1022						
275	1023	r.hamaydi@cert.ps	0562111453				
276	1026						
277	1034						
278	1027						
279	1029						
280	1030						
281	1031						
282	1032						
283	1091						
284	974						
285	1052						
286	1044						
287	1035						
288	1040						
289	1053						
290	1054						
291	1092						
292	1043		0562111440				
293	1037						
294	1041						
295	1102						
296	1038						
297	1042						
298	1039						
299	1094						
300	1045	dianasalah95@gmail.com	0598358566				0562111436
301	1046						
302	1047		0562111404				
303	1048						
304	1049						
305	1097	Mahmoudzabt@gmail.com	0562111498				529
306	1093						
307	1096						
308	1095						
309	1098	omairazzam2022@gmail.com	0562111463	042446006			
310	1099						
311	1100						
312	1101						
313	1104						
314	1105						
315	996						
316	1110						
317	1106						
318	1107						
319	1108						
320	1109						
321	1112						
322	1115						
323	1113						
324	1114						
325	1132						
326	1133						
327	1139						
328	1134						
329	1135						
330	1138						
331	1136						
332	1143						
333	1141						
334	1144						
335	1145						
336	1146						
337	1147						
338	1150						
339	1169						
340	1170						
341	1187						
342	1186						
343	1197						
344	1198						
345	1195						
346	1196						
347	1213						
348	1214						
349	1218						
350	1219						
351	1224						
352	1220						
353	1223						
354	1222						
355	1221						
356	1226						
357	1227						
358	78						
359	79						
360	38						
361	39						
362	774						
363	778						
364	41						
365	779			05962111541			
366	1235						
367	1240						
368	1243						
369	1245						
370	1244						
371	1242						
372	1251						
373	1252						
374	1253						
375	1254						
376	1273						
377	1274						
378	1278						
379	1279						
380	1284						
381	1277						
382	1307						
383	1308						
384	1309						
385	1005						
386	1123						
387	1117						
388	1127						
389	1119						
390	1121						
391	1120						
392	1130						
393	1129						
394	1125						
395	1118						
396	1126						
397	1124						
398	1131						
399	1122						
400	1128						
401	1116						
402	1140						
403	1149						
404	1148						
405	1202						
406	1203						
407	786						
408	785						
409	1241						
410	1276						
411	326						
412	802						
413	1225						
414	360						
415	333						
416	497						
417	763						
418	337						
419	362						
420	535						
421	399						
422	325						
423	442						
424	429						
425	918						
426	304						
427	275						
428	448						
429	363						
430	382						
431	532						
432	364						
433	377						
434	513						
435	455						
436	282						
437	454						
438	407						
439	383						
440	541						
441	386						
442	478						
443	301						
444	375						
445	388						
446	384						
447	328						
448	315						
449	336						
450	425						
451	543						
452	405						
453	393						
454	501						
455	509						
456	280						
457	533						
458	491						
459	355						
460	400						
461	390						
462	526						
463	531						
464	318						
465	351						
466	369						
467	368						
468	371						
469	331						
470	504						
471	477						
472	487						
473	469						
474	434						
475	415						
476	316						
477	290						
478	451						
479	611						
480	495						
481	450	mmansour@mtit.gov.ps	0599418036				
482	361						
483	357						
484	518						
485	317						
486	270						
487	404						
488	403						
489	292						
490	446						
491	298						
492	1103						
493	272						
494	422						
495	496						
496	534						
497	488						
498	421						
499	347						
500	520						
501	378						
502	67						
503	356						
504	506						
505	503						
506	338						
507	463						
508	345						
509	570						
510	348						
511	374						
512	431						
513	379						
514	296						
515	365						
516	418						
517	295						
518	302						
519	285						
520	528						
521	505						
522	297						
523	306						
524	392						
706	483						
525	271	fsaliba@mtit.gov.ps	0562504656				338
526	284						
527	630						
528	288						
529	514						
530	427						
531	468						
532	476						
533	530						
534	484						
535	494						
536	323						
537	376						
538	499						
539	332						
540	299						
541	498						
542	423						
543	319						
544	444						
545	269						
546	300						
547	335						
548	436						
549	312						
550	500						
551	540						
552	349						
553	291						
554	366						
555	350						
556	517						
557	510						
558	485						
559	516						
560	545						
561	303						
562	417						
563	470						
564	475						
565	432						
566	391						
567	435						
568	462						
569	471						
570	1111						
571	340						
572	359						
573	511						
574	293						
575	461						
576	426						
577	537						
578	573	malaidyy10@gmail.com	0599408754				
579	467						
580	253						
581	373						
582	481						
583	395						
584	224						
585	352						
586	439						
587	311						
588	397						
589	381						
590	310						
591	353						
592	1137						
593	410						
594	398						
595	507						
596	474						
597	472						
598	372						
599	329						
600	396						
601	314						
602	339						
603	346						
604	529						
605	344						
606	447						
607	367						
608	413						
609	437						
610	486						
611	268						
612	460						
613	441						
614	433						
615	508						
616	289						
617	260						
618	259						
619	283						
620	294						
621	281	tareq.shatat@gmail.com	0595187577	082066364			
622	453						
623	274						
624	424						
625	523						
626	440						
627	525						
628	334						
629	358						
630	256						
631	263						
632	264						
633	265						
634	406						
635	380						
636	257						
637	521						
638	261						
639	544						
640	262						
641	313						
642	354						
643	385						
644	267						
645	466						
646	276						
647	414						
648	492						
649	255						
650	438						
651	273						
652	266						
653	519						
654	536						
655	452						
656	465						
657	408						
658	279						
659	428						
660	320						
661	389						
662	464						
663	254						
664	416						
665	718	asheish@mtit.gov.ps	0562500134	02-2720590			02-2751452
666	327						
667	324						
668	307						
669	546						
670	542						
671	258						
672	445						
673	287						
674	548						
675	524						
676	321						
677	458						
678	108						
679	512						
680	330						
681	547						
682	252						
683	309						
684	473						
685	430						
686	527						
687	419						
688	490						
689	170						
690	278						
691	449						
692	401						
693	480						
694	286						
695	251						
696	522						
697	342	bbalawi@mtit.gov.ps	0562504972	082862203			
698	420						
699	411						
700	341						
701	412						
702	538						
703	489						
704	443						
705	409						
707	343						
708	394	manal.taweel@mtit.gov.ps					
709	308						
710	1229						
711	787						
712	231	habueleela@mtit.pna.ps	0562500005				106
713	159	abdallah@palpost.ps	0599205782				
714	603	mghoj@palpost.ps	0599171872	2323156			
715	11						
716	166	alamiismat.alami@gmail.com	0562504603	6563174  297527			508
717	622						
718	238						
719	212						
720	135	lharb@mtit.gov.ps					
721	692						
722	216						
723	130						
724	592						
725	581						
726	248						
727	577	M.M.S.BH@hotmail.com	0599731726				
728	227						
729	658						
730	684						
731	110	oimsheiel@mtit.gov.ps	0599338562/0562	02-2807036			511
732	605						
733	249	rafat.radwan@gmail.com	0562500029	0599657190			508
734	604						
735	617						
736	171	ali@palpost.ps	0562500174				02-2227966
737	163						
738	139	shaher.kh@palpost.ps	0599731999-0562	022241231			022245254
739	169		0599221049				
740	165						
741	664						
742	245						
743	242						
744	156						
745	202						
746	150	ahedzebdeh@yahoo.com	0599342078  , 0	092677557			092678810
747	579		0599231948	092930020			092909249
748	748	mbader@mtit.gov.ps	0562500053	092671710			410
749	690						
750	610						
751	678						
752	576						
753	556	maher@mtit.gov.ps	0562500130				207
754	167						
755	112						
756	850	drfares_kiev@hotmail.com					
757	552						
758	136						
759	629						
760	705						
761	707						
762	574						
763	34	allanghazi@gmail.com					
764	109	maslamani@mtit.gov.ps	0562500075				223
765	688						
766	558						
767	215		0599134942	092531160			
768	632						
769	578						
770	654						
771	207						
772	175	iamer@palpost.ps	0599216907	092326710			
773	220	jfarah@palpost.ps	0599933279	022323743			022322574
774	575						
775	183	raedmahmoud23@gmail.com	0562500210				
776	549	librahim@palpost.ps	0598521771	2321058			
777	625						
778	710						
779	200						
780	178	rami_alhur@yahoo.com	0562504761	0599380851			
781	221						
782	711						
783	125						
784	230						
785	154						
786	670						
787	182						
788	116						
789	157						
790	667						
791	686	ikhatib@palpost.ps	0599231933				2227966
792	571						
793	680						
794	194	rtanbour@palpost.ps					
795	624						
796	921	aymanqadre@yahoo.com	0562500208				287    107
797	199						
798	113						
799	567						
800	192						
801	586						
802	644						
803	687						
804	669						
805	217						
806	660						
807	612						
808	144						
809	665						
810	107	ammar_abowatan@hotmail.com					
811	641						
812	187						
813	561						
814	555						
815	615	naser@palpost.ps	0562500211				022322574
816	597						
817	912						
818	876						
819	673						
820	627						
821	596						
822	134	kamaldaajneh@yahoo.com	0562500122	022747399			
823	140						
824	640						
825	683						
826	120						
827	149						
828	806	iattary@palpost.ps	0562500256	022814133			022310621
829	724	husniawawda@yahoo.com	0597145523				
830	160						
831	161						
832	117						
833	598						
834	794	w_awad@palpost.ps	0598037675	2282320			2228015
835	648						
836	820	nashat5555@hotmail.com	0569-0599-32555	092574987			042517550
837	553		0568500172/0599				218
838	145	sa198512@hotmail.com	0599255474	092940020			282
839	652						
840	225						
841	203						
842	562						
843	585						
844	164						
845	619						
846	565		0562500169				102
847	580						
848	115	oabdelhafeth@palpost.ps	0599289032	09-2681512			09-2940020
849	147						
850	173						
851	563						
852	208						
853	129	florid@mtit.pna.ps	0562500010	0599309309			112
854	656						
855	153						
856	693						
857	118		0562500127				
858	198						
859	551						
860	189	ramadan@palpost.ps					
861	569						
862	184						
863	618	n-jaber@palpost.ps	0599381767	092515717			271
864	124	fshbak@palpost.ps	0562500014 -059	2903341			2409228
865	628						
866	559						
867	595						
868	222	zagharneh@gmail.com	0562500006	02-2267777			109
869	668						
870	568						
871	151	aheddeeb@yahoo.com	0562500100				228
872	634						
873	190	rabubaker@mtit.gov.ps					225
874	234	hzabadi@mtit.gov.ps	0562500216	0599273212			516
875	613	nadia.nabulsi.arian@gmail0com	0562500207	092322176			092366748
876	16	osabed@gmail.com	0562500011				
877	646						
878	244						
879	209						
880	206		0599216666	042462034			
881	196						
882	593						
883	720						
884	246						
885	709	bayan@palpost.ps	0562500136				120
886	584						
887	236	hsawafta@palpost.ps	0599394155	092573161			092387202
888	704	bothaina@mtit.pna.ps	0599258505				503
889	138						
890	232						
891	701						
892	127						
893	708						
894	642	hdraidi@palpost.ps	0599378352				0562500142
895	599		0568813335				022225089
896	152						
897	557						
898	800	m.midani@mtit.gov.ps	0562500072	0562500072			230
899	681						
900	560						
901	616						
902	661	iabulebdah@palpost.ps	0562500138	092930226			092940020
903	859						
904	158						
905	657	yousef@palpost.ps	0595036734	0562500237			02-2228900
906	582	mjobran@palpost.ps	0562500226				
907	649	wabuhijleh@mtit.gov.ps	0569000004				312
908	702						
909	177						
910	126						
911	195						
912	729	sdaif@mtit.gov.ps					
913	241	saranew_1990@yahoo. com	0598001153				
914	623	niss.tawfiq@palpost.ps					
915	682						
916	663	ibmy78@hotmail.com	0562500129	022324819			022324041
917	121	fmorjanh@mtit.gov.ps	0562500013	0599372736			110
918	679						
919	141						
920	636						
921	205						
922	620						
923	239						
924	13						
925	15						
926	155						
927	808						
928	689						
929	835						
930	685	ierqat@mtit.pna.ps					
931	848						
932	137						
933	856	marwashafiq2005@yahoo.com					
934	235						
935	128						
936	123						
937	877	kholoodkhreeshy@gmail.com					
938	240						
939	691						
940	666						
941	901	monthersamara92@gmail.com	0562504726				
942	204	szedani@palpost.ps					
943	675						
944	181						
945	631						
946	554						
947	643						
948	148						
949	594						
950	633						
951	114						
952	132	kifah@palpost.ps					260
953	825	szebadi@palpost.ps	0599113960/0562				240
954	564	paltelpost@hotmail.com	0562504912				
955	694						
956	698						
957	197	ziadarbasi@gmail.com	0562500096				
958	550	laith.daraghmeh@mtit.pna.ps	0562500050				444
959	696	ahmad.mtit@gmail.com	0562500090				313
960	119	imaaita@mtit.gov.ps	0562500049				404
961	226	jawad@mtit.pna.ps	0599820108  0				317
962	703						
963	193						
964	243						
965	188						
966	233						
967	653	ywaheidi@mtit.gov.ps	0562500045				416
968	566						
969	250						
970	219						
971	609						
972	706	engbilalmarmash@gmail.com					
973	716						
974	180						
975	1009						
976	185						
977	146	talzurba@mtit.gov.ps	0562500079		0568209986	0568209986	203
978	211						
979	214						
980	247						
981	671						
982	637	htayem@mtit.pna.ps					
983	172						
984	700	basel@palpost.ps	0562500137	0599389817			02-2943333/215
985	695	ahmad@palpost.ps	0562500135				2409441
986	638	Heba_abuhani_981@hotmail.com	0562500184				
987	725						
988	651	waleed@palpost.ps	0562500146				022409446
989	645						
990	1050						
991	607						
992	213						
993	111						
994	650	wafaa@palpost.ps	0562500179				106
995	621	bazzar@palpost.ps					
996	201	samer.k.ali@gmail.com	0599789619	0562500054			409
997	210						
998	674						
999	142						
1000	162	ashafey@mtit.pna.ps					
1001	133						
1002	719	asawafta@palpost.ps	0592385195	092547510			215
1003	602						
1004	168	ohamarsha@mtit.gov.ps	0562500086				320
1005	186	rabujafar@mtit.gov.ps					
1006	600	mdaraghmeh@mtit.pna.ps	0562500091	0599437819	0599437819	0599437819	
1007	228	hshanteer@mtit.gov.ps	0562500056	092342217			408
1008	712						
1009	858	ibrahim@mtit.gov.ps	0562500081	0562500081			213
1010	898						
1011	659	yertahi@mtit.gov.ps	0562500082				221
1012	677						
1013	591	muradarouri@gmail.com	0562500024				504
1014	229	habualeli@palpost.ps	0599477438	092570468			092574510
1015	655		0599838252	02-2222955			02-2228900
1016	218	jmalalzwahrh17@gmail.com					
1017	608	maysa@mtit.gov.ps	0562500044				415
1018	853						
1019	143						
1020	131	fali@palpost.ps	0598890855				
1021	176						
1022	122						
1023	697						
1024	606						
1025	237						
1026	717						
1027	179	rami1_4884@hotmail.com	0598309090	09-2677414			
1028	191						
1029	223						
1030	626						
1031	676						
1032	699						
1033	588						
1034	672						
1035	614	nazzam@mtit.gov.ps	0562504623				
1036	647						
1037	174	itemize@mtit.pna.ps	0599479661	022206163			056250738
1038	590	mfares@palpost.ps	0599998748				092514055
1039	601						
1040	587						
1041	635	noorhajabed@yahoo.com		042469249			
1042	583	nagmat binia@gmail.com	0562504793				
1043	589						
1044	878						
1045	572						
1046	662						
1047	6						
1048	5	mmadi@mtit.gov.ps	0598553613				325
1049	7						
1050	10						
1051	9	Dkhatab@mtit.gov.ps	0562504601	0595434340			503
1052	8	mqanadelo@mtit.gov.ps	0562504642	0599649225			234
1053	4	tawfiq9009@gmail.com	0599032449	022890208			255
1054	722	shzaghab@palpost.ps					
1055	723	Emadkhalifeh@mtit.gov.ps	0562504644	0595222468			236
1056	726	sqabaha@mtit.gov.ps	0597129703	042460171			
1057	728	isatarya@mtit.gov.ps	0562504628				523
1058	747	kmustafa@mtit.pna.ps	0562504665	022868885			303
1059	1268						
1060	755	moathhaji@mtit.gov.ps	0562504614				460
1061	760						
1062	757						
1063	758	masafrah@mtit.gov.ps	0562504625				
1064	831	wizddeen@mtit.gov.ps	0562504645				
1065	830	akhandakji@mtit.pna.ps	0562504666				327
1066	833	slahlooh@mtit.gov.ps	0597256368	04-2468971			414
1067	832						
1068	913						
1069	855						
1070	844						
1071	845						
1072	843	mjaffal@mtit.gov.ps	0597624467				
1073	842	aabualrub@mtit.gov.ps	0598549652				424
1074	846						
1075	965	nasr.al.rajabe7@gmail.com	0598734232				
1076	884	nnassar@mtit.gov.ps	0562500035				152
1077	890	labujaish@mtit.gov.ps					214
1078	960	myasin@mtit.gov.ps	0569393939	042432493			522
1079	961						
1080	948						
1081	949						
1082	959	msabbah@mtit.gov.ps					
1083	978	samoodi.abdallah@gmail.com	0599544225				209
1084	962	aghanem@mtit.gov.ps	0562504626				
1085	963		0562504668	042451285			
1086	964						
1087	956	szerie@mtit.gov.ps	0562504612	092666766			
1088	1015						
1089	1013	afouqha@mtit.gov.ps	0595256401				420
1090	1014	tsawameh@palpost.ps	0598557506	092578112			0562504834
1091	1012	gzuhour@mtit.gov.ps	0598857299				
1092	1016	mardah@mtit.gov.ps	0562504674				
1093	1018						
1094	1055						
1095	1017		0597868525				
1096	1056		0595601088				
1097	1057	hham4ever@hotmail.com	0597176368		لايوجد	لايوجد	
1098	1058	akhateeb@mtit.gov.ps	0598649327	022353922			
1099	1033	mo-haj-84@hotmail.com	0599778309	022904848			
1100	1059		0597010087				
1101	1060	wzidan@mtit.gov.ps	0562504604				
1102	1051	sasfour@mtit.gov.ps	0562504967				
1103	1061	khalilabubakr2015@gmail.com	0595736367	0569810812			
1104	1168	mahdisaad2020@hotmail.com	0562504749				
1105	1062	mtamimi@mtit.gov.ps					
1106	1063			022489536			
1107	1064						
1108	1065	postman-3000@hotmail.com	0547711476				
1109	1066			022339042			
1110	1090	xxxxxx	xxxxxx	xxxxxx			xxxxxx
1111	1067	yghashash@palpost.ps	0599927891	092931928			
1112	1068						
1113	1069		0568219048				
1114	1070						
1115	1071			022775488			
1116	1072						
1117	1073						
1118	1074			022218536			
1119	1075			2294421			
1120	1076		0599340491	2258282			
1121	1077						
1122	1078						
1123	1079	mdaraghm@pal post.ps	0562504835				092574510
1124	1080		0597220445				
1125	1081						
1126	1082						
1127	1083						
1128	1084						
1129	1085						
1130	1086						
1131	1087		0599205780	09-2512067			
1132	1088						
1133	1089		0599255476				216
1134	1292	ralarab@mtit.gov.ps	0598474979				
1135	1142	mmelhem@mtit.gov.ps	0562504643				266
1136	1151	mabuhakmeh@mtit.gov.ps	00972598670955				00972562500283
1137	1152	saraabusroor@gmail.com					
1138	1155						
1139	1157						
1140	1158						
1141	1154						
1142	1156						
1143	1153						
1144	1160		0562504877				
1145	1163						
1146	1161						
1147	1162		0562504695				022562125
1148	1159		0599933437				
1149	1167						
1150	1166						
1151	1165						
1152	1164						
1153	1174		0593080440	0562504852			
1154	1175		0598317717				
1155	1177						
1156	1173	ayman.tomeh94@gmail.com	0595184181				
1157	1176						
1158	1171	kere-2020@hotmail.com	0562504791	042414877			
1159	1172						
1160	1178	KACC_1989@HOTMAIL.COM	0598102047				
1161	1179						
1162	1180						
1163	1182						
1164	1183						
1165	1184						
1166	1181						
1167	1185	smaqeti@palpost.ps	0562504689				
1168	1188						
1169	1191		0598120722	2340580			
1170	1199	kheiriimair@yahoo.com	0597957360				
1171	1192	thamad@mtit.gov.ps					
1172	1189						
1173	1190						
1174	1193						
1175	1194						
1176	1200						
1177	1201						
1178	1205	shsalahat@mtit.gov.ps	0598927102	092578370			
1179	1207						
1180	1206						
1181	1204						
1182	1208						
1183	1209						
1184	1210						
1185	1212						
1186	1217	 ahmadhalayqa10@gmail.com  / Ahmad2015press@gmail.com	0562504701	0598107481 واتس			2228900
1187	1215						
1188	1216	mohand-mm2000@hotmail.com	0598245621				
1189	1228						
1190	77						
1191	80						
1192	42	aatatri@mtit.gov.ps	0562500289				331
1193	47		0595517634				
1194	84	khaledmousa1990@gmail.com	0562504780				0569800041
1195	93						
1196	91		0568111785				
1197	83						
1198	30	akramaqleh3@gmail.com	0598713958	0598713958	لا يوجد	لا يوجد	
1199	94		0562504606				
1200	29						
1201	22						
1202	25						
1203	102						
1204	101						
1205	85	mshrateh@palpost.ps					
1206	90	fatimash_33@hotmail.com					
1207	95						
1208	82						
1209	32	heqd-elsinean@hotmail.com	0599445358				
1210	86						
1211	99		0562500250				206
1212	773						
1213	35						
1214	50						
1215	37	Karmankhalel@outiook.sa	0599638747				
1216	33						
1217	36		0562500248				
1218	48						
1219	45						
1220	46						
1221	27		0599864912	092321517			
1222	44		0599970336				
1223	51	omashaqe@mtit.gov.ps	0562504968				
1224	43						
1225	791	manaro632@gmail.com					
1226	795						
1227	788		0595181631	022976091			
1228	790						
1229	793						
1230	789	amanna@mtit.gov.ps					
1231	1239						
1232	796	mjabari@palpost.ps	0562504699				02-2228900
1233	799		562504928	022245071			022245254
1234	1231						
1235	1233						
1236	1230	bzaghab@palpost.ps	0599830915	2322802			0562504690
1237	1232						
1238	1234		0562500230				
1239	798		0562504768				
1240	781						
1241	797						
1242	1238	anazzal@mtit.gov.ps					425
1243	1237						
1244	1236	myaghy@palpost.ps	0597388935	02-2313423			
1245	1250						
1246	1248	aasaad@mtit.gov.ps	0562111545	0595727298			415
1247	1249						
1248	1255						
1249	1247						
1250	1257						
1251	1260						
1252	1261						
1253	1266	mtomiza@palpost.ps	0595998089	0562504708			2206650
1254	1263						
1255	1256		0598596085				
1256	1246						
1257	1269						
1258	1262						
1259	1264						
1260	1258						
1261	1270						
1262	1272						
1263	1259						
1264	1271						
1265	1267						
1266	1265	ahmadobaid675@gmail.com	0566333322				
1267	1286						
1268	1285						
1269	1275						
1270	1280						
1271	1282	maldabbagh@mtit.gov.ps	0562111557				
1272	1290						
1273	1289						
1274	1291						
1275	1281						
1276	1288		0595410054	022486168			
1277	1283	hbaden@mtit.gov.ps					
1278	1287						
1279	1294						
1280	1293	MOHOMARY@PALPOST.PS	0568600808				0562111700
1281	1211						
1282	1296						
1283	1295						
1284	1304						
1285	1305						
1286	1300						
1287	1297						
1288	1306						
1289	1298						
1290	1301						
1291	1303						
1292	1302						
1293	1299						
1294	1314						
1295	1311						
1296	1317						
1297	1312						
1298	1332						
1299	1321						
1300	1331						
1301	1320						
1302	1313	rbalatiah@mtit.gov.ps	0562500036				
1303	1310						
1304	1316						
1305	1318						
1306	1315	mkmail@mtit.gov.ps	0562111454	0569971002			
1307	1319						
1308	1326						
1309	1323						
1310	1322						
1311	1328	khadeeja.barakat@hotmail.com					
1312	1324						
1313	1329						
1314	1325		0562111437				
1315	1330		0562111418				
1316	1327	jomair@mtit.gov.ps					
1317	387						
1318	502						
1319	456						
1320	482						
1321	493						
1322	322						
1323	539						
1324	515						
1325	402						
1326	479						
1327	459						
1328	305						
1329	639	hhamdan@mtit.gov.ps					
1330	277						
1331	457						
1332	370						
\.


--
-- TOC entry 3900 (class 0 OID 48983)
-- Dependencies: 229
-- Data for Name: employee_education_info; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.employee_education_info (id, employee_id, academic_degree, unviersity, major, degree, edu_start_date, edu_end_date) FROM stdin;
\.


--
-- TOC entry 3896 (class 0 OID 48947)
-- Dependencies: 225
-- Data for Name: employee_job_info; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.employee_job_info (id, employee_id, contract_type, job_title, general_management, department, division, div, class, grade, job_start_date, job_end_date) FROM stdin;
6	787	3	1	34	0	0	0	0	0	2023-01-01	\N
7	788	2	34	34	0	0	0	0	0	2020-09-08	\N
9	83	2	34	32	0	0	0	0	0	2021-09-12	\N
11	819	6	34	33	0	0	0	0	0	2018-10-07	\N
21	887	6	34	65	0	0	0	0	0	2020-10-27	\N
30	278	1	34	742	0	0	0	0	0	2021-01-01	\N
31	592	1	52	13	0	0	0	0	0	2020-05-06	\N
32	941	6	34	13	0	0	0	0	0	2021-01-01	\N
33	110	1	8	14	0	0	0	0	0	2023-01-01	\N
34	142	1	34	14	0	0	0	0	0	2012-01-01	\N
53	43	2	34	22	0	0	0	0	0	2009-12-07	\N
54	977	6	22	742	0	0	0	0	0	2022-09-01	\N
55	790	2	22	742	0	0	0	0	0	2020-12-23	\N
56	9	1	22	742	0	0	0	0	0	2019-07-10	\N
57	1058	1	22	742	0	0	0	0	0	2016-12-18	\N
76	692	1	53	18	0	0	0	0	0	2023-01-01	\N
105	306	0	1	21	0	0	0	0	0	2011-03-16	\N
106	8	1	7	64	0	0	0	0	0	2022-05-01	\N
122	656	1	16	0	0	0	0	0	0	2009-11-01	\N
123	828	6	19	0	0	0	0	0	0	2019-01-02	\N
124	1209	2	19	0	0	0	0	0	0	2019-01-09	\N
125	662	1	19	0	0	0	0	0	0	2016-02-01	\N
126	578	1	19	0	0	0	0	0	0	2009-11-01	\N
127	794	1	16	0	0	0	0	0	0	2009-11-01	\N
128	617	1	17	0	0	0	0	0	0	2009-11-01	\N
129	640	1	16	0	0	0	0	0	0	2009-11-01	\N
130	157	1	19	0	0	0	0	0	0	2009-11-01	\N
131	683	1	18	0	0	0	0	0	0	2009-11-01	\N
132	561	1	18	0	0	0	0	0	0	2012-08-01	\N
133	140	1	18	0	0	0	0	0	0	2020-10-18	\N
134	633	1	20	0	0	0	0	0	0	2009-11-01	\N
135	629	1	18	0	0	0	0	0	0	2009-11-01	\N
136	791	2	19	0	0	0	0	0	0	2018-11-18	\N
137	673	1	19	0	0	0	0	0	0	2011-08-01	\N
138	634	1	18	0	0	0	0	0	0	2012-07-01	\N
145	189	1	18	0	0	0	0	0	0	2021-02-03	\N
146	46	2	19	0	0	0	0	0	0	2016-11-16	\N
147	690	1	19	0	0	0	0	0	0	2009-11-01	\N
151	658	1	16	0	0	0	0	0	0	2020-09-16	\N
152	1102	6	19	0	0	0	0	0	0	2021-01-01	\N
153	1071	2	19	0	0	0	0	0	0	2005-01-15	\N
154	907	6	20	0	0	0	0	0	0	2022-02-04	\N
155	163	1	16	0	0	0	0	0	0	2020-09-16	\N
156	154	1	18	0	0	0	0	0	0	2020-01-01	\N
157	555	1	18	0	0	0	0	0	0	2009-11-01	\N
158	198	1	20	0	0	0	0	0	0	2009-11-01	\N
165	107	1	17	0	0	0	0	0	0	2020-10-26	\N
166	169	1	17	0	0	0	0	0	0	2020-10-26	\N
167	160	1	20	0	0	0	0	0	0	2017-01-09	\N
168	841	6	19	0	0	0	0	0	0	2019-02-21	\N
169	1184	2	19	0	0	0	0	0	0	2016-11-01	\N
170	147	1	18	0	0	0	0	0	0	2012-08-01	\N
171	641	1	18	0	0	0	0	0	0	2009-11-01	\N
172	827	6	19	0	0	0	0	0	0	2018-12-23	\N
173	672	1	19	0	0	0	0	0	0	2016-03-14	\N
180	1293	2	20	0	0	0	0	0	0	2023-01-01	\N
181	1294	2	20	0	0	0	0	0	0	2023-01-01	\N
182	1201	2	19	0	0	0	0	0	0	2018-09-30	\N
183	211	1	19	0	0	0	0	0	0	2012-01-01	\N
184	225	1	17	0	0	0	0	0	0	2009-11-01	\N
185	724	1	17	0	0	0	0	0	0	2009-11-01	\N
186	587	1	19	0	0	0	0	0	0	2015-02-11	\N
187	738	6	19	0	0	0	0	0	0	2017-09-24	\N
188	209	1	19	0	0	0	0	0	0	2009-11-01	\N
189	117	1	17	0	0	0	0	0	0	2009-11-01	\N
190	199	1	18	0	0	0	0	0	0	2009-11-01	\N
191	581	1	19	0	0	0	0	0	0	2009-11-01	\N
192	632	1	18	0	0	0	0	0	0	2009-11-01	\N
196	208	1	17	0	0	0	0	0	0	2017-10-09	\N
197	836	6	19	0	0	0	0	0	0	2019-01-20	\N
198	580	1	18	0	0	0	0	0	0	2009-11-01	\N
199	569	1	19	0	0	0	0	0	0	2009-11-01	\N
205	820	1	18	0	0	0	0	0	0	2009-11-01	\N
215	205	1	19	0	0	0	0	0	0	2014-04-07	\N
216	120	1	17	0	0	0	0	0	0	2009-11-01	\N
217	200	1	18	0	0	0	0	0	0	2012-05-01	\N
218	243	1	18	0	0	0	0	0	0	2012-07-01	\N
219	625	1	19	0	0	0	0	0	0	2009-11-01	\N
220	240	1	20	0	0	0	0	0	0	2009-11-01	\N
221	230	1	18	0	0	0	0	0	0	2009-11-01	\N
222	123	1	20	0	0	0	0	0	0	2009-11-01	\N
223	149	1	18	0	0	0	0	0	0	2011-07-01	\N
227	586	1	17	0	0	0	0	0	0	2009-11-01	\N
228	708	1	19	0	0	0	0	0	0	2009-11-01	\N
229	572	1	18	0	0	0	0	0	0	2019-05-09	\N
230	196	1	18	0	0	0	0	0	0	2009-11-01	\N
231	703	1	20	0	0	0	0	0	0	2009-11-01	\N
232	579	1	18	0	0	0	0	0	0	2010-03-01	\N
239	238	1	17	0	0	0	0	0	0	2017-10-09	\N
240	184	1	20	0	0	0	0	0	0	2011-07-01	\N
241	215	1	18	0	0	0	0	0	0	2010-10-01	\N
242	564	1	20	0	0	0	0	0	0	2009-11-01	\N
245	849	3	30	742	0	0	0	0	0	2019-04-14	\N
246	847	3	30	742	0	0	0	0	0	2019-04-14	\N
247	244	1	9	12	0	0	0	0	0	2021-04-27	\N
248	850	1	9	12	0	0	0	0	0	2019-07-01	\N
258	128	1	20	0	0	0	0	0	0	2015-02-11	\N
259	1266	2	19	0	0	0	0	0	0	2019-01-27	\N
268	834	6	20	0	0	0	0	0	0	2018-01-13	\N
283	822	6	19	0	0	0	0	0	0	2018-10-23	\N
284	784	6	19	0	0	0	0	0	0	2004-05-01	\N
285	1085	2	19	0	0	0	0	0	0	2003-01-23	\N
286	1077	2	19	0	0	0	0	0	0	2013-05-15	\N
287	96	3	19	0	0	0	0	0	0	2013-05-18	\N
288	1162	2	19	0	0	0	0	0	0	2017-10-02	\N
289	1074	2	19	0	0	0	0	0	0	2003-03-15	\N
290	92	6	19	0	0	0	0	0	0	2012-01-10	\N
291	1073	2	19	0	0	0	0	0	0	2011-07-25	\N
292	97	6	19	0	0	0	0	0	0	2002-10-20	\N
293	100	6	19	0	0	0	0	0	0	2006-08-15	\N
299	1165	2	19	0	0	0	0	0	0	2009-05-07	\N
300	1164	2	19	0	0	0	0	0	0	2010-07-14	\N
301	1166	2	19	0	0	0	0	0	0	2013-05-06	\N
302	807	6	19	0	0	0	0	0	0	2018-07-03	\N
303	54	3	19	0	0	0	0	0	0	2013-05-09	\N
304	1081	2	19	0	0	0	0	0	0	2008-01-06	\N
305	1088	2	19	0	0	0	0	0	0	2009-01-04	\N
309	57	3	22	0	0	0	0	0	0	2015-12-06	\N
320	1183	2	19	0	0	0	0	0	0	2008-10-22	\N
321	1154	2	19	0	0	0	0	0	0	2008-05-10	\N
322	1065	2	19	0	0	0	0	0	0	2005-06-12	\N
323	891	6	19	0	0	0	0	0	0	2020-12-01	\N
324	824	6	19	0	0	0	0	0	0	2018-11-18	\N
325	69	6	19	0	0	0	0	0	0	2009-12-06	\N
326	70	6	19	0	0	0	0	0	0	2009-12-08	\N
327	1156	2	19	0	0	0	0	0	0	2020-04-30	\N
328	783	4	19	0	0	0	0	0	0	2006-02-25	\N
329	1180	2	19	0	0	0	0	0	0	2018-07-25	\N
330	737	6	19	0	0	0	0	0	0	2017-09-05	\N
331	65	6	19	0	0	0	0	0	0	2002-09-15	\N
335	1194	2	19	0	0	0	0	0	0	2013-05-07	\N
340	1190	2	19	0	0	0	0	0	0	2009-01-04	\N
341	1176	2	19	0	0	0	0	0	0	2007-01-15	\N
342	235	1	19	0	0	0	0	0	0	2021-01-10	\N
343	735	6	20	0	0	0	0	0	0	2011-06-21	\N
344	1070	2	19	0	0	0	0	0	0	2012-09-19	\N
345	1069	2	19	0	0	0	0	0	0	2009-02-07	\N
346	1199	2	19	0	0	0	0	0	0	2013-05-06	\N
347	1193	2	19	0	0	0	0	0	0	2013-05-06	\N
348	121	1	48	21	0	0	0	0	0	2019-07-01	\N
349	599	1	20	0	0	0	0	0	0	2018-11-12	\N
354	1056	1	64	19	0	0	0	0	0	2023-01-01	\N
359	95	2	21	33	0	0	0	0	0	2021-01-24	\N
360	928	6	21	33	0	0	0	0	0	2023-01-01	\N
361	649	1	48	32	0	0	0	0	0	2021-03-25	\N
371	719	1	50	0	0	0	0	0	0	2023-01-01	\N
372	126	1	50	0	0	0	0	0	0	2023-01-01	\N
383	1283	2	13	20	0	0	0	0	0	2023-01-01	\N
384	1272	2	13	20	0	0	0	0	0	2023-01-01	\N
387	1319	2	13	0	0	0	0	0	0	2023-01-01	\N
388	698	1	20	0	0	0	0	0	0	2018-05-08	\N
390	976	6	33	742	0	0	0	0	0	2021-09-01	\N
395	624	1	64	0	0	0	0	0	0	2020-02-01	\N
396	139	1	64	0	0	0	0	0	0	2020-10-18	\N
397	799	2	20	0	0	0	0	0	0	2020-12-08	\N
398	218	1	20	0	0	0	0	0	0	2020-01-01	\N
399	826	6	22	1757	0	0	0	0	0	2021-06-14	\N
402	950	6	22	33	0	0	0	0	0	2023-01-26	\N
413	986	6	19	0	0	0	0	0	0	2022-04-01	\N
414	776	6	19	0	0	0	0	0	0	2022-04-01	\N
415	1066	2	19	0	0	0	0	0	0	2022-04-01	\N
416	982	6	20	0	0	0	0	0	0	2021-09-05	\N
417	981	6	20	0	0	0	0	0	0	2022-04-01	\N
418	1028	6	20	0	0	0	0	0	0	2022-04-01	\N
419	613	1	64	0	0	0	0	0	0	2022-04-01	\N
438	583	1	20	0	0	0	0	0	0	2019-02-12	\N
439	789	2	62	65	0	0	0	0	0	2021-04-29	\N
444	664	1	64	0	0	0	0	0	0	2021-01-17	\N
445	1167	2	19	0	0	0	0	0	0	2021-01-17	\N
449	1280	2	5	20	0	0	0	0	0	2023-01-01	\N
450	1315	2	5	20	0	0	0	0	0	2021-12-20	\N
451	1310	2	5	20	0	0	0	0	0	2021-12-08	\N
452	1151	2	5	21	0	0	0	0	0	2021-01-01	\N
453	1205	2	5	21	0	0	0	0	0	2021-04-16	\N
454	1204	2	5	21	0	0	0	0	0	2021-04-16	\N
455	1304	2	22	65	0	0	0	0	0	2021-12-02	\N
456	1313	2	12	65	0	0	0	0	0	2022-12-04	\N
457	833	1	12	65	0	0	0	0	0	2020-01-01	\N
458	1317	2	12	65	0	0	0	0	0	2023-05-29	\N
459	1331	2	12	65	0	0	0	0	0	2022-04-01	\N
460	866	3	12	65	0	0	0	0	0	2022-04-01	\N
461	1287	2	13	22	0	0	0	0	0	2023-04-27	\N
462	1303	2	13	22	0	0	0	0	0	2023-05-28	\N
463	1292	2	13	22	0	0	0	0	0	2023-01-01	\N
464	1289	2	13	22	0	0	0	0	0	2023-01-01	\N
465	1240	3	13	22	0	0	0	0	0	2023-01-01	\N
466	1323	2	13	22	0	0	0	0	0	2021-12-06	\N
467	1321	2	13	22	0	0	0	0	0	2021-11-14	\N
468	1318	2	13	22	0	0	0	0	0	2021-11-07	\N
469	1316	2	13	22	0	0	0	0	0	2021-10-12	\N
470	1008	3	13	22	0	0	0	0	0	2021-11-01	\N
487	1295	2	78	15	0	0	0	0	0	2022-04-22	\N
490	990	6	20	0	0	0	0	0	0	2023-01-25	\N
491	991	6	20	0	0	0	0	0	0	2023-01-25	\N
499	1090	2	19	0	0	0	0	0	0	2013-05-04	\N
500	1163	2	19	0	0	0	0	0	0	2013-05-05	\N
501	1084	2	20	0	0	0	0	0	0	2004-07-01	\N
502	1161	2	19	0	0	0	0	0	0	2008-01-09	\N
511	1212	2	19	0	0	0	0	0	0	2009-01-06	\N
512	1216	2	19	0	0	0	0	0	0	2009-01-03	\N
513	985	6	19	0	0	0	0	0	0	2021-09-05	\N
514	1186	6	19	0	0	0	0	0	0	2022-09-15	\N
515	1087	2	19	0	0	0	0	0	0	2007-01-15	\N
516	694	1	19	0	0	0	0	0	0	2014-11-04	\N
521	17	6	19	0	0	0	0	0	0	2016-11-01	\N
522	1179	2	20	0	0	0	0	0	0	2019-08-07	\N
523	19	6	20	0	0	0	0	0	0	2016-11-16	\N
524	714	6	19	0	0	0	0	0	0	2016-11-16	\N
525	37	2	20	0	0	0	0	0	0	2016-11-08	\N
526	1174	2	20	0	0	0	0	0	0	2020-01-01	\N
527	894	6	20	0	0	0	0	0	0	2020-12-22	\N
532	1178	2	23	0	0	0	0	0	0	2016-12-18	\N
534	47	2	33	0	0	0	0	0	0	2016-12-18	\N
538	1258	2	19	0	0	0	0	0	0	2017-02-08	\N
541	671	1	2	742	0	0	0	0	0	2018-03-29	\N
543	851	6	19	0	0	0	0	0	0	2021-04-12	\N
544	1195	6	19	0	0	0	0	0	0	2022-08-22	\N
545	1159	2	22	0	0	0	0	0	0	2016-12-18	\N
546	666	1	20	0	0	0	0	0	0	2020-10-07	\N
547	77	2	19	0	0	0	0	0	0	2018-02-12	\N
548	191	1	54	0	0	0	0	0	0	2015-02-11	\N
564	1169	6	19	0	0	0	0	0	0	2022-08-28	\N
565	1217	2	19	0	0	0	0	0	0	2017-10-08	\N
566	32	2	21	0	0	0	0	0	0	2018-01-17	\N
569	223	1	19	0	0	0	0	0	0	2014-03-05	\N
581	98	4	20	0	0	0	0	0	0	2017-08-01	\N
583	781	2	20	0	0	0	0	0	0	2021-04-21	\N
584	676	1	20	0	0	0	0	0	0	2014-03-06	\N
590	202	1	20	0	0	0	0	0	0	2021-02-09	\N
591	114	1	18	0	0	0	0	0	0	2021-02-09	\N
593	693	1	17	0	0	0	0	0	0	2021-02-03	\N
594	980	3	13	21	0	0	0	0	0	2022-01-01	\N
595	1208	2	13	21	0	0	0	0	0	2021-04-01	\N
596	1206	2	13	21	0	0	0	0	0	2021-04-01	\N
597	1207	2	13	21	0	0	0	0	0	2021-04-01	\N
603	1173	2	23	0	0	0	0	0	0	2023-05-16	\N
605	1275	2	20	0	0	0	0	0	0	2023-05-16	\N
609	1062	1	20	0	0	0	0	0	0	2023-05-16	\N
610	79	6	21	31	0	0	0	0	0	2023-01-01	\N
611	78	6	21	31	0	0	0	0	0	2023-05-16	\N
613	566	1	48	22	0	0	0	0	0	2021-04-01	\N
614	696	1	48	31	0	0	0	0	0	2019-12-02	\N
616	590	1	64	0	0	0	0	0	0	2020-10-07	\N
617	90	2	64	0	0	0	0	0	0	2020-09-23	\N
618	639	1	52	1777	0	0	0	0	0	2020-09-23	\N
621	2	6	64	0	0	0	0	0	0	2020-12-24	\N
623	1238	2	62	0	0	0	0	0	0	2021-04-29	\N
626	631	1	2	0	0	0	0	0	0	2021-04-27	\N
627	394	1	34	1757	0	0	0	0	0	2021-03-30	\N
631	685	1	79	1757	0	0	0	0	0	2023-06-11	\N
632	600	1	48	33	0	0	0	0	0	2021-05-05	\N
633	193	1	52	15	0	0	0	0	0	2016-06-15	\N
639	695	1	64	0	0	0	0	0	0	2020-09-23	\N
640	188	1	65	65	0	0	0	0	0	2020-01-29	\N
641	722	1	65	33	0	0	0	0	0	2020-09-20	\N
642	593	1	48	64	0	0	0	0	0	2021-01-01	\N
643	1192	2	21	742	0	0	0	0	0	2020-02-19	\N
644	880	6	21	742	0	0	0	0	0	2021-01-01	\N
645	684	1	19	0	0	0	0	0	0	2020-02-04	\N
646	180	1	48	1757	0	0	0	0	0	2019-07-10	\N
647	885	6	19	0	0	0	0	0	0	2020-10-27	\N
648	913	3	76	1864	0	0	0	0	0	2021-04-15	\N
649	1269	2	12	64	0	0	0	0	0	2023-01-01	\N
650	1271	2	12	64	0	0	0	0	0	2023-01-01	\N
651	25	2	12	64	0	0	0	0	0	2023-01-01	\N
652	1257	2	12	64	0	0	0	0	0	2023-01-01	\N
653	1016	1	12	64	0	0	0	0	0	2021-05-25	\N
654	1299	2	12	64	0	0	0	0	0	2023-05-28	\N
655	1302	2	12	64	0	0	0	0	0	2023-01-01	\N
656	118	1	50	0	0	0	0	0	0	2021-09-15	\N
664	940	6	19	0	0	0	0	0	0	2021-08-18	\N
665	975	6	21	16	0	0	0	0	0	2021-09-26	\N
671	550	1	48	11	0	0	0	0	0	2019-06-16	\N
674	201	1	48	65	0	0	0	0	0	2021-04-01	\N
675	642	1	64	0	0	0	0	0	0	2023-01-01	\N
693	832	1	48	1969	0	0	0	0	0	2023-01-01	\N
698	30	2	58	0	0	0	0	0	0	2023-01-01	\N
1	858	1	2	21	54	0	0	0	0	2021-06-22	\N
2	177	1	2	21	55	0	0	0	0	2019-07-10	\N
3	659	1	2	21	56	0	0	0	0	2021-05-23	\N
4	210	1	2	21	57	0	0	0	0	2021-07-18	\N
8	228	1	2	34	79	0	0	0	0	2023-01-01	\N
10	608	1	2	34	82	0	0	0	0	2020-01-29	\N
12	119	1	2	34	83	0	0	0	0	2022-07-17	\N
13	250	1	2	34	84	0	0	0	0	2014-12-18	\N
14	109	1	2	22	59	0	0	0	0	2020-05-06	\N
15	723	1	2	22	60	0	0	0	0	2023-01-01	\N
17	190	1	2	22	61	0	0	0	0	2014-12-18	\N
18	609	1	2	22	62	0	0	0	0	2023-01-01	\N
19	636	1	2	22	63	0	0	0	0	2009-11-01	\N
20	681	1	5	20	23	0	0	0	0	2009-11-01	\N
22	589	1	2	65	99	0	0	0	0	2021-06-28	\N
23	342	0	2	65	101	0	0	0	0	2020-08-16	\N
28	567	1	2	33	73	0	0	0	0	2019-12-04	\N
29	132	1	2	33	76	0	0	0	0	2014-02-03	\N
41	663	1	2	91	777	0	0	0	0	2014-02-03	\N
42	655	1	2	91	778	0	0	0	0	2022-02-01	\N
43	233	1	2	91	779	0	0	0	0	2022-01-01	\N
44	224	1	2	91	780	0	0	0	0	2022-10-04	\N
45	552	1	2	91	781	0	0	0	0	2021-04-27	\N
46	16	1	2	91	782	0	0	0	0	2020-10-28	\N
47	562	1	2	91	783	0	0	0	0	2009-11-01	\N
48	226	1	2	91	784	0	0	0	0	2021-09-15	\N
49	150	1	2	91	785	0	0	0	0	2009-11-01	\N
50	108	1	2	91	786	0	0	0	0	2022-04-01	\N
51	152	1	2	91	787	0	0	0	0	2009-11-01	\N
58	249	1	2	16	759	0	0	0	0	2010-07-29	\N
60	604	1	2	14	751	0	0	0	0	2022-01-01	\N
62	657	1	2	74	897	0	0	0	0	2022-12-01	\N
63	582	1	51	74	897	0	0	0	0	2020-12-20	\N
64	682	1	2	74	898	0	0	0	0	2023-01-01	\N
65	571	1	2	74	899	0	0	0	0	2021-05-25	\N
66	560	1	2	74	900	0	0	0	0	2022-10-30	\N
67	630	1	51	74	900	0	0	0	0	2009-11-01	\N
68	621	1	51	74	901	0	0	0	0	2020-01-01	\N
69	236	1	2	74	903	0	0	0	0	2023-01-01	\N
70	115	1	2	74	904	0	0	0	0	2023-05-16	\N
71	145	1	2	74	905	0	0	0	0	2023-01-01	\N
72	183	1	2	74	906	0	0	0	0	2023-05-16	\N
73	1017	1	51	74	906	0	0	0	0	2023-05-16	\N
101	800	1	2	20	23	0	0	0	0	2020-09-22	\N
102	34	1	2	20	26	0	0	0	0	2009-11-01	\N
103	112	1	2	20	24	0	0	0	0	2009-11-01	\N
104	884	1	2	20	25	0	0	0	0	2020-09-06	\N
107	637	1	2	31	47	0	0	0	0	2021-06-14	\N
108	127	1	2	64	93	0	0	0	0	2019-05-02	\N
111	195	1	2	32	66	0	0	0	0	2011-09-01	\N
249	947	6	21	91	782	0	0	0	0	2021-09-21	\N
250	597	1	21	91	787	0	0	0	0	2009-11-01	\N
261	1051	1	23	14	750	0	0	0	0	2016-12-18	\N
271	817	6	49	74	896	0	0	0	0	2018-09-30	\N
272	88	6	49	74	897	0	0	0	0	2007-07-15	\N
298	777	6	49	74	899	0	0	0	0	2002-10-15	\N
339	1215	2	21	74	904	0	0	0	0	2013-05-14	\N
355	620	1	64	31	1559	0	0	0	0	2019-12-05	\N
357	650	1	64	32	67	0	0	0	0	2021-05-09	\N
358	1256	2	64	74	902	0	0	0	0	2022-01-01	\N
370	281	1	5	74	901	0	0	0	0	2021-06-13	\N
376	1268	2	62	10	17	0	0	0	0	2023-04-04	\N
377	1138	6	62	10	17	0	0	0	0	2022-01-01	\N
378	1311	2	62	10	17	0	0	0	0	2022-01-01	\N
379	1026	3	62	10	17	0	0	0	0	2022-01-01	\N
380	1290	2	13	20	27	0	0	0	0	2023-01-01	\N
381	1298	2	42	1969	1976	0	0	0	0	2022-01-01	\N
382	1305	2	42	1969	1976	0	0	0	0	2022-01-01	\N
385	1306	2	23	1969	1975	0	0	0	0	2022-01-01	\N
386	1314	2	23	1969	1975	0	0	0	0	2022-01-01	\N
392	709	1	64	33	71	0	0	0	0	2022-01-01	\N
393	1230	2	3	74	1641	0	0	0	0	2022-06-30	\N
394	584	1	51	74	1641	0	0	0	0	2019-09-12	\N
403	956	1	22	91	787	0	0	0	0	2021-09-01	\N
405	1033	1	22	31	46	0	0	0	0	2022-01-30	\N
406	755	1	64	65	96	0	0	0	0	2022-04-12	\N
407	1013	1	64	65	97	0	0	0	0	2022-04-12	\N
408	726	1	64	65	98	0	0	0	0	2022-04-12	\N
409	949	1	64	65	99	0	0	0	0	2022-04-12	\N
410	948	1	64	65	100	0	0	0	0	2022-04-12	\N
411	6	1	64	65	101	0	0	0	0	2022-04-12	\N
420	1320	2	77	65	98	0	0	0	0	2022-04-01	\N
421	1300	2	12	65	96	0	0	0	0	2022-04-01	\N
422	1247	2	12	65	100	0	0	0	0	2023-03-21	\N
423	22	2	12	65	97	0	0	0	0	2022-04-01	\N
424	51	2	12	65	97	0	0	0	0	2022-04-01	\N
425	1312	2	13	65	99	0	0	0	0	2022-04-01	\N
426	1237	2	21	91	777	0	0	0	0	2022-06-30	\N
427	168	1	64	13	1945	0	0	0	0	2022-09-25	\N
428	1014	1	22	33	71	0	0	0	0	2022-10-23	\N
431	1251	6	23	1969	1977	0	0	0	0	2023-01-01	\N
447	1260	2	42	74	899	0	0	0	0	2021-10-28	\N
448	935	6	42	74	899	0	0	0	0	2022-11-07	\N
471	1288	2	22	31	48	0	0	0	0	2023-01-01	\N
472	1046	3	19	33	71	0	0	0	0	2021-11-30	\N
475	1029	6	42	74	897	0	0	0	0	2021-12-23	\N
476	998	6	42	74	897	0	0	0	0	2021-08-01	\N
477	931	6	42	74	897	0	0	0	0	2021-07-01	\N
478	1003	6	42	74	898	0	0	0	0	2021-07-11	\N
479	932	6	42	74	902	0	0	0	0	2021-07-06	\N
480	1261	2	42	74	903	0	0	0	0	2021-07-18	\N
481	922	6	42	74	903	0	0	0	0	2021-06-24	\N
482	1091	6	42	74	904	0	0	0	0	2023-02-15	\N
483	1265	2	42	74	906	0	0	0	0	2021-07-13	\N
484	1024	6	29	74	897	0	0	0	0	2021-10-03	\N
485	1030	6	22	74	897	0	0	0	0	2021-11-14	\N
486	653	1	64	91	783	0	0	0	0	2021-10-26	\N
488	906	6	20	74	896	0	0	0	0	2021-02-03	\N
489	1234	2	20	74	896	0	0	0	0	2021-02-15	\N
494	815	3	49	74	905	0	0	0	0	2018-09-20	\N
503	984	6	22	74	906	0	0	0	0	2023-05-16	\N
504	1175	2	22	74	906	0	0	0	0	2015-12-06	\N
505	575	1	29	74	906	0	0	0	0	2019-05-02	\N
506	27	2	33	74	906	0	0	0	0	2013-09-19	\N
520	635	1	22	74	900	0	0	0	0	2023-05-16	\N
540	185	1	2	91	1607	0	0	0	0	2021-06-17	\N
542	729	1	2	13	747	0	0	0	0	2018-03-29	\N
586	556	1	64	20	28	0	0	0	0	2020-10-28	\N
592	179	1	64	74	904	0	0	0	0	2022-01-01	\N
599	716	1	2	15	755	0	0	0	0	2019-01-01	\N
600	939	6	22	91	1607	0	0	0	0	2023-01-25	\N
601	7	1	64	33	2037	0	0	0	0	2023-05-16	\N
602	237	1	64	33	2036	0	0	0	0	2023-05-16	\N
604	36	2	29	91	787	0	0	0	0	2023-05-16	\N
606	1157	2	23	33	2036	0	0	0	0	2023-05-16	\N
607	1264	2	23	33	2038	0	0	0	0	2023-05-16	\N
608	795	2	23	33	2038	0	0	0	0	2023-05-16	\N
619	797	2	21	91	778	0	0	0	0	2021-09-15	\N
620	718	1	21	91	778	0	0	0	0	2020-12-01	\N
624	647	1	22	14	750	0	0	0	0	2021-05-23	\N
625	1055	1	13	16	758	0	0	0	0	2027-12-17	\N
628	1111	3	64	10	17	0	0	0	0	2022-01-01	\N
629	1301	2	22	65	98	0	0	0	0	2022-04-01	\N
630	1035	6	12	91	778	0	0	0	0	2022-11-01	\N
634	740	6	33	74	900	0	0	0	0	2018-06-20	\N
637	234	1	64	14	750	0	0	0	0	2020-08-17	\N
638	138	1	64	74	901	0	0	0	0	2020-09-23	\N
657	957	6	21	91	781	0	0	0	0	2021-10-03	\N
658	174	1	2	33	1958	0	0	0	0	2022-07-01	\N
659	1009	1	50	1757	1889	0	0	0	0	2021-11-11	\N
660	878	1	64	1969	1975	0	0	0	0	2023-02-02	\N
663	1239	2	22	1969	1977	0	0	0	0	2023-01-01	\N
672	1050	1	64	31	49	0	0	0	0	2022-04-18	\N
673	1103	3	64	31	48	0	0	0	0	2022-01-01	\N
677	5	1	23	33	72	0	0	0	0	2023-05-16	\N
678	1187	6	23	33	72	0	0	0	0	2022-09-06	\N
679	1168	1	22	74	899	0	0	0	0	2021-11-02	\N
680	1038	6	22	74	899	0	0	0	0	2023-01-26	\N
681	1041	6	22	74	899	0	0	0	0	2021-12-01	\N
682	936	6	22	74	899	0	0	0	0	2021-07-01	\N
683	1110	6	20	74	897	0	0	0	0	2022-04-01	\N
684	1296	2	20	74	897	0	0	0	0	2023-05-11	\N
685	1297	2	22	31	47	0	0	0	0	2022-11-30	\N
689	135	1	50	1969	1976	0	0	0	0	2023-01-01	\N
690	186	1	64	1969	1976	0	0	0	0	2023-01-01	\N
692	651	1	50	1969	1977	0	0	0	0	2023-01-01	\N
699	825	1	64	33	72	0	0	0	0	2023-01-01	\N
700	644	1	50	33	2064	0	0	0	0	2023-01-01	\N
701	1332	2	22	74	901	0	0	0	0	2023-05-30	\N
5	146	1	3	21	57	342	0	0	0	2020-11-09	\N
16	675	1	3	22	60	455	0	0	0	2008-01-01	\N
24	700	1	3	33	70	584	0	0	0	2013-09-01	\N
25	615	1	3	33	70	587	0	0	0	2022-10-04	\N
26	559	1	3	33	71	611	0	0	0	2009-11-01	\N
27	197	1	3	33	72	648	0	0	0	2020-01-16	\N
52	706	1	3	64	93	168	0	0	0	2020-06-09	\N
59	855	1	3	15	754	888	0	0	0	2020-10-29	\N
61	591	1	3	10	17	763	0	0	0	2015-02-11	\N
74	1105	6	34	18	19	938	0	0	0	2023-01-01	\N
75	162	1	3	18	19	938	0	0	0	2015-03-23	\N
78	131	1	3	74	896	931	0	0	0	2022-10-01	\N
79	549	1	3	74	896	932	0	0	0	2009-12-01	\N
80	686	1	3	74	897	942	0	0	0	2009-12-01	\N
81	194	1	3	74	897	946	0	0	0	2009-11-01	\N
82	554	1	3	74	899	957	0	0	0	2011-06-01	\N
83	605	1	3	74	899	958	0	0	0	2009-12-01	\N
84	232	1	3	74	900	961	0	0	0	2009-11-01	\N
85	670	1	3	74	900	963	0	0	0	2015-03-23	\N
86	616	1	3	74	900	964	0	0	0	2009-11-01	\N
87	155	1	3	74	901	968	0	0	0	2022-10-04	\N
88	182	1	3	74	904	984	0	0	0	2010-11-01	\N
89	130	1	3	74	904	987	0	0	0	2009-11-01	\N
90	612	1	3	74	904	988	0	0	0	2009-12-01	\N
91	725	1	3	74	905	990	0	0	0	2015-03-23	\N
92	661	1	3	74	905	991	0	0	0	2009-11-01	\N
93	921	1	3	74	905	993	0	0	0	2009-11-01	\N
94	638	1	3	74	905	994	0	0	0	2015-03-23	\N
95	175	1	3	74	906	997	0	0	0	2023-05-16	\N
96	628	1	3	74	906	998	0	0	0	2009-11-01	\N
97	213	1	3	74	906	999	0	0	0	2015-03-23	\N
98	574	1	3	33	71	615	0	0	0	2009-12-01	\N
109	181	1	3	31	46	137	0	0	0	2023-05-16	\N
110	679	1	3	31	49	178	0	0	0	2009-11-01	\N
253	1080	2	54	33	71	615	0	0	0	2010-09-01	\N
254	742	6	54	33	71	615	0	0	0	2017-11-01	\N
255	720	1	54	33	71	615	0	0	0	2010-09-01	\N
264	1061	1	23	31	49	179	0	0	0	2015-12-06	\N
266	29	2	39	10	17	761	0	0	0	2020-10-27	\N
267	857	6	39	10	17	761	0	0	0	2019-11-04	\N
362	1020	3	40	10	16	1881	0	0	0	2021-12-20	\N
363	1326	2	40	10	16	1881	0	0	0	2021-10-03	\N
364	1324	2	40	10	16	1881	0	0	0	2021-10-03	\N
365	971	3	40	10	16	1881	0	0	0	2021-10-03	\N
366	1322	2	40	10	16	1881	0	0	0	2021-10-03	\N
367	966	3	40	10	16	1881	0	0	0	2021-10-03	\N
368	1328	2	40	10	16	1881	0	0	0	2021-10-03	\N
369	1327	2	40	10	16	1881	0	0	0	2021-10-03	\N
389	958	6	62	10	17	761	0	0	0	2021-09-26	\N
391	10	1	52	33	72	651	0	0	0	2020-09-23	\N
412	166	1	22	10	16	1881	0	0	0	2022-04-01	\N
446	515	0	52	64	92	163	0	0	0	2021-06-08	\N
536	1250	2	13	64	94	175	0	0	0	2023-03-21	\N
537	1059	1	39	10	17	763	0	0	0	2019-10-09	\N
589	245	1	52	74	899	956	0	0	0	2019-07-15	\N
598	1150	6	60	31	49	180	0	0	0	2022-08-24	\N
612	1282	2	22	20	27	111	0	0	0	2023-04-25	\N
676	965	1	5	20	23	121	0	0	0	2019-03-21	\N
687	1152	2	23	1969	1975	1982	0	0	0	2023-01-01	\N
688	1231	2	23	1969	1975	1982	0	0	0	2023-01-01	\N
691	607	1	3	1969	1976	2002	0	0	0	2023-01-01	\N
35	133	1	21	31	48	150	153	0	0	2012-01-01	\N
36	691	1	29	31	48	150	153	0	0	2009-11-01	\N
37	74	6	33	31	48	152	171	0	0	2019-11-01	\N
38	594	1	33	31	48	152	171	0	0	2009-11-01	\N
39	927	6	26	31	48	151	158	0	0	2022-10-01	\N
40	674	1	26	31	48	151	158	0	0	2016-09-27	\N
77	830	1	22	31	47	86	110	0	0	2018-12-16	\N
99	1185	2	19	74	896	931	1100	0	0	2016-04-19	\N
100	1086	2	19	74	896	931	1100	0	0	2008-10-05	\N
112	944	6	20	74	897	943	1111	0	0	2021-09-05	\N
113	925	6	20	74	897	943	1111	0	0	2021-06-15	\N
114	239	1	20	74	897	943	1111	0	0	2019-03-17	\N
115	1094	6	20	74	897	943	1111	0	0	2021-10-10	\N
116	924	6	20	74	897	943	1111	0	0	2021-06-15	\N
117	1233	2	20	74	897	943	1111	0	0	2021-01-01	\N
118	667	1	4	74	897	944	1115	0	0	2009-11-01	\N
119	619	1	4	74	897	944	1117	0	0	2009-12-01	\N
120	217	1	4	74	897	945	1120	0	0	2012-08-01	\N
121	660	1	4	74	897	946	1122	0	0	2009-12-01	\N
139	680	1	19	74	897	944	1117	0	0	2009-11-01	\N
140	945	6	19	74	897	944	1117	0	0	2021-07-13	\N
141	1095	3	19	74	897	944	1117	0	0	2021-12-01	\N
142	1210	2	19	74	897	944	1117	0	0	2020-04-30	\N
143	883	6	19	74	897	944	1117	0	0	2020-08-20	\N
144	80	2	19	74	897	944	1117	0	0	2016-11-01	\N
148	1188	2	19	74	899	956	1151	0	0	2010-07-14	\N
149	227	1	19	74	899	956	1151	0	0	2009-11-01	\N
150	178	1	19	74	899	956	1151	0	0	2009-11-01	\N
159	143	1	19	74	900	962	1168	0	0	2012-01-01	\N
160	596	1	19	74	900	962	1168	0	0	2009-11-01	\N
161	44	2	19	74	900	962	1168	0	0	2016-12-05	\N
162	214	1	19	74	900	962	1168	0	0	2012-01-01	\N
163	125	1	4	74	900	962	1164	0	0	2009-12-01	\N
164	627	1	4	74	900	962	1166	0	0	2012-05-01	\N
174	122	1	20	74	900	961	1162	0	0	2014-04-07	\N
175	206	1	4	74	900	963	1170	0	0	2009-11-01	\N
176	1281	2	20	74	901	967	1179	0	0	2023-01-01	\N
177	899	6	20	74	901	967	1179	0	0	2023-01-25	\N
178	113	1	19	74	901	968	1185	0	0	2009-11-01	\N
179	1330	2	19	74	901	968	1185	0	0	2021-12-20	\N
193	994	6	19	74	902	974	1202	0	0	2021-09-08	\N
194	1329	2	19	74	902	974	1202	0	0	2021-12-14	\N
195	576	1	19	74	902	974	1202	0	0	2009-11-01	\N
200	1211	2	20	74	903	979	1213	0	0	2023-01-01	\N
201	997	6	20	74	903	979	1213	0	0	2023-01-25	\N
202	50	2	20	74	903	979	1213	0	0	2022-02-09	\N
203	909	6	20	74	903	979	1213	0	0	2021-02-09	\N
204	229	1	19	74	903	980	1219	0	0	2012-01-01	\N
206	710	1	4	74	904	985	1229	0	0	2009-12-01	\N
207	877	1	20	74	904	985	1230	0	0	2009-11-01	\N
208	1228	2	20	74	904	985	1230	0	0	2020-10-27	\N
209	148	1	20	74	904	985	1230	0	0	2009-11-01	\N
210	895	6	20	74	904	985	1230	0	0	2020-12-24	\N
211	242	1	19	74	904	986	1236	0	0	2009-11-01	\N
212	187	1	19	74	904	986	1236	0	0	2009-11-01	\N
213	577	1	19	74	904	986	1236	0	0	2009-11-01	\N
214	668	1	19	74	904	986	1236	0	0	2012-01-01	\N
224	711	1	4	74	904	986	1234	0	0	2009-11-01	\N
225	35	2	19	74	905	992	1253	0	0	2019-05-09	\N
226	176	1	19	74	905	992	1253	0	0	2012-01-01	\N
233	983	6	20	74	906	997	1264	0	0	2021-10-18	\N
234	1263	2	20	74	906	997	1264	0	0	2023-04-02	\N
235	153	1	20	74	906	997	1264	0	0	2009-11-01	\N
236	48	2	20	74	906	997	1264	0	0	2020-12-22	\N
237	172	1	19	74	906	998	1270	0	0	2012-01-01	\N
238	646	1	19	74	906	998	1270	0	0	2009-11-01	\N
243	203	1	4	74	906	998	1266	0	0	2011-05-01	\N
244	165	1	4	74	906	998	1270	0	0	2010-12-01	\N
251	551	1	29	33	71	611	623	0	0	2009-11-01	\N
252	33	2	29	33	71	611	623	0	0	2020-10-01	\N
256	99	2	29	31	48	150	153	0	0	2013-06-19	\N
257	204	1	29	33	71	611	623	0	0	2013-06-01	\N
260	1012	1	5	20	24	506	569	0	0	2021-03-24	\N
262	86	2	29	31	48	150	153	0	0	2021-04-12	\N
263	101	2	29	31	48	150	153	0	0	2015-05-21	\N
265	82	2	22	31	46	137	142	0	0	2019-07-10	\N
269	871	6	20	74	896	930	1094	0	0	2020-05-06	\N
270	1236	2	20	74	896	930	1094	0	0	2019-04-24	\N
273	1170	6	19	74	897	944	1117	0	0	2022-08-28	\N
274	809	6	19	74	897	944	1117	0	0	2022-10-16	\N
275	999	6	19	74	897	944	1117	0	0	2021-09-19	\N
276	903	6	19	74	897	944	1117	0	0	2021-01-06	\N
277	803	6	19	74	897	944	1117	0	0	2018-05-21	\N
278	1078	2	19	74	897	944	1117	0	0	2013-05-17	\N
279	796	2	19	74	897	944	1117	0	0	2008-01-19	\N
280	1076	2	19	74	897	944	1117	0	0	2005-09-08	\N
281	1075	2	19	74	897	944	1117	0	0	2003-07-20	\N
282	1252	6	40	31	46	138	144	0	0	2023-01-01	\N
294	1049	3	19	74	899	956	1151	0	0	2021-12-08	\N
295	1200	2	19	74	899	956	1151	0	0	2008-06-10	\N
296	1153	2	19	74	899	956	1151	0	0	2008-05-10	\N
297	1072	2	19	74	899	956	1151	0	0	2003-10-19	\N
306	1101	3	19	74	900	962	1168	0	0	2020-01-01	\N
307	1082	2	19	74	900	962	1168	0	0	2013-05-12	\N
308	1181	2	19	74	900	962	1168	0	0	2013-05-11	\N
310	1132	6	29	33	71	611	623	0	0	2022-06-01	\N
311	1097	6	29	33	71	611	623	0	0	2022-02-01	\N
312	1141	6	29	33	71	611	623	0	0	2022-08-01	\N
313	870	6	19	74	901	968	1185	0	0	2020-04-30	\N
314	1099	3	19	74	901	968	1185	0	0	2021-01-01	\N
315	1155	2	19	74	901	968	1185	0	0	2018-11-11	\N
316	1182	2	19	74	901	968	1185	0	0	2010-12-08	\N
317	66	6	19	74	901	968	1185	0	0	2004-12-15	\N
318	64	6	19	74	901	968	1185	0	0	2002-01-12	\N
319	1063	2	19	74	901	968	1185	0	0	2002-10-20	\N
332	1262	2	20	74	903	979	1213	0	0	2023-04-02	\N
333	1089	2	20	74	903	979	1213	0	0	2015-12-06	\N
334	1079	2	19	74	903	980	1219	0	0	2013-05-08	\N
336	765	6	20	74	904	985	1230	0	0	2009-03-16	\N
337	1177	2	19	74	904	986	1236	0	0	2013-05-06	\N
338	1189	2	19	74	904	986	1236	0	0	2011-05-18	\N
350	1142	2	13	22	62	476	482	0	0	2018-12-17	\N
351	1248	2	12	34	83	380	416	0	0	2023-03-21	\N
352	842	1	12	34	83	380	416	0	0	2019-03-24	\N
353	901	1	26	31	48	151	158	0	0	2021-01-24	\N
356	845	2	13	21	53	284	288	0	0	2019-08-20	\N
373	1007	6	24	22	60	454	457	0	0	2021-11-10	\N
374	1096	3	24	22	60	454	457	0	0	2022-01-01	\N
375	1232	2	22	74	901	968	1181	0	0	2023-01-01	\N
400	747	1	22	31	47	88	132	0	0	2021-08-12	\N
401	938	6	22	31	47	88	132	0	0	2021-09-12	\N
404	1032	6	29	31	48	150	153	0	0	2022-02-09	\N
429	94	2	5	22	59	426	449	0	0	2023-01-01	\N
430	45	2	21	74	899	956	1147	0	0	2023-01-01	\N
432	1270	2	23	33	75	702	709	0	0	2023-01-01	\N
433	1259	2	23	74	901	967	1178	0	0	2023-01-01	\N
434	1291	2	13	22	62	474	478	0	0	2023-01-01	\N
435	890	1	13	22	62	474	478	0	0	2018-09-23	\N
436	816	6	21	33	71	618	640	0	0	2018-09-20	\N
437	961	1	5	21	54	299	303	0	0	2019-03-18	\N
440	888	6	72	31	48	151	158	0	0	2020-11-30	\N
441	896	6	22	91	778	797	802	0	0	2020-12-29	\N
442	897	6	23	74	902	972	1193	0	0	2020-12-29	\N
443	898	1	75	33	70	586	606	0	0	2020-12-13	\N
473	1325	2	20	74	898	949	1128	0	0	2021-12-15	\N
474	1045	3	20	74	898	949	1128	0	0	2021-12-15	\N
492	952	6	19	74	901	968	1185	0	0	2023-01-25	\N
493	1160	2	19	74	905	992	1253	0	0	2009-01-02	\N
495	886	6	20	74	905	991	1247	0	0	2020-01-01	\N
496	1286	2	20	74	905	991	1247	0	0	2022-04-13	\N
497	699	1	20	74	905	991	1247	0	0	2019-02-14	\N
498	1067	2	20	74	905	991	1247	0	0	2004-12-15	\N
507	164	1	19	74	906	998	1270	0	0	2008-09-01	\N
508	601	1	19	74	906	998	1270	0	0	2015-02-11	\N
509	588	1	19	74	906	998	1270	0	0	2014-03-06	\N
510	1083	2	19	74	906	998	1270	0	0	2008-10-01	\N
517	626	1	20	74	899	955	1145	0	0	2017-08-21	\N
518	1068	2	20	74	899	955	1145	0	0	2014-05-22	\N
519	798	2	20	74	900	961	1162	0	0	2013-09-09	\N
528	1333	2	22	31	47	86	134	0	0	2023-05-29	\N
529	42	2	58	31	46	137	142	0	0	2021-01-01	\N
530	689	1	5	20	24	505	567	0	0	2016-05-02	\N
531	1018	1	24	21	54	299	303	0	0	2016-12-18	\N
533	1191	2	23	74	906	997	1263	0	0	2022-09-04	\N
535	167	1	5	22	60	454	457	0	0	2016-12-29	\N
539	75	6	26	31	48	151	157	0	0	2007-09-12	\N
549	91	2	40	31	48	152	173	0	0	2018-08-16	\N
550	773	2	60	31	49	180	198	0	0	2022-04-21	\N
551	1171	2	23	74	900	961	1162	0	0	2018-01-21	\N
552	1015	1	13	21	55	312	318	0	0	2018-01-18	\N
553	728	1	5	21	57	343	349	0	0	2019-12-31	\N
554	846	1	5	21	57	343	349	0	0	2019-03-10	\N
555	85	2	46	33	70	582	591	0	0	2012-10-01	\N
556	26	6	49	33	70	582	591	0	0	2009-06-24	\N
557	782	6	49	33	70	582	591	0	0	2013-03-06	\N
558	911	6	29	33	71	612	627	0	0	2021-04-15	\N
559	1214	6	29	33	71	612	627	0	0	2022-01-01	\N
560	102	2	29	33	71	612	627	0	0	2017-12-07	\N
561	1064	2	19	33	71	612	627	0	0	2015-10-20	\N
562	762	6	29	74	904	987	1239	0	0	2018-03-14	\N
563	84	2	29	74	900	964	1174	0	0	2018-03-14	\N
567	843	1	13	21	54	299	303	0	0	2019-02-24	\N
568	1023	3	13	21	54	299	304	0	0	2023-01-01	\N
570	793	2	29	74	902	976	1208	0	0	2018-03-05	\N
571	754	6	29	74	903	982	1225	0	0	2018-02-18	\N
572	1057	1	22	31	1559	1627	1644	0	0	2018-02-13	\N
573	867	6	29	74	897	946	1122	0	0	2020-03-02	\N
574	758	1	5	21	55	312	318	0	0	2018-02-12	\N
575	1255	2	5	20	26	118	563	0	0	2023-03-21	\N
576	756	1	5	20	26	118	563	0	0	2018-02-12	\N
577	937	6	29	31	48	150	153	0	0	2021-08-01	\N
578	93	2	29	74	905	994	1258	0	0	2018-02-18	\N
579	805	6	29	74	905	994	1258	0	0	2018-02-18	\N
580	753	6	29	74	904	988	1242	0	0	2018-02-18	\N
582	614	1	38	21	54	299	304	0	0	2014-03-06	\N
585	271	1	4	31	47	87	130	0	0	2020-10-06	\N
587	1172	2	22	91	782	818	845	0	0	2023-05-16	\N
588	964	1	22	91	782	818	845	0	0	2020-11-03	\N
615	687	1	4	74	902	973	1195	0	0	2020-01-22	\N
622	912	1	14	65	98	529	533	0	0	2021-03-30	\N
635	831	1	5	22	61	465	470	0	0	2018-12-16	\N
636	557	1	4	74	906	998	1269	0	0	2019-06-16	\N
661	1249	2	12	34	79	363	398	0	0	2023-03-12	\N
662	1285	2	13	20	25	504	561	0	0	2023-04-12	\N
666	1158	2	54	74	902	974	1198	0	0	2018-09-20	\N
667	962	1	5	21	55	312	317	0	0	2019-02-20	\N
668	978	1	61	31	48	151	158	0	0	2019-02-12	\N
669	960	1	5	21	56	331	339	0	0	2019-02-12	\N
670	844	1	13	20	26	118	563	0	0	2019-02-20	\N
686	1106	6	20	74	900	961	1162	0	0	2022-03-01	\N
694	1060	1	23	1969	1975	1979	1984	0	0	2023-01-01	\N
695	1267	2	42	1969	1975	1980	1987	0	0	2023-01-01	\N
696	959	1	42	1969	1975	1980	1987	0	0	2023-01-01	\N
697	1246	2	42	1969	1975	1980	1987	0	0	2023-01-01	\N
\.


--
-- TOC entry 3923 (class 0 OID 49236)
-- Dependencies: 252
-- Data for Name: employee_os; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.employee_os (id, employee_id, os_id, role_id, is_delegate, start_date, end_date, job_id) FROM stdin;
1	1	1	1	f	2020-01-01	\N	1
2	787	34	2	f	2000-01-01	\N	1
3	788	34	2	f	2000-01-01	\N	1
4	83	32	2	f	2000-01-01	\N	1
5	819	33	2	f	2000-01-01	\N	1
6	887	65	2	f	2000-01-01	\N	1
7	278	742	2	f	2000-01-01	\N	1
8	592	13	2	f	2000-01-01	\N	1
9	941	13	2	f	2000-01-01	\N	1
10	110	14	2	f	2000-01-01	\N	1
11	142	14	2	f	2000-01-01	\N	1
12	43	22	2	f	2000-01-01	\N	1
13	977	742	2	f	2000-01-01	\N	1
14	790	742	2	f	2000-01-01	\N	1
15	9	742	2	f	2000-01-01	\N	1
16	1058	742	2	f	2000-01-01	\N	1
17	692	18	2	f	2000-01-01	\N	1
18	306	21	2	f	2000-01-01	\N	1
19	8	64	2	f	2000-01-01	\N	1
20	849	742	2	f	2000-01-01	\N	1
21	847	742	2	f	2000-01-01	\N	1
22	244	12	2	f	2000-01-01	\N	1
23	850	12	2	f	2000-01-01	\N	1
24	121	21	2	f	2000-01-01	\N	1
25	1056	19	2	f	2000-01-01	\N	1
26	95	33	2	f	2000-01-01	\N	1
27	928	33	2	f	2000-01-01	\N	1
28	649	32	2	f	2000-01-01	\N	1
29	1283	20	2	f	2000-01-01	\N	1
30	1272	20	2	f	2000-01-01	\N	1
31	976	742	2	f	2000-01-01	\N	1
32	826	1757	2	f	2000-01-01	\N	1
33	950	33	2	f	2000-01-01	\N	1
34	789	65	2	f	2000-01-01	\N	1
35	1280	20	2	f	2000-01-01	\N	1
36	1315	20	2	f	2000-01-01	\N	1
37	1310	20	2	f	2000-01-01	\N	1
38	1151	21	2	f	2000-01-01	\N	1
39	1205	21	2	f	2000-01-01	\N	1
40	1204	21	2	f	2000-01-01	\N	1
41	1304	65	2	f	2000-01-01	\N	1
42	1313	65	2	f	2000-01-01	\N	1
43	833	65	2	f	2000-01-01	\N	1
44	1317	65	2	f	2000-01-01	\N	1
45	1331	65	2	f	2000-01-01	\N	1
46	866	65	2	f	2000-01-01	\N	1
47	1287	22	2	f	2000-01-01	\N	1
48	1303	22	2	f	2000-01-01	\N	1
49	1292	22	2	f	2000-01-01	\N	1
50	1289	22	2	f	2000-01-01	\N	1
51	1240	22	2	f	2000-01-01	\N	1
52	1323	22	2	f	2000-01-01	\N	1
53	1321	22	2	f	2000-01-01	\N	1
54	1318	22	2	f	2000-01-01	\N	1
55	1316	22	2	f	2000-01-01	\N	1
56	1008	22	2	f	2000-01-01	\N	1
57	1295	15	2	f	2000-01-01	\N	1
58	671	742	2	f	2000-01-01	\N	1
59	980	21	2	f	2000-01-01	\N	1
60	1208	21	2	f	2000-01-01	\N	1
61	1206	21	2	f	2000-01-01	\N	1
62	1207	21	2	f	2000-01-01	\N	1
63	79	31	2	f	2000-01-01	\N	1
64	78	31	2	f	2000-01-01	\N	1
65	566	22	2	f	2000-01-01	\N	1
66	696	31	2	f	2000-01-01	\N	1
67	639	1777	2	f	2000-01-01	\N	1
68	394	1757	2	f	2000-01-01	\N	1
69	685	1757	2	f	2000-01-01	\N	1
70	600	33	2	f	2000-01-01	\N	1
71	193	15	2	f	2000-01-01	\N	1
72	188	65	2	f	2000-01-01	\N	1
73	722	33	2	f	2000-01-01	\N	1
74	593	64	2	f	2000-01-01	\N	1
75	1192	742	2	f	2000-01-01	\N	1
76	880	742	2	f	2000-01-01	\N	1
77	180	1757	2	f	2000-01-01	\N	1
78	913	1864	2	f	2000-01-01	\N	1
79	1269	64	2	f	2000-01-01	\N	1
80	1271	64	2	f	2000-01-01	\N	1
81	25	64	2	f	2000-01-01	\N	1
82	1257	64	2	f	2000-01-01	\N	1
83	1016	64	2	f	2000-01-01	\N	1
84	1299	64	2	f	2000-01-01	\N	1
85	1302	64	2	f	2000-01-01	\N	1
86	975	16	2	f	2000-01-01	\N	1
87	550	11	2	f	2000-01-01	\N	1
88	201	65	2	f	2000-01-01	\N	1
89	832	1969	2	f	2000-01-01	\N	1
90	858	54	2	f	2000-01-01	\N	1
91	177	55	2	f	2000-01-01	\N	1
92	659	56	2	f	2000-01-01	\N	1
93	210	57	2	f	2000-01-01	\N	1
94	228	79	2	f	2000-01-01	\N	1
95	608	82	2	f	2000-01-01	\N	1
96	119	83	2	f	2000-01-01	\N	1
97	250	84	2	f	2000-01-01	\N	1
98	109	59	2	f	2000-01-01	\N	1
99	723	60	2	f	2000-01-01	\N	1
100	190	61	2	f	2000-01-01	\N	1
101	609	62	2	f	2000-01-01	\N	1
102	636	63	2	f	2000-01-01	\N	1
103	681	23	2	f	2000-01-01	\N	1
104	589	99	2	f	2000-01-01	\N	1
105	342	101	2	f	2000-01-01	\N	1
106	567	73	2	f	2000-01-01	\N	1
107	132	76	2	f	2000-01-01	\N	1
108	663	777	2	f	2000-01-01	\N	1
109	655	778	2	f	2000-01-01	\N	1
110	233	779	2	f	2000-01-01	\N	1
111	224	780	2	f	2000-01-01	\N	1
112	552	781	2	f	2000-01-01	\N	1
113	16	782	2	f	2000-01-01	\N	1
114	562	783	2	f	2000-01-01	\N	1
115	226	784	2	f	2000-01-01	\N	1
116	150	785	2	f	2000-01-01	\N	1
117	108	786	2	f	2000-01-01	\N	1
118	152	787	2	f	2000-01-01	\N	1
119	249	759	2	f	2000-01-01	\N	1
120	604	751	2	f	2000-01-01	\N	1
121	657	897	2	f	2000-01-01	\N	1
122	582	897	2	f	2000-01-01	\N	1
123	682	898	2	f	2000-01-01	\N	1
124	571	899	2	f	2000-01-01	\N	1
125	560	900	2	f	2000-01-01	\N	1
126	630	900	2	f	2000-01-01	\N	1
127	621	901	2	f	2000-01-01	\N	1
128	236	903	2	f	2000-01-01	\N	1
129	115	904	2	f	2000-01-01	\N	1
130	145	905	2	f	2000-01-01	\N	1
131	183	906	2	f	2000-01-01	\N	1
132	1017	906	2	f	2000-01-01	\N	1
133	800	23	2	f	2000-01-01	\N	1
134	34	26	2	f	2000-01-01	\N	1
135	112	24	2	f	2000-01-01	\N	1
136	884	25	2	f	2000-01-01	\N	1
137	637	47	2	f	2000-01-01	\N	1
138	127	93	2	f	2000-01-01	\N	1
139	195	66	2	f	2000-01-01	\N	1
140	947	782	2	f	2000-01-01	\N	1
141	597	787	2	f	2000-01-01	\N	1
142	1051	750	2	f	2000-01-01	\N	1
143	817	896	2	f	2000-01-01	\N	1
144	88	897	2	f	2000-01-01	\N	1
145	777	899	2	f	2000-01-01	\N	1
146	1215	904	2	f	2000-01-01	\N	1
147	620	1559	2	f	2000-01-01	\N	1
148	650	67	2	f	2000-01-01	\N	1
149	1256	902	2	f	2000-01-01	\N	1
150	281	901	2	f	2000-01-01	\N	1
151	1268	17	2	f	2000-01-01	\N	1
152	1138	17	2	f	2000-01-01	\N	1
153	1311	17	2	f	2000-01-01	\N	1
154	1026	17	2	f	2000-01-01	\N	1
155	1290	27	2	f	2000-01-01	\N	1
156	1298	1976	2	f	2000-01-01	\N	1
157	1305	1976	2	f	2000-01-01	\N	1
158	1306	1975	2	f	2000-01-01	\N	1
159	1314	1975	2	f	2000-01-01	\N	1
160	709	71	2	f	2000-01-01	\N	1
161	1230	1641	2	f	2000-01-01	\N	1
162	584	1641	2	f	2000-01-01	\N	1
163	956	787	2	f	2000-01-01	\N	1
164	1033	46	2	f	2000-01-01	\N	1
165	755	96	2	f	2000-01-01	\N	1
166	1013	97	2	f	2000-01-01	\N	1
167	726	98	2	f	2000-01-01	\N	1
168	949	99	2	f	2000-01-01	\N	1
169	948	100	2	f	2000-01-01	\N	1
170	6	101	2	f	2000-01-01	\N	1
171	1320	98	2	f	2000-01-01	\N	1
172	1300	96	2	f	2000-01-01	\N	1
173	1247	100	2	f	2000-01-01	\N	1
174	22	97	2	f	2000-01-01	\N	1
175	51	97	2	f	2000-01-01	\N	1
176	1312	99	2	f	2000-01-01	\N	1
177	1237	777	2	f	2000-01-01	\N	1
178	168	1945	2	f	2000-01-01	\N	1
179	1014	71	2	f	2000-01-01	\N	1
180	1251	1977	2	f	2000-01-01	\N	1
181	1260	899	2	f	2000-01-01	\N	1
182	935	899	2	f	2000-01-01	\N	1
183	1288	48	2	f	2000-01-01	\N	1
184	1046	71	2	f	2000-01-01	\N	1
185	1029	897	2	f	2000-01-01	\N	1
186	998	897	2	f	2000-01-01	\N	1
187	931	897	2	f	2000-01-01	\N	1
188	1003	898	2	f	2000-01-01	\N	1
189	932	902	2	f	2000-01-01	\N	1
190	1261	903	2	f	2000-01-01	\N	1
191	922	903	2	f	2000-01-01	\N	1
192	1091	904	2	f	2000-01-01	\N	1
193	1265	906	2	f	2000-01-01	\N	1
194	1024	897	2	f	2000-01-01	\N	1
195	1030	897	2	f	2000-01-01	\N	1
196	653	783	2	f	2000-01-01	\N	1
197	906	896	2	f	2000-01-01	\N	1
198	1234	896	2	f	2000-01-01	\N	1
199	815	905	2	f	2000-01-01	\N	1
200	984	906	2	f	2000-01-01	\N	1
201	1175	906	2	f	2000-01-01	\N	1
202	575	906	2	f	2000-01-01	\N	1
203	27	906	2	f	2000-01-01	\N	1
204	635	900	2	f	2000-01-01	\N	1
205	185	1607	2	f	2000-01-01	\N	1
206	729	747	2	f	2000-01-01	\N	1
207	556	28	2	f	2000-01-01	\N	1
208	179	904	2	f	2000-01-01	\N	1
209	716	755	2	f	2000-01-01	\N	1
210	939	1607	2	f	2000-01-01	\N	1
211	7	2037	2	f	2000-01-01	\N	1
212	237	2036	2	f	2000-01-01	\N	1
213	36	787	2	f	2000-01-01	\N	1
214	1157	2036	2	f	2000-01-01	\N	1
215	1264	2038	2	f	2000-01-01	\N	1
216	795	2038	2	f	2000-01-01	\N	1
217	797	778	2	f	2000-01-01	\N	1
218	718	778	2	f	2000-01-01	\N	1
219	647	750	2	f	2000-01-01	\N	1
220	1055	758	2	f	2000-01-01	\N	1
221	1111	17	2	f	2000-01-01	\N	1
222	1301	98	2	f	2000-01-01	\N	1
223	1035	778	2	f	2000-01-01	\N	1
224	740	900	2	f	2000-01-01	\N	1
225	234	750	2	f	2000-01-01	\N	1
226	138	901	2	f	2000-01-01	\N	1
227	957	781	2	f	2000-01-01	\N	1
228	174	1958	2	f	2000-01-01	\N	1
229	1009	1889	2	f	2000-01-01	\N	1
230	878	1975	2	f	2000-01-01	\N	1
231	1239	1977	2	f	2000-01-01	\N	1
232	1050	49	2	f	2000-01-01	\N	1
233	1103	48	2	f	2000-01-01	\N	1
234	5	72	2	f	2000-01-01	\N	1
235	1187	72	2	f	2000-01-01	\N	1
236	1168	899	2	f	2000-01-01	\N	1
237	1038	899	2	f	2000-01-01	\N	1
238	1041	899	2	f	2000-01-01	\N	1
239	936	899	2	f	2000-01-01	\N	1
240	1110	897	2	f	2000-01-01	\N	1
241	1296	897	2	f	2000-01-01	\N	1
242	1297	47	2	f	2000-01-01	\N	1
243	135	1976	2	f	2000-01-01	\N	1
244	186	1976	2	f	2000-01-01	\N	1
245	651	1977	2	f	2000-01-01	\N	1
246	825	72	2	f	2000-01-01	\N	1
247	644	2064	2	f	2000-01-01	\N	1
248	1332	901	2	f	2000-01-01	\N	1
249	146	342	2	f	2000-01-01	\N	1
250	675	455	2	f	2000-01-01	\N	1
251	700	584	2	f	2000-01-01	\N	1
252	615	587	2	f	2000-01-01	\N	1
253	559	611	2	f	2000-01-01	\N	1
254	197	648	2	f	2000-01-01	\N	1
255	706	168	2	f	2000-01-01	\N	1
256	855	888	2	f	2000-01-01	\N	1
257	591	763	2	f	2000-01-01	\N	1
258	1105	938	2	f	2000-01-01	\N	1
259	162	938	2	f	2000-01-01	\N	1
260	131	931	2	f	2000-01-01	\N	1
261	549	932	2	f	2000-01-01	\N	1
262	686	942	2	f	2000-01-01	\N	1
263	194	946	2	f	2000-01-01	\N	1
264	554	957	2	f	2000-01-01	\N	1
265	605	958	2	f	2000-01-01	\N	1
266	232	961	2	f	2000-01-01	\N	1
267	670	963	2	f	2000-01-01	\N	1
268	616	964	2	f	2000-01-01	\N	1
269	155	968	2	f	2000-01-01	\N	1
270	182	984	2	f	2000-01-01	\N	1
271	130	987	2	f	2000-01-01	\N	1
272	612	988	2	f	2000-01-01	\N	1
273	725	990	2	f	2000-01-01	\N	1
274	661	991	2	f	2000-01-01	\N	1
275	921	993	2	f	2000-01-01	\N	1
276	638	994	2	f	2000-01-01	\N	1
277	175	997	2	f	2000-01-01	\N	1
278	628	998	2	f	2000-01-01	\N	1
279	213	999	2	f	2000-01-01	\N	1
280	574	615	2	f	2000-01-01	\N	1
281	181	137	2	f	2000-01-01	\N	1
282	679	178	2	f	2000-01-01	\N	1
283	1080	615	2	f	2000-01-01	\N	1
284	742	615	2	f	2000-01-01	\N	1
285	720	615	2	f	2000-01-01	\N	1
286	1061	179	2	f	2000-01-01	\N	1
287	29	761	2	f	2000-01-01	\N	1
288	857	761	2	f	2000-01-01	\N	1
289	1020	1881	2	f	2000-01-01	\N	1
290	1326	1881	2	f	2000-01-01	\N	1
291	1324	1881	2	f	2000-01-01	\N	1
292	971	1881	2	f	2000-01-01	\N	1
293	1322	1881	2	f	2000-01-01	\N	1
294	966	1881	2	f	2000-01-01	\N	1
295	1328	1881	2	f	2000-01-01	\N	1
296	1327	1881	2	f	2000-01-01	\N	1
297	958	761	2	f	2000-01-01	\N	1
298	10	651	2	f	2000-01-01	\N	1
299	166	1881	2	f	2000-01-01	\N	1
300	515	163	2	f	2000-01-01	\N	1
301	1250	175	2	f	2000-01-01	\N	1
302	1059	763	2	f	2000-01-01	\N	1
303	245	956	2	f	2000-01-01	\N	1
304	1150	180	2	f	2000-01-01	\N	1
305	1282	111	2	f	2000-01-01	\N	1
306	965	121	2	f	2000-01-01	\N	1
307	1152	1982	2	f	2000-01-01	\N	1
308	1231	1982	2	f	2000-01-01	\N	1
309	607	2002	2	f	2000-01-01	\N	1
310	133	153	2	f	2000-01-01	\N	1
311	691	153	2	f	2000-01-01	\N	1
312	74	171	2	f	2000-01-01	\N	1
313	594	171	2	f	2000-01-01	\N	1
314	927	158	2	f	2000-01-01	\N	1
315	674	158	2	f	2000-01-01	\N	1
316	830	110	2	f	2000-01-01	\N	1
317	1185	1100	2	f	2000-01-01	\N	1
318	1086	1100	2	f	2000-01-01	\N	1
319	944	1111	2	f	2000-01-01	\N	1
320	925	1111	2	f	2000-01-01	\N	1
321	239	1111	2	f	2000-01-01	\N	1
322	1094	1111	2	f	2000-01-01	\N	1
323	924	1111	2	f	2000-01-01	\N	1
324	1233	1111	2	f	2000-01-01	\N	1
325	667	1115	2	f	2000-01-01	\N	1
326	619	1117	2	f	2000-01-01	\N	1
327	217	1120	2	f	2000-01-01	\N	1
328	660	1122	2	f	2000-01-01	\N	1
329	680	1117	2	f	2000-01-01	\N	1
330	945	1117	2	f	2000-01-01	\N	1
331	1095	1117	2	f	2000-01-01	\N	1
332	1210	1117	2	f	2000-01-01	\N	1
333	883	1117	2	f	2000-01-01	\N	1
334	80	1117	2	f	2000-01-01	\N	1
335	1188	1151	2	f	2000-01-01	\N	1
336	227	1151	2	f	2000-01-01	\N	1
337	178	1151	2	f	2000-01-01	\N	1
338	143	1168	2	f	2000-01-01	\N	1
339	596	1168	2	f	2000-01-01	\N	1
340	44	1168	2	f	2000-01-01	\N	1
341	214	1168	2	f	2000-01-01	\N	1
342	125	1164	2	f	2000-01-01	\N	1
343	627	1166	2	f	2000-01-01	\N	1
344	122	1162	2	f	2000-01-01	\N	1
345	206	1170	2	f	2000-01-01	\N	1
346	1281	1179	2	f	2000-01-01	\N	1
347	899	1179	2	f	2000-01-01	\N	1
348	113	1185	2	f	2000-01-01	\N	1
349	1330	1185	2	f	2000-01-01	\N	1
350	994	1202	2	f	2000-01-01	\N	1
351	1329	1202	2	f	2000-01-01	\N	1
352	576	1202	2	f	2000-01-01	\N	1
353	1211	1213	2	f	2000-01-01	\N	1
354	997	1213	2	f	2000-01-01	\N	1
355	50	1213	2	f	2000-01-01	\N	1
356	909	1213	2	f	2000-01-01	\N	1
357	229	1219	2	f	2000-01-01	\N	1
358	710	1229	2	f	2000-01-01	\N	1
359	877	1230	2	f	2000-01-01	\N	1
360	1228	1230	2	f	2000-01-01	\N	1
361	148	1230	2	f	2000-01-01	\N	1
362	895	1230	2	f	2000-01-01	\N	1
363	242	1236	2	f	2000-01-01	\N	1
364	187	1236	2	f	2000-01-01	\N	1
365	577	1236	2	f	2000-01-01	\N	1
366	668	1236	2	f	2000-01-01	\N	1
367	711	1234	2	f	2000-01-01	\N	1
368	35	1253	2	f	2000-01-01	\N	1
369	176	1253	2	f	2000-01-01	\N	1
370	983	1264	2	f	2000-01-01	\N	1
371	1263	1264	2	f	2000-01-01	\N	1
372	153	1264	2	f	2000-01-01	\N	1
373	48	1264	2	f	2000-01-01	\N	1
374	172	1270	2	f	2000-01-01	\N	1
375	646	1270	2	f	2000-01-01	\N	1
376	203	1266	2	f	2000-01-01	\N	1
377	165	1270	2	f	2000-01-01	\N	1
378	551	623	2	f	2000-01-01	\N	1
379	33	623	2	f	2000-01-01	\N	1
380	99	153	2	f	2000-01-01	\N	1
381	204	623	2	f	2000-01-01	\N	1
382	1012	569	2	f	2000-01-01	\N	1
383	86	153	2	f	2000-01-01	\N	1
384	101	153	2	f	2000-01-01	\N	1
385	82	142	2	f	2000-01-01	\N	1
386	871	1094	2	f	2000-01-01	\N	1
387	1236	1094	2	f	2000-01-01	\N	1
388	1170	1117	2	f	2000-01-01	\N	1
389	809	1117	2	f	2000-01-01	\N	1
390	999	1117	2	f	2000-01-01	\N	1
391	903	1117	2	f	2000-01-01	\N	1
392	803	1117	2	f	2000-01-01	\N	1
393	1078	1117	2	f	2000-01-01	\N	1
394	796	1117	2	f	2000-01-01	\N	1
395	1076	1117	2	f	2000-01-01	\N	1
396	1075	1117	2	f	2000-01-01	\N	1
397	1252	144	2	f	2000-01-01	\N	1
398	1049	1151	2	f	2000-01-01	\N	1
399	1200	1151	2	f	2000-01-01	\N	1
400	1153	1151	2	f	2000-01-01	\N	1
401	1072	1151	2	f	2000-01-01	\N	1
402	1101	1168	2	f	2000-01-01	\N	1
403	1082	1168	2	f	2000-01-01	\N	1
404	1181	1168	2	f	2000-01-01	\N	1
405	1132	623	2	f	2000-01-01	\N	1
406	1097	623	2	f	2000-01-01	\N	1
407	1141	623	2	f	2000-01-01	\N	1
408	870	1185	2	f	2000-01-01	\N	1
409	1099	1185	2	f	2000-01-01	\N	1
410	1155	1185	2	f	2000-01-01	\N	1
411	1182	1185	2	f	2000-01-01	\N	1
412	66	1185	2	f	2000-01-01	\N	1
413	64	1185	2	f	2000-01-01	\N	1
414	1063	1185	2	f	2000-01-01	\N	1
415	1262	1213	2	f	2000-01-01	\N	1
416	1089	1213	2	f	2000-01-01	\N	1
417	1079	1219	2	f	2000-01-01	\N	1
418	765	1230	2	f	2000-01-01	\N	1
419	1177	1236	2	f	2000-01-01	\N	1
420	1189	1236	2	f	2000-01-01	\N	1
421	1142	482	2	f	2000-01-01	\N	1
422	1248	416	2	f	2000-01-01	\N	1
423	842	416	2	f	2000-01-01	\N	1
424	901	158	2	f	2000-01-01	\N	1
425	845	288	2	f	2000-01-01	\N	1
426	1007	457	2	f	2000-01-01	\N	1
427	1096	457	2	f	2000-01-01	\N	1
428	1232	1181	2	f	2000-01-01	\N	1
429	747	132	2	f	2000-01-01	\N	1
430	938	132	2	f	2000-01-01	\N	1
431	1032	153	2	f	2000-01-01	\N	1
432	94	449	2	f	2000-01-01	\N	1
433	45	1147	2	f	2000-01-01	\N	1
434	1270	709	2	f	2000-01-01	\N	1
435	1259	1178	2	f	2000-01-01	\N	1
436	1291	478	2	f	2000-01-01	\N	1
437	890	478	2	f	2000-01-01	\N	1
438	816	640	2	f	2000-01-01	\N	1
439	961	303	2	f	2000-01-01	\N	1
440	888	158	2	f	2000-01-01	\N	1
441	896	802	2	f	2000-01-01	\N	1
442	897	1193	2	f	2000-01-01	\N	1
443	898	606	2	f	2000-01-01	\N	1
444	1325	1128	2	f	2000-01-01	\N	1
445	1045	1128	2	f	2000-01-01	\N	1
446	952	1185	2	f	2000-01-01	\N	1
447	1160	1253	2	f	2000-01-01	\N	1
448	886	1247	2	f	2000-01-01	\N	1
449	1286	1247	2	f	2000-01-01	\N	1
450	699	1247	2	f	2000-01-01	\N	1
451	1067	1247	2	f	2000-01-01	\N	1
452	164	1270	2	f	2000-01-01	\N	1
453	601	1270	2	f	2000-01-01	\N	1
454	588	1270	2	f	2000-01-01	\N	1
455	1083	1270	2	f	2000-01-01	\N	1
456	626	1145	2	f	2000-01-01	\N	1
457	1068	1145	2	f	2000-01-01	\N	1
458	798	1162	2	f	2000-01-01	\N	1
459	1333	134	2	f	2000-01-01	\N	1
460	42	142	2	f	2000-01-01	\N	1
461	689	567	2	f	2000-01-01	\N	1
462	1018	303	2	f	2000-01-01	\N	1
463	1191	1263	2	f	2000-01-01	\N	1
464	167	457	2	f	2000-01-01	\N	1
465	75	157	2	f	2000-01-01	\N	1
466	91	173	2	f	2000-01-01	\N	1
467	773	198	2	f	2000-01-01	\N	1
468	1171	1162	2	f	2000-01-01	\N	1
469	1015	318	2	f	2000-01-01	\N	1
470	728	349	2	f	2000-01-01	\N	1
471	846	349	2	f	2000-01-01	\N	1
472	85	591	2	f	2000-01-01	\N	1
473	26	591	2	f	2000-01-01	\N	1
474	782	591	2	f	2000-01-01	\N	1
475	911	627	2	f	2000-01-01	\N	1
476	1214	627	2	f	2000-01-01	\N	1
477	102	627	2	f	2000-01-01	\N	1
478	1064	627	2	f	2000-01-01	\N	1
479	762	1239	2	f	2000-01-01	\N	1
480	84	1174	2	f	2000-01-01	\N	1
481	843	303	2	f	2000-01-01	\N	1
482	1023	304	2	f	2000-01-01	\N	1
483	793	1208	2	f	2000-01-01	\N	1
484	754	1225	2	f	2000-01-01	\N	1
485	1057	1644	2	f	2000-01-01	\N	1
486	867	1122	2	f	2000-01-01	\N	1
487	758	318	2	f	2000-01-01	\N	1
488	1255	563	2	f	2000-01-01	\N	1
489	756	563	2	f	2000-01-01	\N	1
490	937	153	2	f	2000-01-01	\N	1
491	93	1258	2	f	2000-01-01	\N	1
492	805	1258	2	f	2000-01-01	\N	1
493	753	1242	2	f	2000-01-01	\N	1
494	614	304	2	f	2000-01-01	\N	1
495	271	130	2	f	2000-01-01	\N	1
496	1172	845	2	f	2000-01-01	\N	1
497	964	845	2	f	2000-01-01	\N	1
498	687	1195	2	f	2000-01-01	\N	1
499	912	533	2	f	2000-01-01	\N	1
500	831	470	2	f	2000-01-01	\N	1
501	557	1269	2	f	2000-01-01	\N	1
502	1249	398	2	f	2000-01-01	\N	1
503	1285	561	2	f	2000-01-01	\N	1
504	1158	1198	2	f	2000-01-01	\N	1
505	962	317	2	f	2000-01-01	\N	1
506	978	158	2	f	2000-01-01	\N	1
507	960	339	2	f	2000-01-01	\N	1
508	844	563	2	f	2000-01-01	\N	1
509	1106	1162	2	f	2000-01-01	\N	1
510	1060	1984	2	f	2000-01-01	\N	1
511	1267	1987	2	f	2000-01-01	\N	1
512	959	1987	2	f	2000-01-01	\N	1
513	1246	1987	2	f	2000-01-01	\N	1
\.


--
-- TOC entry 3936 (class 0 OID 49375)
-- Dependencies: 265
-- Data for Name: job_assigment; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.job_assigment (id, employee_id, title, mission_type, mission_supject, mission_country, mission_city, hosted_type, mission_start_date, mission_end_date, last_date, mission_funded, mission_status, short_description, note, create_user, create_date, approve_user, approve_date) FROM stdin;
\.


--
-- TOC entry 3940 (class 0 OID 49413)
-- Dependencies: 269
-- Data for Name: job_assigment_dep; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.job_assigment_dep (id, job_assigment_id, dep_id, emp_count, create_user, create_date, approve_user, approve_date) FROM stdin;
\.


--
-- TOC entry 3942 (class 0 OID 49423)
-- Dependencies: 271
-- Data for Name: job_assigment_emp; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.job_assigment_emp (id, job_assigment_id, employee_id, dep_id, approval, approve_user, approve_date) FROM stdin;
\.


--
-- TOC entry 3931 (class 0 OID 49322)
-- Dependencies: 260
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.jobs (id, job_title, job_title_e, job_desc, org_job, is_sup) FROM stdin;
1	مدير عام	\N	\N	91	f
2	مدير	\N	\N	92	f
3	رئيس قسم	\N	\N	93	f
4	رئيس شعبة	\N	\N	94	f
5	مبرمج	\N	\N	95	f
6	مساعد رئيس شعبة	\N	\N	96	f
7	نائب مدير عام	\N	\N	97	f
8	رئيس	\N	\N	98	f
9	مستشار للوزير	\N	\N	99	f
10	مدير مكتب	\N	\N	910	f
11	مهندس	\N	\N	911	f
12	مهندس اتصالات	\N	\N	912	f
13	مهندس حاسوب	\N	\N	913	f
14	مهندس كهرباء	\N	\N	914	f
15	مبرمج جامعي	\N	\N	915	f
16	مدير بريد فئة أ	\N	\N	916	f
17	مدير بريد فئة ب	\N	\N	917	f
18	مدير بريد فئة ج	\N	\N	918	f
19	موزع بريد	\N	\N	919	f
20	مسؤول شباك بريد	\N	\N	920	f
21	مساعد اداري	\N	\N	921	f
22	موظف اداري	\N	\N	922	f
23	محاسب	\N	\N	923	f
24	موظف حاسوب	\N	\N	924	f
25	موظف فرز	\N	\N	925	f
26	موظف صيانه	\N	\N	926	f
27	مامور تسهيلات	\N	\N	927	f
28	اداري	\N	\N	928	f
29	سائق	\N	\N	929	f
30	سائق ومرافق	\N	\N	930	f
31	مساعد قانوني	\N	\N	931	f
32	مستشار قانوني مساعد	\N	\N	932	f
33	مراسل	\N	\N	933	f
34	سكرتاريا	\N	\N	934	f
35	كاتب	\N	\N	935	f
36	مدخل بيانات	\N	\N	936	f
37	امين مستودع	\N	\N	937	f
38	باحث ميداني	\N	\N	938	f
39	موظف اعلام	\N	\N	939	f
40	موظف استعلامات	\N	\N	940	f
41	موظف مواصفات	\N	\N	941	f
42	موظف مالي	\N	\N	942	f
43	موظف تسويق	\N	\N	943	f
44	مهندس الكتروني واتصالات	\N	\N	944	f
45	مراقب	\N	\N	945	f
46	مهني أ	\N	\N	946	f
47	بدون	\N	\N	947	f
48	ق.أ مدير عام	\N	\N	948	f
49	عامل تنظيفات	\N	\N	949	f
50	 مدير	\N	\N	950	f
51	نائب مدير	\N	\N	951	f
52	ق.أ رئيس	\N	\N	952	f
53	ق.أ وكيل الوزارة	\N	\N	953	f
54	مأمور فرز	\N	\N	954	f
55	خبير بريدي	\N	\N	955	f
56	خبير اتصالات	\N	\N	956	f
57	خبير IT	\N	\N	957	f
58	موظف ارشيف	\N	\N	958	f
59	موظف خدمات إدارية	\N	\N	959	f
60	عامل	\N	\N	960	f
61	مهندس ميكاترونكس	\N	\N	961	f
62	موظف علاقات عامة	\N	\N	962	f
63	ق. أ. الوكيل	\N	\N	963	f
64	ق.ا مدير	\N	\N	964	f
65	ق.ا نائب	\N	\N	965	f
66	مستشار الوزير لشؤون الاتصالات	\N	\N	966	f
67	مشرف	\N	\N	967	f
68	ق.أ وحدة النوع الاجتماعي	\N	\N	968	f
69	وزير	\N	\N	9100	f
70	مستشار قانوني	\N	\N	9101	f
71	نائب رئيس	\N	\N	9102	f
72	فني تكييف وتبريد	\N	\N	9103	f
73	فني صيانة	\N	\N	9104	f
74	موظف استقبال	\N	\N	9105	f
75	مترجم	\N	\N	9106	f
76	رئيس وحدة البنك الدولي	\N	\N	9107	f
77	باحث اقتصادي	\N	\N	9108	f
78	باحث قانوني	\N	\N	9109	f
79	ق. أ. نائب مدير عام	\N	\N	9110	f
80	فني كمال اجسام	\N	\N	9111	f
81	وكيل	\N	\N	101	f
82	مدير عام	\N	\N	102	f
83	نائب مدير عام	\N	\N	103	f
84	مدير دائرة	\N	\N	104	f
85	نائب مدير	\N	\N	105	f
86	رئيس قسم	\N	\N	106	f
87	مساعد رئيس قسم	\N	\N	107	f
88	رئيس شعبة	\N	\N	108	f
89	مساعد رئيس شعبة	\N	\N	109	f
90	مبرمج	\N	\N	1010	f
91	رئيس وحدة	\N	\N	1011	f
92	مستشار الوزير	\N	\N	1012	f
93	مدير مكتب	\N	\N	1013	f
94	مدير	\N	\N	1014	f
95	ق.أ الادارة العامة	\N	\N	1015	f
96	موظف اداري	\N	\N	1016	f
97	بدون	\N	\N	1017	f
98	مهندس حاسوب	\N	\N	1018	f
99	مدير مكتب بريد فرعي (أ), نائب مدير	\N	\N	1019	f
100	مدير مكتب بريد فرعي (ب), رئيس قسم	\N	\N	1020	f
101	مدير مكتب بريد فرعي(ج), رئيس شعبة	\N	\N	1021	f
102	مساعد اداري	\N	\N	1022	f
103	سائق	\N	\N	1023	f
104	مراسل	\N	\N	1024	f
105	عامل نظافة	\N	\N	1025	f
106	وزير	\N	\N	10100	f
107	ق.أ الادارة العامة للحكومة الالكترونية	\N	لغايات العمل على المذكرات الداخلية	10106	f
108	ق.أ الادارة العامة للحاسوب الحكومي	\N	لغايات العمل على المذكرات الداخلية	10107	f
109	ق.أ الادارة العامة للبريد	\N	لغايات العمل على المذكرات الداخلية	10108	f
110	ق.أ نائب الادارة العامة للتراخيص	\N	لغايات العمل على المذكرات الداخلية	10109	f
\.


--
-- TOC entry 3911 (class 0 OID 49132)
-- Dependencies: 240
-- Data for Name: leave; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.leave (id, employee_id, leave_type, leave_dir, leave_date, leave_start, leave_end, leave_minit, need_car, leave_not, leave_status, created_by, created_at, updated_by, updated_at, approve_user, approve_date) FROM stdin;
\.


--
-- TOC entry 3946 (class 0 OID 49448)
-- Dependencies: 275
-- Data for Name: memo; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.memo (memo_id, title, content, memo_status, memo_type, sender_os_id, sender_id, employee_os_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3948 (class 0 OID 49464)
-- Dependencies: 277
-- Data for Name: memo_attachment; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.memo_attachment (memo_attachment_id, memo_id, file_name, file_type, file_size, file_data, created_at) FROM stdin;
\.


--
-- TOC entry 3950 (class 0 OID 49478)
-- Dependencies: 279
-- Data for Name: memo_comments; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.memo_comments (comment_id, memo_id, comment_text, sender_id, sender_os_id, employee_os_id, created_at) FROM stdin;
\.


--
-- TOC entry 3952 (class 0 OID 49491)
-- Dependencies: 281
-- Data for Name: memo_recipient; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.memo_recipient (memo_recipient_id, memo_id, sender_os_id, sender_id, recipient_os_id, recipient_id, memo_recipient_status, created_at) FROM stdin;
\.


--
-- TOC entry 3927 (class 0 OID 49275)
-- Dependencies: 256
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.menu_items (id, menu_id, permission_id, title, icon_class, color, parent_id, order_no, parameters, url) FROM stdin;
1	1	107	أدوات المطورين	bi bi-tools	#000000	1	1	\N	/menus
2	1	107	بناء القوائم	bi bi-hammer	#000000	1	1	\N	/menus
3	1	88	الأدوار	bi bi-gear-wide-connected	#000000	1	1	\N	/roles
4	1	84	الصلاحيات	bi bi-wrench-adjustable-circle	#000000	1	1	\N	/permissions
6	2	62	ساعات الدوام	bi bi-clock-fill ps-2	#9f1e1e	0	2	\N	/attendance/devices
7	2	103	الحضور والانصراف	bi bi-clock-fill ps-2	#9f1e1e	0	2	\N	/duration/attendance
8	2	120	اتفاقيات الدوام	bi bi-clipboard2-fill ps-2	#000000	0	3	\N	/attendance_agreements/agreement_list
9	2	93	الموظفين	bi bi-people-fill ps-2	#6b2424	0	4	\N	\N
10	2	93	قائمة	bi bi-people ps-2	#35750b	9	1	\N	/employee/all
11	2	94	اضافة موظف	bi bi-person-fill-add ps-2	#8c2121	9	2	\N	/employee/add
12	2	97	تكليف	bi bi-stars ps-2	#02d92d	9	3	\N	/employee/assigne_position/0
13	2	80	الهيكلية	bi bi-diagram-3-fill ps-2	#911818	0	5	\N	\N
14	2	80	عرض	bi bi-display-fill	#000000	13	1	\N	/os/view
15	4	61	اعدادات الاجازات	bi bi-airplane-fill	#000000	0	1	\N	/setting/vacationList
16	2	76	سجلات الوصول الرسمي	bi bi-person-rolodex	#000000	0	6	\N	/official_reach/gov_email
17	2	76	سجل البريد الالكتروني	bi bi-clipboard2-fill ps-2	#000000	16	1	\N	/official_reach/gov_email
18	2	77	سجل الأرقام الخليوية	bi bi-clipboard2-fill ps-2	#000000	16	2	\N	/official_reach/gov_mobile
19	2	78	سجل الأرقام الداخلية	bi bi-clipboard2-fill ps-2	#000000	16	3	\N	/official_reach/gov_tel
22	3	118	اجازات	bi bi-door-open-fill ps-2	#000000	0	2	\N	\N
23	3	115	ارصدة	bi bi-door-open-fill ps-2	#000000	22	1	\N	/vacation/listEmpVacBalance
24	3	116	طلب اجازة	bi bi-door-open-fill ps-2	#000000	22	2	\N	/vacation/addEmpVacation
25	3	118	قائمة الاجازات	bi bi-door-open-fill ps-2	#000000	22	3	\N	/vacation/listEmpVacation
26	3	60	طلبات الموظفين	bi bi-door-open-fill ps-2	#000000	22	4	\N	/vacation/listManTOEmp
27	3	98	مغادرات	bi bi-door-open-fill ps-2	#000000	0	3	\N	\N
28	3	98	 قائمة المغادرات	bi bi-door-open-fill ps-2	#000000	27	1	\N	/leave/list
29	3	99	طلب مغادرة	bi bi-door-open-fill ps-2	#000000	27	2	\N	/leave/add
30	3	100	طلبات الموظفين	bi bi-door-open-fill ps-2	#000000	27	3	\N	/leave/addemp
31	2	1	ترصيد الاجازات	bi bi-door-open-fill ps-2	#000000	0	1	\N	/vacations_crediting/add
32	3	1	مهمات العمل	bi bi-door-open-fill ps-2	#000000	0	1	\N	\N
33	3	1	 مهمات العمل الداخليه	bi bi-door-open-fill ps-2	#000000	32	1	\N	/job_assignment/add
34	3	1	مهمات العمل الخارجيه	bi bi-door-open-fill ps-2	#000000	32	2	\N	/job_assignment/addout
35	3	1	جميع المهمات	bi bi-door-open-fill ps-2	#000000	32	3	\N	/job_assignment/list
\.


--
-- TOC entry 3925 (class 0 OID 49264)
-- Dependencies: 254
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.menus (id, menu_name, description) FROM stdin;
1	devTools	قائمة تحتوي على جميع الادوات الخاصة بالمبرمجين
2	شؤون الموظفين	قائمة تحتوي على جميع الادوات الخاصة بالشؤون الادارية للموظفين
3	بورتل الموظف	قائمة تحتوي على جميع الادوات اللازمة للموظف
4	الاعدادات والقوائم الثابتة	قائمة تحتوي على اعدادات النظام والقوائم الثابتة
5	تقارير	قائمة تحتوي على التقارير والخلاصات والتحليلات
\.


--
-- TOC entry 3892 (class 0 OID 48919)
-- Dependencies: 221
-- Data for Name: os; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.os (id, parent_id, node_level, dept_type, name, status) FROM stdin;
1	0	1	1	وزارة الاتصالات وتكنولوجيا المعلومات	t
285	53	5	8	قسم ادارة المشاريع	t
286	53	5	8	قسم التنسيق والمتابعة	t
288	284	6	10	شعبة السياسات	t
289	284	6	10	شعبة الاستراتيجيات	t
291	285	6	10	شعبة المشاريع التطويرية	t
292	285	6	10	شعبة المشاريع الاستراتيجية	t
294	286	6	10	شعبة التنسيق	t
295	286	6	10	شعبة المتابعة	t
299	54	5	8	قسم المواصفات والمقاييس	t
300	54	5	8	قسم الرقابة والمتابعة	t
301	54	5	8	قسم البحث والتطوير	t
303	299	6	10	شعبة المواصفات	t
304	299	6	10	شعبة المقاييس	t
306	300	6	10	شعبة الرقابة	t
307	300	6	10	شعبة المتابعة	t
309	301	6	10	شعبة التطوير	t
310	301	6	10	شعبة البحث	t
312	55	5	8	قسم الدعم والاستشارة	t
313	55	5	8	قسم القوانين والتشريعات الالكترونية	t
314	55	5	8	قسم حماية الملكية الفكرية	t
315	55	5	8	قسم المسوح والاحصاء والتقييم	t
317	312	6	10	شعبة الدعم	t
318	312	6	10	شعبة الاستشارة	t
320	313	6	10	شعبة القوانين الالكترونية	t
321	313	6	10	شعبة المعاملات الالكترونية	t
323	314	6	10	شعبة قوانين الملكية الفكرية	t
324	314	6	10	شعبة براءة الاختراع والنشر الالكتروني	t
326	315	6	10	شعبة الاحصاء	t
327	315	6	10	شعبة التقييم	t
329	56	5	8	قسم الشراكات الاستراتيجية	t
330	56	5	8	قسم الحاضنات وصناعة البرمجيات	t
331	56	5	8	قسم مراكز التميز	t
333	329	6	10	شعبة العلاقات الدولية	t
334	329	6	10	شعبة العلاقات المؤسسية	t
336	330	6	10	شعبة الحاضنات	t
337	330	6	10	شعبة البرمجيات	t
339	331	6	10	شعبة التنسيق	t
340	331	6	10	شعبة الترويج	t
342	57	5	8	قسم التخطيط وتحليل النظم	t
343	57	5	8	قسم البرمجة وادارة قواعد البيانات	t
344	57	5	8	قسم التصميم	t
346	342	6	10	شعبة التخطيط	t
347	342	6	10	شعبة تحليل النظم	t
349	343	6	10	شعبة البرمجة	t
350	343	6	10	شعبة قواعد البيانات	t
352	344	6	10	شعبة الوسائط المتعددة	t
353	344	6	10	شعبة المونتاج	t
361	79	5	8	قسم الخدملات الراديوية المتنقلة	t
362	79	5	8	قسم GSM+ UMTS	t
363	79	5	8	قسم الخدمات الراديوية الثابتة	t
365	80	5	8	قسم البحث	t
366	80	5	8	قسم المراقبة	t
368	81	5	8	قسم الجدول الوطني	t
369	81	5	8	قسم السجل الوطني	t
373	82	5	8	 قسم التنسيق الوطني	t
374	82	5	8	قسم التنسيق الدولي	t
380	83	5	8	قسم الإرسال الاذاعي الأرضي	t
381	83	5	8	قسم الارسال الاذاعي الفضائي	t
383	84	5	8	قسم الارسال التلفزي الأرضي	t
384	84	5	8	قسم الارسال التلفزي الفضائي	t
386	85	5	8	قسم الخدمات اللاسلكية الارضية	t
387	85	5	8	قسم الخدمات اللاسلكية الهوائية	t
388	85	5	8	قسم نظم الأجهزة	t
389	85	5	8	قسم نظم الهوائيات	t
392	361	6	10	شعبة خدمات بحرية وجوية	t
393	361	6	10	شعبة خدمات ارضية وفضائية متنقلة	t
395	362	6	10	شعبة GSM	t
396	362	6	10	شعبة UMTS	t
398	363	6	10	شعبة خدمات ارضية ثابتة	t
399	363	6	10	شعبة خدمات فضائية ثابتة	t
401	365	6	10	شعبة التنفيذ	t
402	365	6	10	شعبة المراقبة المتنقلة	t
404	366	6	10	شعبة التفتيش	t
405	366	6	10	شعبة المراقبة الثابتة	t
407	368	6	10	شعبة قسم الجدول الوطني	t
410	369	6	10	شعبة قسم السجل الوطني	t
412	373	6	10	شعبة قسم التنسيق الوطني	t
414	374	6	10	شعبة قسم التنسيق الدولي	t
416	380	6	10	شعبة قسم الارسال الاذاعي الارضي	t
418	381	6	10	شعبة قسم الارسال الاذاعي الفضائي	t
420	383	6	10	شعبة قسم الارسال التلفزي الارضي	t
422	384	6	10	شعبة قسم الارسال التلفزي الفضائي	t
424	59	5	8	قسم تدريب الوسائط المتعددة	t
425	59	5	8	قسم تدريب انظمة التشغيل والشبكات	t
426	59	5	8	قسم تدريب البرمجة والتطوير	t
428	59	5	8	قسم التدريب التقني	t
430	424	6	10	شعبة التصميم والمونتاج	t
431	424	6	10	شعبة تصميم مواقع الانترنت	t
433	386	6	10	شعبة قسم الخدمات اللاسلكية الأرضية	t
435	425	6	10	شعبة الانظمة	t
436	425	6	10	شعبة الشبكات	t
438	387	6	10	شعبة قسم الخدمات اللاسلكية الهوائية	t
440	388	6	10	شعبة قسم نظم الأجهزة	t
442	389	6	10	شعبة قسم نظم الهوائيات	t
443	59	5	8	قسم التدريب المكتبي المحوسب	t
445	443	6	10	شعبة تطوير البرامج	t
446	443	6	10	شعبة المدربين	t
448	426	6	10	شعبة لغات البرمجة وقواعد البيانات	t
449	426	6	10	شعبة برمجة وتطوير صفحات الانترنت	t
451	428	6	10	شعبة الاتصالات الالكترونية	t
452	428	6	10	شعبة الحاسوب والدعم الفني	t
454	60	5	8	قسم الدعم الفني	t
455	60	5	8	قسم الشبكات	t
457	454	6	10	شعبة الوزارة	t
458	454	6	10	شعبة الحاسوب الحكومي	t
460	455	6	10	شعبة الوزارة	t
461	455	6	10	شعبة الحاسوب الحكومي	t
462	455	6	10	شعبة البريد	t
464	61	5	8	قسم الشبكات المحلية	t
465	61	5	8	قسم الشبكات الموسعة	t
466	61	5	8	قسم امن مراقبة الشبكات	t
468	464	6	10	شعبة	t
470	465	6	10	شعبة	t
472	466	6	10	شعبة	t
474	62	5	8	قسم ادارة انظمة التشغيل	t
475	62	5	8	قسم تطوير الانظمة	t
476	62	5	8	قسم امن انظمة التشغيل	t
478	474	6	10	شعبة	t
480	475	6	10	شعبة	t
482	476	6	10	شعبة	t
484	63	5	8	قسم الدعم الفني للمؤسسات	t
485	63	5	8	قسم المساندة الفنية	t
486	63	5	8	قسم خدمات المشتركين	t
487	63	5	8	قسم الاستشارات وتحديد الاحتياجات	t
489	484	6	10	شعبة	t
491	485	6	10	شعبة	t
493	486	6	10	شعبة خدمة المؤسسات	t
494	486	6	10	شعبة استقبال الشكاوي	t
495	486	6	10	شعبة جودة الخدمة	t
497	487	6	10	شعبة	t
503	25	5	8	قسم الابحاث المعلوماتية	t
504	25	5	8	قسم الدراسات الفنية	t
505	24	5	8	قسم الانظمة القياسية	t
506	24	5	8	قسم البرمجيات القياسية	t
507	28	5	8	قسم امن البنى التحتية	t
508	28	5	8	قسم امن الحدود	t
509	28	5	8	قسم مكافحة جرائم الانترنت	t
514	96	5	8	قسم الربط البيني	t
515	96	5	8	قسم الربط الدولي	t
517	514	6	10	شعبة قسم الربط البيني	t
519	515	6	10	شعبة قسم الربط الدولي	t
521	97	5	8	قسم الترقيم للهاتف الثابت	t
522	97	5	8	قسم الترقيم للهاتف الخلوي	t
524	521	6	10	شعبة قسم الترقيم للهاتف الثابت	t
526	522	6	10	شعبة قسم الترقيم للهاتف الخلوي	t
528	98	5	8	قسم التعرفة المطبقة	t
529	98	5	8	قسم التسعير للخدمات الجديدة	t
531	528	6	10	شعبة قسم التعرفة المطبقة	t
533	529	6	10	شعبة قسم التسعير للخدمات الجديدة	t
535	99	5	8	قسم المقاسم الحكومية	t
536	99	5	8	قسم صيانة المقاسم	t
538	535	6	10	شعبة قسم المقاسم الحكومية	t
540	536	6	10	شعبة قسم صيانة المقاسم	t
542	100	5	8	قسم النظم	t
543	100	5	8	قسم المقاييس	t
545	542	6	10	شعبة قسم النظم	t
547	543	6	10	شعبة قسم المقاييس	t
549	101	5	8	قسم مؤشرات الاتصالات	t
550	101	5	8	قسم جودة الخدمة	t
552	549	6	10	شعبة قسم مؤشرات الاتصال	t
554	550	6	10	شعبة قسم جودة الخدمة	t
555	111	6	10	شعبة  قسم التخطيط	t
556	113	6	10	شعبة  قسم الاستشارة	t
557	112	6	10	شعبة  قسم المساندة الفنية	t
559	503	6	10	شعبة  قسم الابحاث المعلوماتية	t
561	504	6	10	شعبة  قسم الدراسات الفنية	t
562	117	6	10	شعبة  قسم البرامج والمشاريع	t
563	118	6	10	شعبة  قسم التطوير التقني	t
564	121	6	10	شعبة  قسم تطبيقات الانترنت	t
565	122	6	10	شعبة  قسم ادارة المحتوى	t
567	505	6	10	شعبة  قسم الانظمة القياسية	t
569	506	6	10	شعبة  قسم البرمجيات القياسية	t
571	507	6	10	شعبة  قسم امن البنى التحتية	t
573	508	6	10	شعبة  قسم امن الحدود	t
575	509	6	10	شعبة  قسم مكافحة جرائم الانترنت	t
579	247	6	10	شعبة المتابعة	t
580	247	6	10	شعبة التنسيق	t
581	70	5	8	قسم المحفوظات	t
582	70	5	8	قسم رفع جودة الخدمة	t
583	70	5	8	قسم البرقيات والفاكس	t
584	70	5	8	قسم التسويق والاستثمار	t
585	70	5	8	قسم الاحصاء والتخطيط	t
586	70	5	8	قسم قسم العلاقات البريدية الدولية	t
587	70	5	8	قسم الصناديق البريدية	t
589	581	6	10	شعبة قسم المحفوظات	t
591	582	6	10	شعبة قسم رفع جودة الخدمة	t
593	583	6	10	شعبة البرقيات	t
594	583	6	10	شعبة الفاكس	t
596	584	6	10	شعبة تسويق الخدمات	t
597	584	6	10	شعبة العلاقات والاعلام	t
598	584	6	10	شعبة الاستثمار البريدي	t
600	585	6	10	شعبة احصاء الخدمات البريدية	t
601	585	6	10	شعبة احصاء الخدمات المالية	t
602	585	6	10	شعبة البرامج والخطط التطويرية	t
604	586	6	10	شعبة العلاقات الخارجية	t
605	586	6	10	شعبة المؤتمرات والاتفاقيات	t
606	586	6	10	شعبة الترجمة	t
608	587	6	10	شعبة التأجير	t
609	587	6	10	شعبة الاقفال	t
611	71	5	8	قسم السفريات والأكياس الفارغة	t
612	71	5	8	قسم البريد الخارجي	t
613	71	5	8	قسم البريد الداخلي	t
614	71	5	8	قسم البريد المسجل	t
615	71	5	8	قسم البريد الوارد	t
616	71	5	8	قسم البريد السريع	t
617	71	5	8	قسم الاستعلامات	t
618	71	5	8	قسم الطرود البريدية	t
619	71	5	8	قسم مكتب التبادل	t
620	71	5	8	قسم البرقيات والفاكس	t
622	611	6	10	شعبة الصادر	t
623	611	6	10	شعبة السفريات	t
624	611	6	10	شعبة الوارد	t
625	611	6	10	شعبة الغسيل والخياطة	t
627	612	6	10	شعبة الصادر	t
628	612	6	10	شعبة الوارد	t
630	613	6	10	شعبة الصادر	t
631	613	6	10	شعبة الوارد	t
633	614	6	10	شعبة الصادر	t
634	614	6	10	شعبة الوارد	t
636	616	6	10	شعبة الصادر	t
637	616	6	10	شعبة الوارد	t
639	618	6	10	شعبة الصادر	t
640	618	6	10	شعبة الوارد	t
642	619	6	10	شعبة الصادر	t
643	619	6	10	شعبة الوارد	t
645	620	6	10	شعبة الفاكس	t
646	620	6	10	شعبة البرقيات	t
648	72	5	8	قسم الحسابات التجارية	t
649	72	5	8	قسم الحسابات الدولية	t
650	72	5	8	قسم الحسابات البريدية	t
651	72	5	8	قسم خزينة البريد	t
652	72	5	8	قسم الحسابات الختامية	t
653	72	5	8	قسم الحوالات البريدية	t
655	648	6	10	شعبة قسم الحسابات التجارية	t
657	649	6	10	شعبة قسم الحسابات الدولية	t
659	650	6	10	شعبة قسم الحسابات البريدية	t
661	651	6	10	شعبة قسم خزينة البريد	t
663	652	6	10	شعبة قسم الحسابات الختامية	t
665	653	6	10	شعبة قسم الحوالات البريدية	t
667	73	5	8	أقسام الأمن البريدي للمحافظات	t
668	73	5	8	أقسام الأمن البريدي للمعابر والحدود	t
670	667	6	10	شعب الأمن البريدي للمحافظات	t
672	668	6	10	شعب الأمن البريدي للمعابر والحدود	t
702	75	5	8	قسم المراجعة والتدقيق	t
703	75	5	8	قسم المدفوعات	t
704	75	5	8	قسم المحفوظات	t
705	75	5	8	قسم الحسابات الختامية	t
706	75	5	8	قسم الدعم والمساندة الفنية	t
709	702	6	10	شعبة المراجعة مع المكاتب	t
710	702	6	10	شعبة المراجعة مع الوزارات	t
711	702	6	10	شعبة المراجعة مع القطاع الخاص	t
712	702	6	10	شعبة ادخال البيانات	t
715	703	6	10	شعبة الحوالات المالية	t
716	703	6	10	شعبة الشيكات البريدية	t
718	704	6	10	شعبة قسم المحفوظات	t
720	705	6	10	شعبة الودائع	t
721	705	6	10	شعبة الموازنات	t
722	705	6	10	شعبة فتح الحسابات	t
724	706	6	10	شعبة الشبكات والدعم الفني	t
725	706	6	10	شعبة المساندة الفنية	t
726	706	6	10	شعبة البرامج والأنظمة	t
728	76	5	8	قسم التصميم والطباعة	t
729	76	5	8	قسم هواة الطوابع	t
731	728	6	10	شعبة الطباعة	t
732	728	6	10	شعبة الاتلاف	t
733	728	6	10	شعبة المواصفات	t
734	728	6	10	شعبة ارشيف الطوابع	t
736	729	6	10	شعبة مراسلات الهواة	t
737	729	6	10	شعبة الطلبيات	t
738	729	6	10	شعبة المعارض	t
739	729	6	10	شعبة الحسابات	t
741	11	2	2	مكتب غزة	t
742	11	2	2	مكتب الضفة	t
746	13	4	6	دائرة اللجان الوزارية	t
747	13	4	6	دائرة التقارير والقرارات	t
750	14	4	6	دائرة الرقابة الادارية والمالية	t
751	14	4	6	دائرة الرقابة البريدية	t
754	15	4	6	الدائرة القانونية لشؤون الاتصالات و المعلوماتية	t
755	15	4	6	الدائرة القانونية لشؤون البريد	t
758	16	4	6	دائرة المتابعة والتنسيق	t
759	16	4	6	دائرة الشكاوي	t
761	17	5	8	قسم العلاقات العربية و الدوليه	t
762	17	5	8	قسم العلاقات المؤسسية	t
763	17	5	8	قسم الترجمة والاعلام والأرشيف	t
777	91	4	6	دائرة تراخيص أريحا	t
778	91	4	6	دائرة تراخيص الخليل	t
779	91	4	6	دائرة تراخيص القدس	t
780	91	4	6	دائرة تراخيص المعابر	t
781	91	4	6	دائرة تراخيص بيت لحم	t
782	91	4	6	دائرة تراخيص جنين	t
783	91	4	6	دائرة تراخيص رام الله	t
784	91	4	6	دائرة تراخيص سلفيت	t
785	91	4	6	دائرة تراخيص طولكرم	t
786	91	4	6	دائرة تراخيص قلقيلية	t
787	91	4	6	دائرة تراخيص نابلس	t
789	777	5	8	قسم خدمات الجمهور	t
790	777	5	8	قسم المتابعة والتنسيق	t
792	789	6	10	شعبة قسم خدمات الجمهور	t
794	790	6	10	شعبة قسم المتابعة والتنسيق	t
796	778	5	8	قسم خدمات الجمهور	t
797	778	5	8	قسم المتابعة والتنسيق	t
799	796	6	10	شعبة قسم خدمات الجمهور	t
802	797	6	10	شعبة قسم المتابعة والتنسيق	t
804	779	5	8	قسم خدمات الجمهور	t
805	779	5	8	قسم المتابعة والتنسيق	t
807	804	6	10	شعبة قسم خدمات الجمهور	t
809	805	6	10	شعبة قسم المتابعة والتنسيق	t
811	780	5	8	قسم خدمات الجمهور	t
812	780	5	8	قسم المتابعة والتنسيق	t
814	781	5	8	قسم خدمات الجمهور	t
815	781	5	8	قسم المتابعة والتنسيق	t
817	782	5	8	قسم خدمات الجمهور	t
818	782	5	8	قسم المتابعة والتنسيق	t
820	783	5	8	قسم خدمات الجمهور	t
821	783	5	8	قسم المتابعة والتنسيق	t
823	784	5	8	قسم خدمات الجمهور	t
824	784	5	8	قسم المتابعة والتنسيق	t
826	785	5	8	قسم خدمات الجمهور	t
827	785	5	8	قسم المتابعة والتنسيق	t
829	786	5	8	قسم خدمات الجمهور	t
830	786	5	8	قسم المتابعة والتنسيق	t
832	787	5	8	قسم خدمات الجمهور	t
833	787	5	8	قسم المتابعة والتنسيق	t
835	811	6	10	شعبة قسم خدمات الجمهور	t
837	812	6	10	شعبة قسم المتابعة والتنسيق	t
839	814	6	10	شعبة قسم خدمات الجمهور	t
841	815	6	10	شعبة قسم المتابعة والتنسيق	t
843	817	6	10	شعبة قسم خدمات الجمهور	t
845	818	6	10	شعبة قسم المتابعة والتنسيق	t
847	820	6	10	شعبة قسم خدمات الجمهور	t
849	821	6	10	شعبة قسم المتابعة والتنسيق	t
851	823	6	10	شعبة قسم خدمات الجمهور	t
853	824	6	10	شعبة قسم المتابعة والتنسيق	t
855	826	6	10	شعبة قسم خدمات الجمهور	t
857	827	6	10	شعبة قسم المتابعة والتنسيق	t
859	829	6	10	شعبة قسم خدمات الجمهور	t
861	830	6	10	شعبة قسم المتابعة والتنسيق	t
863	832	6	10	شعبة قسم خدمات الجمهور	t
865	833	6	10	شعبة قسم المتابعة والتنسيق	t
867	163	6	10	شعبة قسم دراسة السوق	t
869	164	6	10	شعبة قسم الاحصاء	t
871	165	6	10	شعبة قسم العقود	t
873	166	6	10	شعبة قسم الشكاوي والمتابعة	t
875	168	6	10	شعبة قسم البث المرئي	t
877	169	6	10	شعبة قسم البث المسموع	t
879	175	6	10	شعبة قسم المواصفات	t
881	176	6	10	شعبة قسم المقاييس	t
888	754	5	8	قسم الصياغة القانونية	t
896	74	4	6	دائرة مكتب بريد رئيسي أريحا	t
897	74	4	6	دائرة مكتب بريد رئيسي الخليل	t
898	74	4	6	دائرة مكتب بريد رئيسي القدس	t
899	74	4	6	دائرة مكتب بريد رئيسي بيت لحم	t
900	74	4	6	دائرة مكتب بريد رئيسي جنين	t
901	74	4	6	دائرة مكتب بريد رئيسي رام الله	t
902	74	4	6	دائرة مكتب بريد رئيسي سلفيت	t
903	74	4	6	دائرة مكتب بريد رئيسي طوباس	t
904	74	4	6	دائرة مكتب بريد رئيسي طولكرم	t
905	74	4	6	دائرة مكتب بريد رئيسي قلقيلية	t
906	74	4	6	دائرة مكتب بريد رئيسي نابلس	t
929	896	5	8	قسم المراجعة والتدقيق	t
930	896	5	8	قسم الحسابات والخزينة	t
931	896	5	8	قسم الفرز	t
932	896	5	8	قسم البريد السريع	t
933	896	5	8	قسم الطرود البريدية	t
934	896	5	8	مكاتب البريد الفرعية	t
937	19	5	8	قسم التنسيق والمتابعة	t
938	19	5	8	قسم السكرتاريا	t
942	897	5	8	قسم المراجعة والتدقيق	t
943	897	5	8	قسم الحسابات والخزينة	t
944	897	5	8	قسم الفرز	t
945	897	5	8	قسم البريد السريع	t
946	897	5	8	قسم الطرود البريدية	t
947	897	5	8	مكاتب البريد الفرعية	t
948	898	5	8	قسم المراجعة والتدقيق	t
949	898	5	8	قسم الحسابات والخزينة	t
950	898	5	8	قسم الفرز	t
951	898	5	8	قسم البريد السريع	t
952	898	5	8	قسم الطرود البريدية	t
953	898	5	8	مكاتب البريد الفرعية	t
954	899	5	8	قسم المراجعة والتدقيق	t
955	899	5	8	قسم الحسابات والخزينة	t
956	899	5	8	قسم الفرز	t
957	899	5	8	قسم البريد السريع	t
958	899	5	8	قسم الطرود البريدية	t
959	899	5	8	مكاتب البريد الفرعية	t
960	900	5	8	قسم المراجعةوالتدقيق	t
961	900	5	8	قسم الحسابات والخزينة	t
962	900	5	8	قسم الفرز	t
963	900	5	8	قسم البريد السريع	t
964	900	5	8	قسم الطرود البريدية	t
965	900	5	8	مكاتب البريد الفرعية	t
966	901	5	8	قسم المراجعة والتدقيق	t
967	901	5	8	قسم الحسابات والخزينة	t
968	901	5	8	قسم الفرز	t
969	901	5	8	قسم البريد السريع	t
970	901	5	8	قسم الطرود البريدية	t
971	901	5	8	مكاتب البريد الفرعية	t
972	902	5	8	قسم المراجعة والتدقيق	t
973	902	5	8	قسم الحسابات والخزينة	t
974	902	5	8	قسم الفرز	t
975	902	5	8	قسم البريد السريع	t
976	902	5	8	قسم الطرود البريدية	t
977	902	5	8	مكاتب البريد الفرعية	t
978	903	5	8	قسم المراجعة والتدقيق	t
979	903	5	8	قسم الحسابات والخزينة	t
980	903	5	8	قسم الفرز	t
981	903	5	8	قسم البريد السريع	t
982	903	5	8	قسم الطرود البريدية	t
983	903	5	8	مكاتب البريد الفرعية	t
984	904	5	8	قسم المراجعة والتدقيق	t
985	904	5	8	قسم الحسابات والخزينة	t
986	904	5	8	قسم الفرز	t
987	904	5	8	قسم البريد السريع	t
988	904	5	8	قسم الطرود البريدية	t
989	904	5	8	مكاتب البريد الفرعية	t
990	905	5	8	قسم المراجعة والتدقيق	t
991	905	5	8	قسم الحسابات والخزينة	t
992	905	5	8	قسم الفرز	t
993	905	5	8	قسم البريد السريع	t
994	905	5	8	قسم الطرود البريدية	t
995	905	5	8	مكاتب البريد الفرعية	t
996	906	5	8	قسم المراجعة والتدقيق	t
997	906	5	8	قسم الحسابات والخزينة	t
998	906	5	8	قسم الفرز	t
999	906	5	8	قسم البريد السريع	t
1000	906	5	8	قسم الطرود البريدية	t
1001	906	5	8	مكاتب البريد الفرعية	t
1003	934	5	9	مكتب بريد معبر الكرامة	t
1004	947	4	7	مكتب بريد دورا	t
1005	947	4	7	مكتب بريد حلحول	t
1006	947	5	9	مكتب بريد الظاهرية	t
1007	947	5	9	مكتب بريد يطا	t
1008	947	5	9	مكتب بريد ترقوميا	t
1009	947	5	9	مكتب بريد بيت امر	t
1010	947	6	11	مكتب بريد صوريف	t
1011	947	6	11	مكتب بريد الحرم الابراهيمي	t
1012	947	6	11	مكتب بريد اذنا	t
1013	947	6	11	مكتب بريد السموع	t
1014	947	6	11	مكتب بريد بيت اولا	t
1015	947	6	11	مكتب بريد بني نعيم	t
1016	947	6	11	مكتب بريد البلدة القديمة (الخليل)	t
1017	947	6	11	مكتب بريد بيت عوا	t
1018	953	4	7	مكتب بريد العيزيربة	t
1019	953	6	11	مكتب بريد بدو	t
1020	953	6	11	مكتب بريد الرام	t
1021	959	4	7	مكتب بريد بيت ساحور	t
1022	959	4	7	مكتب بريد بيت جالا	t
1023	959	6	11	مكتب بريد العبيدية	t
1024	959	6	11	مكتب بريد زعترة	t
1025	959	6	11	مكتب بريد حوسان	t
1026	959	6	11	مكتب بريد الدوحة	t
1027	965	5	9	مكتب بريد مجمع الدوائر	t
1028	965	5	9	مكتب بريد عرابة	t
1029	965	5	9	مكتب بريد يعبد	t
1030	965	5	9	مكتب بريد قباطية	t
1031	965	6	11	مكتب بريد سيلة الحارثية	t
1032	965	6	11	مكتب بريد اليامون	t
1033	965	6	11	مكتب بريد كفر راعي	t
1034	965	6	11	مكتب بريد عجه	t
1035	965	6	11	مكتب بريد سيلة الظهر	t
1036	971	4	7	مكتب بريد البيرة	t
1037	971	4	7	مكتب بريد بيرزيت	t
1038	971	5	9	مكتب بريد سلواد	t
1039	971	5	9	مكتب بريد ديردبوان	t
1040	971	5	9	مكتب بريد بيتونيا	t
1041	971	5	9	مكتب بريد الطيبة	t
1042	971	5	9	مكتب بريد سنجل	t
1043	971	6	11	مكتب بريد بيت لقيا	t
1044	971	6	11	مكتب بريد عبوين	t
1045	971	6	11	مكتب بريد مجمع الدوائر	t
1046	971	6	11	مكتب بريد المزعة الشرقية	t
1047	971	6	11	مكتب بريد بني زيد الغربية (بيت ريما)	t
1048	971	6	11	مكتب بريد بني زيد الشرقية (عارورة)	t
1049	977	5	9	مكتب بريد بديا	t
1050	977	6	11	مكتب بريد كفل حارس	t
1051	977	6	11	مكتب بريد ديراستيا	t
1052	977	6	11	مكتب بريد ابروقين	t
1053	983	6	11	مكتب بريد الزبابدة	t
1054	983	6	11	مكتب بريد ميثلون	t
1055	983	6	11	مكتب بريد الفارعة	t
1056	983	6	11	مكتب بريد عين البيضاء	t
1057	989	5	9	مكتب بريد عنبتا	t
1058	989	5	9	مكتب بريد دير الغصون	t
1059	989	5	9	مكتب بريد عتيل	t
1060	989	6	11	مكتب بريد الكفريات	t
1061	989	6	11	مكتب بريد بيت ليد	t
1062	989	6	11	مكتب بريد علار	t
1063	989	6	11	مكتب بريد قفين	t
1064	989	6	11	مكتب بريد باقة الشرقية	t
1065	989	6	11	مكتب بريد بلعا	t
1066	989	6	11	مكتب بريد نور شمس	t
1067	989	6	11	مكتب بريد كفر اللبد	t
1068	995	5	9	مكتب بريد عزون	t
1069	995	6	11	مكتب بريد كفر قدوم	t
1070	995	6	11	مكتب بريد حجة	t
1071	995	6	11	مكتب بريد كفر ثلث	t
1072	995	6	11	مكتب بريد جيوس	t
1073	995	6	11	مكتب حبله	t
1074	1001	5	9	مكتب بريد حواره	t
1075	1001	6	11	مكتب بريد بيت أمرين	t
1076	1001	6	11	مكتب بريد عصيرة الشمالية	t
1077	1001	6	11	مكتب بريد قبلان	t
1078	1001	4	7	بريد رفيديا	t
1091	929	6	10	شعبة قسم المراجعة والتدقيق	t
1093	930	6	10	شعبة ادخال البيانات	t
1094	930	6	10	شعبة مسؤولي شباك	t
1096	931	6	10	شعبة الوارد	t
1097	931	6	10	شعبة المسجل	t
1098	931	6	10	شعبة التدقيق	t
1099	931	6	10	شعبة الصناديق	t
1100	931	6	10	شعبة الموزعين	t
1102	932	6	10	شعبة الوارد	t
1103	932	6	10	شعبة الصادر	t
1105	933	6	10	شعبة الطرود الواردة	t
1106	933	6	10	شعبة الطرود الصادرة	t
1108	942	6	10	شعبة قسم المراجعة والتدقيق	t
1110	943	6	10	شعبة ادخال البيانات	t
1111	943	6	10	شعبة مسؤولي شباك	t
1113	944	6	10	شعبة الوارد	t
1114	944	6	10	شعبة المسجل	t
1115	944	6	10	شعبة التدقيق	t
1116	944	6	10	شعبة الصناديق	t
1117	944	6	10	شعبة الموزعين	t
1119	945	6	10	شعبة الوارد	t
1120	945	6	10	شعبة الصادر	t
1122	946	6	10	شعبة الطرود الواردة	t
1123	946	6	10	شعبة الطرود الصادرة	t
1125	948	6	10	شعبة قسم المراجعة والتدقيق	t
1127	949	6	10	شعبة ادخال البيانات	t
1128	949	6	10	شعبة مسؤولي شباك	t
1130	950	6	10	شعبة شعبة الوارد	t
1131	950	6	10	شعبة المسجل	t
1132	950	6	10	شعبة التدقيق	t
1133	950	6	10	شعبة الصناديق	t
1134	950	6	10	شعبة الموزعين	t
1136	951	6	10	شعبة الوارد	t
1137	951	6	10	شعبة الصادر	t
1139	952	6	10	شعبة الطرود الواردة	t
1140	952	6	10	شعبة الطرود الصادرة	t
1142	954	6	10	شعبة قسم المراجعة والتدقيق	t
1144	955	6	10	شعبة ادخال البيانات	t
1145	955	6	10	شعبة مسؤولي شباك	t
1147	956	6	10	شعبة الوارد	t
1148	956	6	10	شعبة المسجل	t
1149	956	6	10	شعبة التدقيق	t
1150	956	6	10	شعبة الصناديق	t
1151	956	6	10	شعبة الموزعين	t
1153	957	6	10	شعبة الوارد	t
1154	957	6	10	شعبة الصادر	t
1156	958	6	10	شعبة الطرود الواردة	t
1157	958	6	10	شعبة الطرود الصادرة	t
1159	960	6	10	شعبة قسم المراجعة والتدقيق	t
1161	961	6	10	شعبة ادخال البيانات	t
1162	961	6	10	شعبة مسؤولي شباك	t
1164	962	6	10	شعبة الوارد	t
1165	962	6	10	شعبة المسجل	t
1166	962	6	10	شعبة التدقيق	t
1167	962	6	10	شعبة الصناديق	t
1168	962	6	10	شعبة الموزعين	t
1170	963	6	10	شعبة الوارد	t
1171	963	6	10	شعبة الصادر	t
1173	964	6	10	شعبة الطرود الواردة	t
1174	964	6	10	شعبة الطرود الصادرة	t
1176	966	6	10	شعبة قسم المراجعة والتدقيق	t
1178	967	6	10	شعبة ادخال البيانات	t
1179	967	6	10	شعبة مسؤولي شباك	t
1181	968	6	10	شعبة الوارد	t
1182	968	6	10	شعبة المسجل	t
1183	968	6	10	شعبة التدقيق	t
1184	968	6	10	شعبة الصناديق	t
1185	968	6	10	شعبة الموزعين	t
1187	969	6	10	شعبة الوارد	t
1188	969	6	10	شعبة الصادر	t
1190	970	6	10	شعبة الطرود الواردة	t
1191	970	6	10	شعبة الطرود الصادرة	t
1193	972	6	10	شعبة قسم المراجعة والتدقيق	t
1195	973	6	10	شعبة ادخال البيانات	t
1196	973	6	10	شعبة مسؤولي شباك	t
1198	974	6	10	شعبة الوارد	t
1199	974	6	10	شعبة المسجل	t
1200	974	6	10	شعبة التدقيق	t
1201	974	6	10	شعبة الصناديق	t
1202	974	6	10	شعبة الموزعين	t
1204	975	6	10	شعبة الوارد	t
1205	975	6	10	شعبة الصادر	t
1207	976	6	10	شعبة الطرود الواردة	t
1208	976	6	10	شعبة الطرود الصادرة	t
1210	978	6	10	شعبة قسم المراجعة والتدقيق	t
1212	979	6	10	شعبة ادخال البيانات	t
1213	979	6	10	شعبة مسؤولي شباك	t
1215	980	6	10	شعبة الوارد	t
1216	980	6	10	شعبة المسجل	t
1217	980	6	10	شعبة التدقيق	t
1218	980	6	10	شعبة الصناديق	t
1219	980	6	10	شعبة الموزعين	t
1221	981	6	10	شعبة الوارد	t
1222	981	6	10	شعبة الصادر	t
1224	982	6	10	شعبة الطرود الواردة	t
1225	982	6	10	 شعبة الطرود الصادرة	t
1227	984	6	10	شعبة قسم المراجعة والتدقيق	t
1229	985	6	10	شعبة ادخال البيانات	t
1230	985	6	10	شعبة مسؤولي شباك	t
1232	986	6	10	شعبة الوارد	t
1233	986	6	10	شعبة المسجل	t
1234	986	6	10	شعبة التدقيق	t
1235	986	6	10	شعبة الصناديق	t
1236	986	6	10	شعبة الموزعين	t
1238	987	6	10	شعبة الوارد	t
1239	987	6	10	شعبة الصادر	t
1241	988	6	10	شعبة الطرود الواردة	t
1242	988	6	10	شعبة الطرود الصادرة	t
1244	990	6	10	شعبة قسم المراجعة والتدقيق	t
1246	991	6	10	شعبة ادخال البيانات	t
1247	991	6	10	شعبة مسؤولي شباك	t
1249	992	6	10	شعبة الوارد	t
1250	992	6	10	شعبة المسجل	t
1251	992	6	10	شعبة التدقيق	t
1252	992	6	10	شعبة الصناديق	t
1253	992	6	10	شعبة الموزعين	t
1255	993	6	10	شعبة الوارد	t
1256	993	6	10	شعبة الصادر	t
1258	994	6	10	شعبة الطرود الواردة	t
1259	994	6	10	شعبة الطرود الصادرة	t
1261	996	6	10	شعبة قسم المراجعة والتدقيق	t
1263	997	6	10	شعبة ادخال البيانات	t
1264	997	6	10	شعبة مسؤولي شباك	t
1266	998	6	10	شعبة الوارد	t
1267	998	6	10	شعبة المسجل	t
1268	998	6	10	شعبة التدقيق	t
1269	998	6	10	شعبة الصناديق	t
1270	998	6	10	شعبة الموزعين	t
1272	999	6	10	شعبة الوارد	t
1273	999	6	10	شعبة الصادر	t
1275	1000	6	10	شعبة الطرود الواردة	t
1276	1000	6	10	شعبة الطرود الصادرة	t
6	1	1	1	وزارة الاتصالات وتكنولوجيا المعلومات	t
10	6	2	2	 الوزير	t
11	10	2	2	ديوان الوزير	t
12	10	2	2	المستشارون	t
13	10	2	4	وحدة شؤون مجلس الوزراء	t
14	10	2	4	وحدة الرقابة الداخلية	t
15	10	2	4	وحدة الشؤون القانونية	t
16	10	2	4	وحدة الشكاوي	t
17	10	4	6	دائرة العلاقات العامة والاعلام	t
18	10	2	2	الوكيل	t
19	18	2	2	مكتب الوكيل	t
20	18	3	5	الادارة العامة للانظمة المعلوماتية	t
21	18	3	5	الادارة العامة للحكومة الالكترونية	t
22	18	3	5	الادارة العامة للحاسوب الحكومي	t
23	20	4	6	دائرة تطبيقات الانترنت وادارة المحتوى	t
24	20	4	6	دائرة تطوير الانظمة والبرمجيات القياسية	t
25	20	4	6	دائرة الابحاث والدراسات	t
26	20	4	6	دائرة المشاريع والتطوير التقني	t
27	20	4	6	دائرة التخطيط والاستشارة	t
28	20	4	6	دائرة امن المعلومات	t
31	18	3	5	الادارة العامة للشؤون الادارية	t
32	18	3	5	الادارة العامة للتخطيط والتنمية	t
33	18	3	5	الادارة العامة للبريد	t
34	18	3	5	الادارة العامة للترددات والارسال	t
46	31	4	6	دائرة الشؤون الادارية	t
47	31	4	6	دائرة الموارد البشرية	t
48	31	4	6	دائرة الخدمات العامة	t
49	31	4	6	دائرة اللوازم والمستودعات	t
50	31	4	6	دائرة النفقات والموازنة	t
51	31	4	6	دائرة الايرادات والخزينة	t
53	21	4	6	دائرة السياسات والاستراتيجيات	t
54	21	4	6	دائرة المواصفات والمقاييس	t
55	21	4	6	دائرة الدعم والاستشارة	t
56	21	4	6	دائرة الشراكات الاستراتيجية ومراكز التميز	t
57	21	4	6	دائرة التطبيقات المتكاملة	t
59	22	4	6	دائرة التدريب المكتبي المحوسب والمتقدم	t
60	22	4	6	دائرة الدعم الفني الداخلي	t
61	22	4	6	دائرة الشبكات	t
62	22	4	6	دائرة انظمة التشغيل	t
63	22	4	6	دائرة العمليات وخدمات المشتركين	t
64	18	3	5	الادارة العامة للتراخيص	t
65	18	3	5	الادارة العامة للاتصالات	t
66	32	4	6	دائرة البحث والاحصاء والتطوير	t
67	32	4	6	دائرة التخطيط والمشاريع	t
68	32	4	6	دائرة تنمية الموارد البشرية	t
70	33	4	6	دائرة الخدمات البريدية	t
71	33	4	6	دائرة الحركة البريدية	t
72	33	4	6	دائرة الحسابات المالية	t
73	33	4	6	دائرة الامن البريدي	t
74	33	4	6	دوائر مكاتب البريد الرئيسية عدد المحافظات	t
75	33	4	6	دائرة بنك البريد	t
76	33	4	6	دائرة الطوابع البريدية	t
79	34	4	6	دائرة التخصيص	t
80	34	4	6	دائرة المراقبة والبحث	t
81	34	4	6	دائرة التخطيط	t
82	34	4	6	دائرة التنسيق الوطني والدولي	t
83	34	4	6	دائرة الارسال الاذاعي	t
84	34	4	6	دائرة الارسال التلفزي	t
85	34	4	6	دائرة الارسال اللاسلكي والنظم الهوائية	t
86	47	5	8	قسم المتابعة والتعقيب	t
87	47	5	8	قسم الوظائف	t
88	47	5	8	قسم الدوام والاجازات	t
91	64	4	6	دائرة التراخيص للمحافظات عدد المحافظات	t
92	64	4	6	دائرة دراسة السوق والاحصاء والمتابعة	t
93	64	4	6	دائرة البث المرئي والمسموع	t
94	64	4	6	دائرة الموافقات النوعية	t
96	65	4	6	دائرة الربط البيئي والدولي	t
97	65	4	6	دائرة الترقيم	t
98	65	4	6	دائرة التعرفة والتسعير	t
99	65	4	6	دائرة المقاسم الحكومية والصيانة	t
100	65	4	6	دائرة النظم والمقاييس الارضية	t
101	65	4	6	دائرة الخدمات الجديدة وضبط الجودة	t
108	87	6	10	شعبة التعيينات والوظائف	t
110	86	6	10	شعبة التعقيب	t
111	27	5	8	قسم التخطيط	t
112	27	5	8	قسم الاستشارة	t
113	27	5	8	قسم المساندة الفنية	t
117	26	5	8	قسم البرامج والشاريع	t
118	26	5	8	قسم التطوير التقني	t
121	23	5	8	قسم تطبيقات الانترنت	t
122	23	5	8	قسم ادارة المحتوى	t
128	87	6	10	شعبة الترقيات والنقل والاعارة	t
129	87	6	10	شعبة المتقاعدين والرواتب	t
130	87	6	10	شعبة الملفات	t
131	87	6	10	شعبة البيانات وحوسبتها	t
132	88	6	10	شعبة الدوام	t
133	88	6	10	شعبة الاجازات	t
134	86	6	10	شعبة الأداء والتقارير	t
135	86	6	10	شعبة الإجراءات التأديبية	t
137	46	5	8	قسم الديوان	t
138	46	5	8	قسم الاستعلامات	t
139	46	5	8	قسم انظمة المعلومات الادارية  MIS	t
140	137	6	10	شعبة الصادر  قسم الديوان	t
141	137	6	10	شعبة الوارد  قسم الديوان	t
142	137	6	10	شعبة الارشيف	t
143	137	6	10	شعبة الطباعة	t
144	138	6	10	شعبة الاستقبال	t
145	138	6	10	شعبة الامن	t
146	138	6	10	شعبة المتابعة والاسناد	t
147	139	6	10	شعبة	t
148	139	6	10	شعبة	t
150	48	5	8	قسم الحركة	t
151	48	5	8	قسم الصيانة	t
152	48	5	8	قسم الخدمات والسلامة العامة	t
153	150	6	10	شعبة السائقين	t
154	150	6	10	شعبة المركبات	t
156	151	6	10	شعبة صيانة المركبات	t
157	151	6	10	شعبة صيانة الاجهزة المكتبية	t
158	151	6	10	شعبة صيانة المباني	t
163	92	5	8	قسم دراسة السوق	t
164	92	5	8	قسم الاحصاء	t
165	92	5	8	قسم العقود	t
166	92	5	8	قسم الشكاوي والمتابعة	t
168	93	5	8	قسم البث المرئي	t
169	93	5	8	قسم البث المسموع	t
170	152	6	10	شعبة النظافة	t
171	152	6	10	شعبة المراسلون	t
172	152	6	10	شعبة الحراسة	t
173	152	6	10	شعبة السلامة العامة	t
175	94	5	8	قسم المواصفات	t
176	94	5	8	قسم المقاييس	t
178	49	5	8	قسم اللوازم	t
179	49	5	8	قسم العطاءات والمشتريات	t
180	49	5	8	قسم المستودعات	t
188	178	6	10	شعبة الرقابة والتدقيق	t
189	178	6	10	شعبة الجرد	t
190	178	6	10	شعبة العهدة والممتلكات	t
192	179	6	10	شعبة العطاءات	t
193	179	6	10	شعبة المشتريات	t
198	180	6	10	شعبة الاستلام والتسليم	t
199	180	6	10	شعبة مراقبة المخزون	t
201	50	5	8	قسم الحسابات والارشيف	t
202	50	5	8	قسم الموازنة والتحليل المالي	t
203	50	5	8	قسم التدقيق الداخلي	t
204	50	5	8	قسم النفقات	t
206	201	6	10	شعبة الحسابات	t
207	201	6	10	شعبة السجلات والقيود والارشيف	t
209	202	6	10	شعبة الموازنة	t
210	202	6	10	شعبة التحاليل المالية والتقارير	t
212	204	6	10	شعبة الاجور والرواتب	t
213	204	6	10	شعبة الصندوق	t
214	204	6	10	شعبة النفقات الراسمالية	t
215	204	6	10	شعبة النفقات التشغيلية	t
216	204	6	10	شعبة مهمات السفر	t
218	51	5	8	قسم إيرادات التراخيص والترددات	t
219	51	5	8	قسم الإيرادات البريدية والطوابع	t
220	51	5	8	قسم التدقيق الداخلي	t
221	51	5	8	قسم الأرشيف	t
222	51	5	8	قسم التحويلات البريدية	t
224	218	6	10	شعبة إيرادات التراخيص والعقود	t
225	218	6	10	شعبة إيرادات الترددات	t
226	218	6	10	شعبة المديونية	t
228	219	6	10	شعبة إيرادات الطوابع	t
229	219	6	10	شعبة الإيرادات البريدية	t
231	221	6	10	شعبة الحسابات الختامية	t
232	221	6	10	شعبة السجلات والقيود	t
234	222	6	10	شعبة متابعة البنوك	t
241	66	5	8	قسم الاحصاء والمسوحات	t
242	66	5	8	قسم التنسيق والمتابعة	t
243	66	5	8	قسم البحوث	t
245	68	5	8	قسم التدريب	t
246	68	5	8	قسم الاحتياجات التدريبية	t
247	68	5	8	قسم المتابعة والتنسيق	t
249	67	5	8	قسم التخطيط	t
250	67	5	8	قسم المشاريع والدراسات	t
257	241	6	10	شعبة تحليل البيانات	t
258	241	6	10	شعبة البحث الميداني	t
260	242	6	10	شعبة التنسيق	t
261	242	6	10	شعبة المتابعة	t
263	243	6	10	شعبة البحوث	t
264	243	6	10	شعبة الدراسات	t
266	245	6	10	شعبة تدريب البريد	t
267	245	6	10	شعبة تدريب الاتصالات	t
268	245	6	10	شعبة التدريب الاداري والمالي	t
270	246	6	10	شعبة المسوحات التدريبية	t
271	246	6	10	شعبة تطوير المواد التدريبية	t
274	249	6	10	شعبة البحث الفني	t
275	249	6	10	شعبة البحث الاقتصادي	t
280	250	6	10	شعبة المشاريع	t
281	250	6	10	شعبة الدراسات	t
284	53	5	8	قسم السياسات والاستراتيجيات الوطنية	t
1751	971	6	11	مكتب بريد روابي	t
1794	934	6	11	مكتب بريد الجفتلك	t
1795	934	6	11	مكتب بريد بردلا	t
1796	934	6	11	مكتب بريد العوجا	t
1806	1757	4	6	دائرة المتابعة والتقييم	t
1881	16	5	8	قسم الاستعلامات	t
1960	983	4	7	بريد بردلة	t
1962	977	4	7	بريد كفر الديك	t
2036	33	4	6	دائرة الخزينة المركزية	t
2037	33	4	6	دائرة الدائرة التجارية	t
2038	33	4	6	دائرة الحسابات الدولية	t
1785	947	6	11	مكتب بريد تفوح	t
1945	13	4	6	دائرة المتابعة والتنسيق	t
1947	31	4	6	العطاءات والمشتريات	t
1837	959	6	11	مكتب بريد بيت فجار	t
1964	965	4	7	بريد برطعة	t
1559	31	4	6	دائرة تنمية الموارد البشرية	t
1568	754	5	8	قسم الدراسات والأبحاث	t
1570	755	5	8	قسم الصياغة القانونية	t
1571	755	5	8	قسم الدراسات والأبحاث	t
1607	91	4	6	دائرة تراخيص طوباس	t
1617	1	1	1	وزارة الاتصالات وتكنولوجيا المعلومات	t
1627	1559	5	8	قسم التدريب	t
1628	1559	5	8	قسم الاحتياجات التدريبية	t
1629	1559	5	8	قسم المتابعة والتنسيق	t
1641	74	4	6	مكتب التبادل البريدي/ اريحا	t
1643	1627	6	10	شعبة تدريب البريد	t
1644	1627	6	10	شعبة تدريب الاتصالات	t
1645	1627	6	10	شعبة التدريب الاداري والمالي	t
1646	1628	6	10	شعبة المسوحات التدريبية	t
1647	1628	6	10	شعبة تطوير المواد التدريبية	t
1648	1629	6	10	شعبة المتابعة	t
1649	1629	6	10	شعبة التنسيق	t
1937	14	4	6	مراسلين وعمال نظافة	t
2043	1001	4	7	بريد عقربا	t
1777	10	2	4	وحدة النوع الاجتماعي	t
1757	18	3	5	المركز الوطني للابداع التكنولوجي والابتكار	t
1815	983	6	11	مكتب بريد الجفتلك	t
1864	10	2	4	وحدة البنك الدولي	t
1889	1757	4	6	دائرة دعم الإبداع الرقمي	t
1958	33	4	6	دائرة العلاقات الدولية	t
2032	1969	4	6	دائرة التدقيق والمراجعة الخارجية	t
1968	18	3	5	الإدارة العامة للشؤون الإدارية	t
1969	18	3	5	الإدارة العامة للشؤون المالية	t
1970	1968	4	6	دائرة الشؤون الادارية	t
1971	1968	4	6	دائرة الموارد البشرية	t
1972	1968	4	6	دائرة الخدمات العامة	t
1973	1968	4	6	دائرة اللوازم والمستودعات	t
1974	1968	4	6	دائرة تنمية الموارد البشرية	t
1975	1969	4	6	دائرة النفقات والموازنة	t
1976	1969	4	6	دائرة الايرادات والخزينة	t
1977	1969	4	6	العطاءات والمشتريات	t
1979	1975	5	8	قسم الحسابات والارشيف	t
1980	1975	5	8	قسم الموازنة والتحليل المالي	t
1981	1975	5	8	قسم التدقيق الداخلي	t
1982	1975	5	8	قسم النفقات	t
1984	1979	6	10	شعبة الحسابات	t
1985	1979	6	10	شعبة السجلات والقيود والارشيف	t
1991	1982	6	10	شعبة الاجور والرواتب	t
1992	1982	6	10	شعبة الصندوق	t
1987	1980	6	10	شعبة الموازنة	t
1988	1980	6	10	شعبة التحاليل المالية والتقارير	t
1993	1982	6	10	شعبة النفقات الراسمالية	t
1994	1982	6	10	شعبة النفقات التشغيلية	t
1995	1982	6	10	شعبة مهمات السفر	t
1998	1976	5	8	قسم إيرادات التراخيص والترددات	t
1999	1976	5	8	قسم الإيرادات البريدية والطوابع	t
2000	1976	5	8	قسم التدقيق الداخلي	t
2001	1976	5	8	قسم الارشيف	t
2002	1976	5	8	قسم التحويلات البريدية	t
2005	1998	6	10	شعبة إيرادات التراخيص والعقود	t
2006	1998	6	10	شعبة إيرادات الترددات	t
2007	1998	6	10	شعبة المديونية	t
2010	1999	6	10	شعبة إيرادات الطوابع	t
2011	1999	6	10	شعبة الإيرادات البريدية	t
2013	2001	6	10	شعبة الحسابات الختامية	t
2014	2001	6	10	شعبة السجلات والقيود	t
2016	2002	6	10	شعبة متابعة البنوك	t
2064	33	4	6	دائرة التدقيق والمراجعة الخارجية	t
\.


--
-- TOC entry 3891 (class 0 OID 48904)
-- Dependencies: 220
-- Data for Name: permission_role; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.permission_role (permission_id, role_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
41	1
42	1
43	1
44	1
45	1
46	1
47	1
48	1
49	1
50	1
51	1
52	1
53	1
54	1
55	1
56	1
57	1
58	1
59	1
60	1
61	1
62	1
63	1
64	1
65	1
66	1
67	1
68	1
69	1
70	1
71	1
72	1
73	1
74	1
75	1
76	1
77	1
78	1
79	1
80	1
81	1
82	1
83	1
84	1
85	1
86	1
87	1
88	1
89	1
90	1
91	1
92	1
93	1
94	1
95	1
96	1
97	1
98	1
99	1
100	1
101	1
102	1
103	1
104	1
105	1
106	1
107	1
108	1
109	1
110	1
111	1
112	1
113	1
114	1
115	1
116	1
117	1
118	1
119	1
120	1
76	2
77	2
78	2
\.


--
-- TOC entry 3888 (class 0 OID 48882)
-- Dependencies: 217
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.permissions (id, key, group_name, description) FROM stdin;
1	browse_menus	menus	2021-04-06 03:47:36
2	read_menus	menus	2021-04-06 03:47:36
3	edit_menus	menus	2021-04-06 03:47:36
4	add_menus	menus	2021-04-06 03:47:36
5	browse_roles	roles	2021-04-06 03:47:36
6	read_roles	roles	2021-04-06 03:47:36
7	edit_roles	roles	2021-04-06 03:47:36
8	add_roles	roles	2021-04-06 03:47:36
9	browse_users	users	2021-04-06 03:47:36
10	read_users	users	2021-04-06 03:47:36
11	edit_users	users	2021-04-06 03:47:36
12	add_users	users	2021-04-06 03:47:36
13	browse_currencies	currencies	2021-04-20 06:50:22
14	edit_currencies	currencies	2021-04-20 06:50:22
15	add_currencies	currencies	2021-04-20 06:50:22
16	browse_all_stamps	all	2021-04-21 04:26:34
17	browse_all_sheets	all	2021-04-21 04:26:34
18	browse_all_packs	all	2021-05-05 06:21:08
19	browse_permissions	permissions	2021-05-06 06:16:22
20	read_permissions	permissions	2021-05-06 06:16:22
21	edit_permissions	permissions	2021-05-06 06:16:22
22	add_permissions	permissions	2021-05-06 06:16:22
23	builder_menus	menu_items	2021-05-30 05:52:25
24	approve_committee	all	2021-06-27 11:35:32
25	approve_treasury	all	2021-06-27 11:35:45
26	read_office_orders	office_orders	2021-08-04 11:17:53
27	add_office_orders	office_orders	2021-08-04 11:18:08
28	browse_office_orders	office_orders	2021-08-04 11:22:45
29	A_office_browse_orders	orders_A	2021-08-08 10:09:02
30	A_office_prepare_orders	orders_A	2021-08-08 10:09:13
31	A_office_read_orders	orders_A	2021-08-08 10:09:27
32	A_office_edit_orders	orders_A	2021-08-08 10:09:46
33	treasury_details	treasury	2021-09-21 08:03:28
34	edit_profile	profile	2021-09-28 06:02:26
35	A_office_reject_orders	orders_A	2021-09-29 07:12:05
36	change_password_profile	profile	2021-11-04 06:41:36
37	change_password_users	users	2021-11-04 06:53:10
38	browse_profile	profile	2021-11-04 06:54:27
39	2fa_profile	profile	2021-11-08 06:52:33
40	receipt_office_orders	office_orders	2021-11-30 08:39:50
41	A_office_receipt_orders	orders_A	2021-08-08 10:09:13
42	add_governorates	governorates	2021-12-28 10:00:43
43	browse_governorates	governorates	2021-12-28 10:03:45
44	read_governorates	governorates	2021-12-28 10:04:49
45	edit_governorates	governorates	2021-12-28 10:05:27
46	browse_postoffice	PostOffice	2021-12-28 11:10:17
47	add_postoffice	PostOffice	2021-12-28 12:00:30
48	edit_postoffice	PostOffice	2021-12-28 12:22:41
49	browse_fixidstamp	fixedstamp	2021-12-28 16:57:49
50	edit_fixidstamp	fixedstamp	2021-12-28 17:10:48
51	browse_bank	bank	2021-12-28 23:03:30
52	add_bank	bank	2021-12-28 23:03:53
53	edit_bank	bank	2021-12-28 23:30:13
54	browse_treasuries	treasuries	2022-01-02 12:10:41
55	add_treasuries	treasuries	2022-01-02 12:11:30
56	edit_treasuries	treasuries	2022-01-02 12:11:56
57	treasuries_details	treasuries	2022-01-03 06:40:43
58	edit_man_emp_vac	Vacation	تعديل الاجازات للموظفين (مدير)
59	add_man_emp_vac	Vacation	اضافة الاجازات للموظفين (مدير)
60	list_man_emp_vac	Vacation	عرض قائمة الاجازات للموظفين (مدير)
61	view_vacation_list_setting	Setting	عرض اعدادات الاجازات
62	view_devices	Attendance Devices	عرض ساعات الدوام
63	add_device	Attendance Devices	اضافة ساعة دوام جديدة
64	edit_device	Attendance Devices	تعديل بيانات ساعة دوام
65	transfer_data	Attendance Devices	سحب دوام الموظفين 
66	check_connect	Attendance Devices	فحص اتصال ساعات الدوام
67	set_time	Attendance Devices	مزامنة الوقت بين السيرفر والساعة
68	get_user	Attendance Devices	عرض الموظفين المضافين على ساعة الدوام
69	set_user	Attendance Devices	اضافة موظف جديد على ساعة الدوام
70	restart	Attendance Devices	اعادة تشغيل ساعة الدوام
71	check_voice	Attendance Devices	فحص صوت ساعات الدوام
72	remove_user	Attendance Devices	حذف موظف عن ساعة الدوام
73	add_gov_email	Official Reach	اضافة سجلات الوصول الرسمي (سجل البريد الالكتروني  الحكومي)
74	add_gov_mobile	Official Reach	اضافة سجلات الوصول الرسمي ( سجل الأرقام الخليوية الحكومية)
75	add_gov_tel	Official Reach	اضافة سجلات الوصول الرسمي (سجل أرقام الهواتف الداخلية لموظفي الوزارة)
76	view_gov_email	Official Reach	عرض سجلات الوصول الرسمي (سجل البريد الالكتروني  الحكومي)
77	view_gov_mobile	Official Reach	عرض سجلات الوصول الرسمي ( سجل الأرقام الخليوية الحكومية)
78	view_gov_tel	Official Reach	عرض سجلات الوصول الرسمي (سجل أرقام الهواتف الداخلية لموظفي الوزارة)
79	add_os	Organization Structural	إضافة عنصر على الهيكلية
80	view_os	Organization Structural	عرض الهيكلية
81	view_os_delegation	Organization Structural	عرض صفحة التفويض
82	save_os_delegation	Organization Structural	تفويض موظف
83	edit_user_delegation	Organization Structural	تفويض موظف
84	view_permissions	Permissions	عرض صفحة الصلاحيات
85	edit_permission	Permissions	تعديل صلاحية
86	add_permission	Permissions	ادخال صلاحية
87	delete_permission	Permissions	حذف صلاحية
88	view_roles	Roles	عرض صفحة الأدوار
89	edit_role	Roles	تعديل دور
90	add_role	Roles	أضف دور
91	view_role	Roles	عرض دور
92	delete_role	Roles	حذف دور
93	view_employee_list	Employees	عرض قائمة الموظفين
94	add_new_employee	Employees	اضافة موظف جديد
95	view_employee_profile	Employees	عرض بيانات موظف
96	view_profile	Employees	امكانية عرض الموظف بياناته (بروفايله)
97	assigne_end_os	Employees	(تكليف)تعيين أو إنهاء تعيين موظف على الهيكلية
98	view_leave_list	Leave	عرض صفحة المغادرات
99	add_leave	Leave	إضافة مغادرة
100	view_users_leave	Leave	استعراض مغادرات الموظفين
101	update_leave_status	Leave	الموافقة على مغادرة الموظف
102	search_leaves	Leave	البحث في المغادرات
103	view_all_users_attendance	duration	استعراض حضور الموظفين
104	view_user_attendance	duration	استعراض حضور الموظف
105	get_users_attendance_report	duration	تصدير تقرير حضور الموظفين
106	view_user_attendance_details	duration	استعراض حضور الموظف بالتفصيل
107	view_menus	Menus	استعراض القوائم
108	add_menu	Menus	اضافة قائمة
109	edit_menu	Menus	تعديل قائمة
110	delete_menu	Menus	حذف قائمة
111	view_menu_item	Menus	استعراض عناصر القائمة
112	add_menu_item	Menus	أضف عنصر على القائمة
113	update_menu_item	Menus	تعديل عنصر من القائمة
114	delete_menu_item	Menus	حذف عنصر من القائمة
115	list_emp_vac_balance	Vacation	عرض أرصدة اجازات الموظف
116	add_emp_vac	Vacation	إضافة اجازة للموظف
117	edit_emp_vac	Vacation	تعديل اجازة الموظف
118	list_emp_vac	Vacation	عرض قائمة الاجازات للموظف
119	approve_emp_vac	Vacation	تأكيد حالة الاجازة للموظف
120	view_agreement_list	Agreement list	عرض اتفاقيات الدوام
\.


--
-- TOC entry 3890 (class 0 OID 48893)
-- Dependencies: 219
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.roles (id, role_name, description, status) FROM stdin;
1	DEV	DEV	1
2	موظف	موظف عادي	1
3	رئيس شعبة	رئيس شعبة	0
4	رئيس قسم	رئيس قسم	0
5	مدير دائرة	مدير دائرة	1
6	مدير عام	مدير عام	1
\.


--
-- TOC entry 3905 (class 0 OID 49095)
-- Dependencies: 234
-- Data for Name: vacation_setting; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.vacation_setting (id, vacation_type, contract_type, from_age, to_age, from_service_years, to_service_years, vac_days, max_days, max_move_days, seq, vac_years) FROM stdin;
1	10	1	0	100	0	100	365	365	1	3	1
2	7	1	0	100	0	100	365	365	4	1	4
3	10	6	0	100	0	100	365	365	1	2	1
4	10	2	0	100	0	100	365	365	1	4	1
5	7	6	0	100	0	100	365	365	4	2	4
6	7	3	0	100	0	100	365	365	4	3	4
7	7	2	0	100	0	100	365	365	4	4	4
8	1	7	0	100	0	5	14	28	28	17	1
9	2	7	0	100	0	100	14	14	0	7	1
10	3	1	0	100	0	100	30	30	30	2	1
11	3	2	0	100	0	100	30	30	30	3	1
12	4	3	0	100	0	100	90	90	0	1	1
13	4	1	0	100	0	100	90	90	0	2	1
14	4	2	0	100	0	100	90	90	0	3	1
15	4	4	0	100	0	100	70	70	0	4	1
16	4	5	0	100	0	100	70	70	0	5	1
17	3	3	0	100	0	100	30	30	30	1	1
18	9	4	0	100	0	100	3	6	0	2	1
19	3	6	0	100	5	100	30	30	30	4	1
20	9	5	0	100	0	100	3	6	0	1	1
21	1	1	50	100	0	10	30	60	60	14	1
22	6	1	0	100	0	100	10	10	0	2	1
23	6	3	0	100	0	100	10	10	0	1	1
24	6	2	0	100	0	100	10	10	0	3	1
25	2	4	0	100	0	100	14	14	0	1	1
26	2	5	0	100	0	100	90	90	0	2	3
27	2	6	0	100	0	100	14	14	0	3	1
28	2	3	0	100	0	100	90	90	0	4	3
29	2	1	0	100	0	100	90	90	0	5	3
30	2	2	0	100	0	100	90	90	0	6	3
31	9	6	0	100	0	100	3	6	0	3	1
32	1	3	0	100	0	5	14	28	28	12	1
33	1	2	0	100	0	1	0	0	0	15	1
34	1	1	0	50	0	100	30	60	60	1	1
35	10	3	0	100	0	100	365	365	1	1	1
36	1	1	50	100	10	50	35	60	60	16	1
37	1	3	0	100	5	100	21	42	42	4	1
38	1	4	0	100	0	5	14	28	28	5	1
39	1	4	0	100	5	100	21	42	42	6	1
40	1	5	0	100	0	5	30	60	60	7	1
41	1	5	0	100	5	100	30	60	60	8	1
42	1	6	0	100	0	5	14	28	28	9	1
43	1	6	0	100	5	100	21	42	42	10	1
44	1	2	0	100	1	100	30	60	30	11	1
45	8	3	0	100	0	100	1	365	0	1	1
46	4	6	0	100	0	100	70	70	0	7	1
47	3	2	0	100	6	100	30	30	30	5	1
48	6	6	0	100	0	100	10	10	0	4	1
49	8	1	0	100	0	100	1	365	0	2	1
50	8	6	0	100	0	100	1	365	0	3	1
51	8	2	0	100	0	100	1	365	0	4	1
52	5	1	0	100	0	100	3	3	0	1	1
53	5	2	0	100	0	100	3	3	0	2	1
\.


--
-- TOC entry 3934 (class 0 OID 49350)
-- Dependencies: 263
-- Data for Name: vacation_type; Type: TABLE DATA; Schema: public; Owner: gcc40
--

COPY public.vacation_type (id, vacation_name, vacation_symbol, vac_in_sal, user_id, time_stamp, vac_name_e, note, vac_type, vac_days, show_slip, add_holiday, religion, from_year, to_year, percent_vac, without_sal_vac_process_way, gender, selected, vacation_symbol_e, show_on_in_out_sheet, vac_years, show_on_portal) FROM stdin;
1	اجازة سنوية	اجازة ع	N	1	\N	طلب اجازة عادية 30 يوم	\N	1	0	0	1	0	0	60	100	4	0	\N	L	1	1	1
2	اجازه مرضيه	مرضيه	N	1	\N	\N	\N	2	14	1	1	0	0	60	100	4	0	\N	S	1	1	1
3	اجازة حج	حج	N	1	2016-03-31	\N	\N	4	30	1	1	1	0	60	100	4	0	\N	H	0	1	1
4	اجازه امومه	امومة	N	1	2016-01-12	\N	\N	5	70	1	1	0	0	60	100	4	2	\N	M	0	1	1
5	اجازة ابوة	ابوة	N	1	2016-01-28	\N	\N	5	30	0	1	0	0	60	100	4	0	\N	Y	0	3	1
6	إجازة عارضة	عارضة	N	1	\N	\N	\N	5	10	1	1	0	0	60	100	4	0	\N	T	1	1	1
7	اجازه بدون راتب	بدون راتب	N	1	\N	\N	\N	3	0	1	1	0	0	60	100	4	0	\N	W	1	1	1
8	حسم من الراتب	حسم	N	1	2016-01-28	\N	\N	5	10	0	1	0	0	60	100	4	0	\N	Z	0	3	1
9	اجازة وفاة	D	N	1	2016-06-30	\N	\N	5	\N	1	1	0	0	60	100	4	0	\N	D	0	1	1
10	مهمة عمل	مهمة عمل	N	1	2021-04-20	\N	\N	5	0	1	1	0	0	30	100	4	0	\N	R	1	1	1
\.


--
-- TOC entry 3996 (class 0 OID 0)
-- Dependencies: 249
-- Name: attendance_agreement_employee_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.attendance_agreement_employee_actions_id_seq', 1, true);


--
-- TOC entry 3997 (class 0 OID 0)
-- Dependencies: 247
-- Name: attendance_agreements_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.attendance_agreements_details_id_seq', 7, true);


--
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 245
-- Name: attendance_agreements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.attendance_agreements_id_seq', 2, true);


--
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 243
-- Name: attendance_check_in_out_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.attendance_check_in_out_id_seq', 1, false);


--
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 272
-- Name: attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.attendance_id_seq', 1, false);


--
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 266
-- Name: crediting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.crediting_id_seq', 1, false);


--
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 235
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.devices_id_seq', 1, true);


--
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 237
-- Name: emp_vac_balance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.emp_vac_balance_id_seq', 8, true);


--
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 241
-- Name: emp_vacation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.emp_vacation_id_seq', 1, true);


--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 226
-- Name: employee_addresses_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.employee_addresses_info_id_seq', 1332, true);


--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 222
-- Name: employee_basic_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.employee_basic_info_id_seq', 1333, true);


--
-- TOC entry 4007 (class 0 OID 0)
-- Dependencies: 230
-- Name: employee_contacts_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.employee_contacts_info_id_seq', 1332, true);


--
-- TOC entry 4008 (class 0 OID 0)
-- Dependencies: 228
-- Name: employee_education_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.employee_education_info_id_seq', 1, false);


--
-- TOC entry 4009 (class 0 OID 0)
-- Dependencies: 224
-- Name: employee_job_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.employee_job_info_id_seq', 701, true);


--
-- TOC entry 4010 (class 0 OID 0)
-- Dependencies: 251
-- Name: employee_os_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.employee_os_id_seq', 513, true);


--
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 268
-- Name: job_assigment_dep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.job_assigment_dep_id_seq', 1, false);


--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 270
-- Name: job_assigment_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.job_assigment_emp_id_seq', 1, false);


--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 264
-- Name: job_assigment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.job_assigment_id_seq', 1, false);


--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 259
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.jobs_id_seq', 110, true);


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 239
-- Name: leave_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.leave_id_seq', 1, false);


--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 276
-- Name: memo_attachment_memo_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.memo_attachment_memo_attachment_id_seq', 1, false);


--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 278
-- Name: memo_comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.memo_comments_comment_id_seq', 1, false);


--
-- TOC entry 4018 (class 0 OID 0)
-- Dependencies: 274
-- Name: memo_memo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.memo_memo_id_seq', 1, false);


--
-- TOC entry 4019 (class 0 OID 0)
-- Dependencies: 280
-- Name: memo_recipient_memo_recipient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.memo_recipient_memo_recipient_id_seq', 1, false);


--
-- TOC entry 4020 (class 0 OID 0)
-- Dependencies: 255
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 1, false);


--
-- TOC entry 4021 (class 0 OID 0)
-- Dependencies: 253
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.menus_id_seq', 5, true);


--
-- TOC entry 4022 (class 0 OID 0)
-- Dependencies: 216
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.permissions_id_seq', 120, true);


--
-- TOC entry 4023 (class 0 OID 0)
-- Dependencies: 218
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.roles_id_seq', 6, true);


--
-- TOC entry 4024 (class 0 OID 0)
-- Dependencies: 233
-- Name: vacation_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.vacation_setting_id_seq', 53, true);


--
-- TOC entry 4025 (class 0 OID 0)
-- Dependencies: 262
-- Name: vacation_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gcc40
--

SELECT pg_catalog.setval('public.vacation_type_id_seq', 10, true);


--
-- TOC entry 3601 (class 2606 OID 49093)
-- Name: att_emp att_emp_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.att_emp
    ADD CONSTRAINT att_emp_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 3669 (class 2606 OID 49348)
-- Name: att_org_emp_node att_org_emp_node_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.att_org_emp_node
    ADD CONSTRAINT att_org_emp_node_pkey PRIMARY KEY (counter);


--
-- TOC entry 3641 (class 2606 OID 49220)
-- Name: attendance_agreement_employee_actions attendance_agreement_employee_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreement_employee_actions
    ADD CONSTRAINT attendance_agreement_employee_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 3634 (class 2606 OID 49203)
-- Name: attendance_agreements_details attendance_agreements_details_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements_details
    ADD CONSTRAINT attendance_agreements_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3630 (class 2606 OID 49194)
-- Name: attendance_agreements attendance_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements
    ADD CONSTRAINT attendance_agreements_pkey PRIMARY KEY (id);


--
-- TOC entry 3626 (class 2606 OID 49183)
-- Name: attendance_check_in_out attendance_check_in_out_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_check_in_out
    ADD CONSTRAINT attendance_check_in_out_pkey PRIMARY KEY (id);


--
-- TOC entry 3691 (class 2606 OID 49438)
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (id);


--
-- TOC entry 3679 (class 2606 OID 49409)
-- Name: crediting crediting_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.crediting
    ADD CONSTRAINT crediting_pkey PRIMARY KEY (id);


--
-- TOC entry 3607 (class 2606 OID 49113)
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- TOC entry 3555 (class 2606 OID 16392)
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- TOC entry 3611 (class 2606 OID 49122)
-- Name: emp_vac_balance emp_vac_balance_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vac_balance
    ADD CONSTRAINT emp_vac_balance_pkey PRIMARY KEY (id);


--
-- TOC entry 3621 (class 2606 OID 49166)
-- Name: emp_vacation emp_vacation_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vacation
    ADD CONSTRAINT emp_vacation_pkey PRIMARY KEY (id);


--
-- TOC entry 3582 (class 2606 OID 48971)
-- Name: employee_addresses_info employee_addresses_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_addresses_info
    ADD CONSTRAINT employee_addresses_info_pkey PRIMARY KEY (id);


--
-- TOC entry 3569 (class 2606 OID 48941)
-- Name: employee_basic_info employee_basic_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_basic_info
    ADD CONSTRAINT employee_basic_info_pkey PRIMARY KEY (id);


--
-- TOC entry 3594 (class 2606 OID 49010)
-- Name: employee_contacts_info employee_contacts_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_contacts_info
    ADD CONSTRAINT employee_contacts_info_pkey PRIMARY KEY (id);


--
-- TOC entry 3589 (class 2606 OID 48990)
-- Name: employee_education_info employee_education_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_education_info
    ADD CONSTRAINT employee_education_info_pkey PRIMARY KEY (id);


--
-- TOC entry 3575 (class 2606 OID 48952)
-- Name: employee_job_info employee_job_info_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_job_info
    ADD CONSTRAINT employee_job_info_pkey PRIMARY KEY (id);


--
-- TOC entry 3647 (class 2606 OID 49242)
-- Name: employee_os employee_os_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os
    ADD CONSTRAINT employee_os_pkey PRIMARY KEY (id);


--
-- TOC entry 3683 (class 2606 OID 49419)
-- Name: job_assigment_dep job_assigment_dep_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment_dep
    ADD CONSTRAINT job_assigment_dep_pkey PRIMARY KEY (id);


--
-- TOC entry 3687 (class 2606 OID 49429)
-- Name: job_assigment_emp job_assigment_emp_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment_emp
    ADD CONSTRAINT job_assigment_emp_pkey PRIMARY KEY (id);


--
-- TOC entry 3675 (class 2606 OID 49392)
-- Name: job_assigment job_assigment_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment
    ADD CONSTRAINT job_assigment_pkey PRIMARY KEY (id);


--
-- TOC entry 3665 (class 2606 OID 49333)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3617 (class 2606 OID 49144)
-- Name: leave leave_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.leave
    ADD CONSTRAINT leave_pkey PRIMARY KEY (id);


--
-- TOC entry 3707 (class 2606 OID 49471)
-- Name: memo_attachment memo_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_attachment
    ADD CONSTRAINT memo_attachment_pkey PRIMARY KEY (memo_attachment_id);


--
-- TOC entry 3715 (class 2606 OID 49483)
-- Name: memo_comments memo_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_comments
    ADD CONSTRAINT memo_comments_pkey PRIMARY KEY (comment_id);


--
-- TOC entry 3700 (class 2606 OID 49456)
-- Name: memo memo_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo
    ADD CONSTRAINT memo_pkey PRIMARY KEY (memo_id);


--
-- TOC entry 3721 (class 2606 OID 49496)
-- Name: memo_recipient memo_recipient_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_recipient
    ADD CONSTRAINT memo_recipient_pkey PRIMARY KEY (memo_recipient_id);


--
-- TOC entry 3661 (class 2606 OID 49287)
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3655 (class 2606 OID 49271)
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- TOC entry 3567 (class 2606 OID 48925)
-- Name: os os_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.os
    ADD CONSTRAINT os_pkey PRIMARY KEY (id);


--
-- TOC entry 3557 (class 2606 OID 48889)
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3561 (class 2606 OID 48901)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3609 (class 2606 OID 49115)
-- Name: devices uniq_11074e9abf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT uniq_11074e9abf396750 UNIQUE (id);


--
-- TOC entry 3637 (class 2606 OID 49208)
-- Name: attendance_agreements_details uniq_149c061e24890b2be5a02990; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements_details
    ADD CONSTRAINT uniq_149c061e24890b2be5a02990 UNIQUE (agreement_id, day);


--
-- TOC entry 3639 (class 2606 OID 49206)
-- Name: attendance_agreements_details uniq_149c061ebf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements_details
    ADD CONSTRAINT uniq_149c061ebf396750 UNIQUE (id);


--
-- TOC entry 3645 (class 2606 OID 49224)
-- Name: attendance_agreement_employee_actions uniq_245a7392bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreement_employee_actions
    ADD CONSTRAINT uniq_245a7392bf396750 UNIQUE (id);


--
-- TOC entry 3559 (class 2606 OID 48891)
-- Name: permissions uniq_2dedcc6fbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT uniq_2dedcc6fbf396750 UNIQUE (id);


--
-- TOC entry 3709 (class 2606 OID 49476)
-- Name: memo_attachment uniq_317043aa802e5b6; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_attachment
    ADD CONSTRAINT uniq_317043aa802e5b6 UNIQUE (memo_attachment_id);


--
-- TOC entry 3681 (class 2606 OID 49411)
-- Name: crediting uniq_38a871a6bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.crediting
    ADD CONSTRAINT uniq_38a871a6bf396750 UNIQUE (id);


--
-- TOC entry 3723 (class 2606 OID 49500)
-- Name: memo_recipient uniq_4a83d2c233d5f253; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_recipient
    ADD CONSTRAINT uniq_4a83d2c233d5f253 UNIQUE (memo_recipient_id);


--
-- TOC entry 3653 (class 2606 OID 49247)
-- Name: employee_os uniq_598ad31dbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os
    ADD CONSTRAINT uniq_598ad31dbf396750 UNIQUE (id);


--
-- TOC entry 3671 (class 2606 OID 49373)
-- Name: vacation_type uniq_6bb3f18bbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.vacation_type
    ADD CONSTRAINT uniq_6bb3f18bbf396750 UNIQUE (id);


--
-- TOC entry 3694 (class 2606 OID 49441)
-- Name: attendance uniq_6de30d91bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT uniq_6de30d91bf396750 UNIQUE (id);


--
-- TOC entry 3685 (class 2606 OID 49421)
-- Name: job_assigment_dep uniq_6ed8d36fbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment_dep
    ADD CONSTRAINT uniq_6ed8d36fbf396750 UNIQUE (id);


--
-- TOC entry 3663 (class 2606 OID 49291)
-- Name: menu_items uniq_70b2ca2abf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT uniq_70b2ca2abf396750 UNIQUE (id);


--
-- TOC entry 3657 (class 2606 OID 49273)
-- Name: menus uniq_727508cfbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT uniq_727508cfbf396750 UNIQUE (id);


--
-- TOC entry 3571 (class 2606 OID 48945)
-- Name: employee_basic_info uniq_748cde85490be13; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_basic_info
    ADD CONSTRAINT uniq_748cde85490be13 UNIQUE (employee_no);


--
-- TOC entry 3573 (class 2606 OID 48943)
-- Name: employee_basic_info uniq_748cde8bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_basic_info
    ADD CONSTRAINT uniq_748cde8bf396750 UNIQUE (id);


--
-- TOC entry 3585 (class 2606 OID 48976)
-- Name: employee_addresses_info uniq_7758f4e8c03f15c; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_addresses_info
    ADD CONSTRAINT uniq_7758f4e8c03f15c UNIQUE (employee_id);


--
-- TOC entry 3587 (class 2606 OID 48974)
-- Name: employee_addresses_info uniq_7758f4ebf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_addresses_info
    ADD CONSTRAINT uniq_7758f4ebf396750 UNIQUE (id);


--
-- TOC entry 3592 (class 2606 OID 48993)
-- Name: employee_education_info uniq_7dd51496bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_education_info
    ADD CONSTRAINT uniq_7dd51496bf396750 UNIQUE (id);


--
-- TOC entry 3624 (class 2606 OID 49169)
-- Name: emp_vacation uniq_8d3e0d6bbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vacation
    ADD CONSTRAINT uniq_8d3e0d6bbf396750 UNIQUE (id);


--
-- TOC entry 3603 (class 2606 OID 49102)
-- Name: vacation_setting uniq_8ed637fbbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.vacation_setting
    ADD CONSTRAINT uniq_8ed637fbbf396750 UNIQUE (id);


--
-- TOC entry 3628 (class 2606 OID 49185)
-- Name: attendance_check_in_out uniq_8fcf17a48c03f15caa9e377a; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_check_in_out
    ADD CONSTRAINT uniq_8fcf17a48c03f15caa9e377a UNIQUE (employee_id, date);


--
-- TOC entry 3614 (class 2606 OID 49125)
-- Name: emp_vac_balance uniq_9994d571bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vac_balance
    ADD CONSTRAINT uniq_9994d571bf396750 UNIQUE (id);


--
-- TOC entry 3619 (class 2606 OID 49147)
-- Name: leave uniq_9bb080d0bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.leave
    ADD CONSTRAINT uniq_9bb080d0bf396750 UNIQUE (id);


--
-- TOC entry 3689 (class 2606 OID 49431)
-- Name: job_assigment_emp uniq_a7c33350bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment_emp
    ADD CONSTRAINT uniq_a7c33350bf396750 UNIQUE (id);


--
-- TOC entry 3667 (class 2606 OID 49335)
-- Name: jobs uniq_a8936dc5bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT uniq_a8936dc5bf396750 UNIQUE (id);


--
-- TOC entry 3702 (class 2606 OID 49462)
-- Name: memo uniq_ab4a902ab4d32439; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo
    ADD CONSTRAINT uniq_ab4a902ab4d32439 UNIQUE (memo_id);


--
-- TOC entry 3563 (class 2606 OID 48903)
-- Name: roles uniq_b63e2ec7bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT uniq_b63e2ec7bf396750 UNIQUE (id);


--
-- TOC entry 3677 (class 2606 OID 49394)
-- Name: job_assigment uniq_ba51124bbf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.job_assigment
    ADD CONSTRAINT uniq_ba51124bbf396750 UNIQUE (id);


--
-- TOC entry 3597 (class 2606 OID 49015)
-- Name: employee_contacts_info uniq_bd1ae0b58c03f15c; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_contacts_info
    ADD CONSTRAINT uniq_bd1ae0b58c03f15c UNIQUE (employee_id);


--
-- TOC entry 3599 (class 2606 OID 49013)
-- Name: employee_contacts_info uniq_bd1ae0b5bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_contacts_info
    ADD CONSTRAINT uniq_bd1ae0b5bf396750 UNIQUE (id);


--
-- TOC entry 3717 (class 2606 OID 49489)
-- Name: memo_comments uniq_daa1a49cf8697d13; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.memo_comments
    ADD CONSTRAINT uniq_daa1a49cf8697d13 UNIQUE (comment_id);


--
-- TOC entry 3578 (class 2606 OID 48957)
-- Name: employee_job_info uniq_dc7a16d18c03f15c; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_job_info
    ADD CONSTRAINT uniq_dc7a16d18c03f15c UNIQUE (employee_id);


--
-- TOC entry 3580 (class 2606 OID 48955)
-- Name: employee_job_info uniq_dc7a16d1bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_job_info
    ADD CONSTRAINT uniq_dc7a16d1bf396750 UNIQUE (id);


--
-- TOC entry 3632 (class 2606 OID 49196)
-- Name: attendance_agreements uniq_e15a1398bf396750; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements
    ADD CONSTRAINT uniq_e15a1398bf396750 UNIQUE (id);


--
-- TOC entry 3605 (class 2606 OID 49100)
-- Name: vacation_setting vacation_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.vacation_setting
    ADD CONSTRAINT vacation_setting_pkey PRIMARY KEY (id);


--
-- TOC entry 3673 (class 2606 OID 49371)
-- Name: vacation_type vacation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.vacation_type
    ADD CONSTRAINT vacation_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3635 (class 1259 OID 49204)
-- Name: idx_149c061e24890b2b; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_149c061e24890b2b ON public.attendance_agreements_details USING btree (agreement_id);


--
-- TOC entry 3642 (class 1259 OID 49221)
-- Name: idx_245a739224890b2b; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_245a739224890b2b ON public.attendance_agreement_employee_actions USING btree (agreement_id);


--
-- TOC entry 3643 (class 1259 OID 49222)
-- Name: idx_245a73928c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_245a73928c03f15c ON public.attendance_agreement_employee_actions USING btree (employee_id);


--
-- TOC entry 3703 (class 1259 OID 49472)
-- Name: idx_317043aa802e5b6; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_317043aa802e5b6 ON public.memo_attachment USING btree (memo_attachment_id);


--
-- TOC entry 3704 (class 1259 OID 49473)
-- Name: idx_317043ab4d32439; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_317043ab4d32439 ON public.memo_attachment USING btree (memo_id);


--
-- TOC entry 3705 (class 1259 OID 49474)
-- Name: idx_317043ad7df1668; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_317043ad7df1668 ON public.memo_attachment USING btree (file_name);


--
-- TOC entry 3718 (class 1259 OID 49497)
-- Name: idx_4a83d2c233d5f253; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_4a83d2c233d5f253 ON public.memo_recipient USING btree (memo_recipient_id);


--
-- TOC entry 3719 (class 1259 OID 49498)
-- Name: idx_4a83d2c2b4d32439; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_4a83d2c2b4d32439 ON public.memo_recipient USING btree (memo_id);


--
-- TOC entry 3648 (class 1259 OID 49244)
-- Name: idx_598ad31d3dca04d1; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_598ad31d3dca04d1 ON public.employee_os USING btree (os_id);


--
-- TOC entry 3649 (class 1259 OID 49243)
-- Name: idx_598ad31d8c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_598ad31d8c03f15c ON public.employee_os USING btree (employee_id);


--
-- TOC entry 3650 (class 1259 OID 49402)
-- Name: idx_598ad31dbe04ea9; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_598ad31dbe04ea9 ON public.employee_os USING btree (job_id);


--
-- TOC entry 3651 (class 1259 OID 49245)
-- Name: idx_598ad31dd60322ac; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_598ad31dd60322ac ON public.employee_os USING btree (role_id);


--
-- TOC entry 3564 (class 1259 OID 48908)
-- Name: idx_6a711cad60322ac; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_6a711cad60322ac ON public.permission_role USING btree (role_id);


--
-- TOC entry 3565 (class 1259 OID 48907)
-- Name: idx_6a711cafed90cca; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_6a711cafed90cca ON public.permission_role USING btree (permission_id);


--
-- TOC entry 3692 (class 1259 OID 49439)
-- Name: idx_6de30d915490be13; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_6de30d915490be13 ON public.attendance USING btree (employee_no);


--
-- TOC entry 3658 (class 1259 OID 49288)
-- Name: idx_70b2ca2accd7e912; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_70b2ca2accd7e912 ON public.menu_items USING btree (menu_id);


--
-- TOC entry 3659 (class 1259 OID 49289)
-- Name: idx_70b2ca2afed90cca; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_70b2ca2afed90cca ON public.menu_items USING btree (permission_id);


--
-- TOC entry 3583 (class 1259 OID 48972)
-- Name: idx_7758f4e8c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_7758f4e8c03f15c ON public.employee_addresses_info USING btree (employee_id);


--
-- TOC entry 3590 (class 1259 OID 48991)
-- Name: idx_7dd514968c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_7dd514968c03f15c ON public.employee_education_info USING btree (employee_id);


--
-- TOC entry 3622 (class 1259 OID 49167)
-- Name: idx_8d3e0d6b8c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_8d3e0d6b8c03f15c ON public.emp_vacation USING btree (employee_id);


--
-- TOC entry 3612 (class 1259 OID 49123)
-- Name: idx_9994d5718c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_9994d5718c03f15c ON public.emp_vac_balance USING btree (employee_id);


--
-- TOC entry 3615 (class 1259 OID 49145)
-- Name: idx_9bb080d08c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_9bb080d08c03f15c ON public.leave USING btree (employee_id);


--
-- TOC entry 3695 (class 1259 OID 49459)
-- Name: idx_ab4a902a22ef6d49; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_ab4a902a22ef6d49 ON public.memo USING btree (sender_os_id);


--
-- TOC entry 3696 (class 1259 OID 49458)
-- Name: idx_ab4a902a2b36786b; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_ab4a902a2b36786b ON public.memo USING btree (title);


--
-- TOC entry 3697 (class 1259 OID 49457)
-- Name: idx_ab4a902ab4d32439; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_ab4a902ab4d32439 ON public.memo USING btree (memo_id);


--
-- TOC entry 3698 (class 1259 OID 49460)
-- Name: idx_ab4a902af624b39d; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_ab4a902af624b39d ON public.memo USING btree (sender_id);


--
-- TOC entry 3595 (class 1259 OID 49011)
-- Name: idx_bd1ae0b58c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_bd1ae0b58c03f15c ON public.employee_contacts_info USING btree (employee_id);


--
-- TOC entry 3710 (class 1259 OID 49487)
-- Name: idx_daa1a49c22ef6d49; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_daa1a49c22ef6d49 ON public.memo_comments USING btree (sender_os_id);


--
-- TOC entry 3711 (class 1259 OID 49485)
-- Name: idx_daa1a49cb4d32439; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_daa1a49cb4d32439 ON public.memo_comments USING btree (memo_id);


--
-- TOC entry 3712 (class 1259 OID 49486)
-- Name: idx_daa1a49cf624b39d; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_daa1a49cf624b39d ON public.memo_comments USING btree (sender_id);


--
-- TOC entry 3713 (class 1259 OID 49484)
-- Name: idx_daa1a49cf8697d13; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_daa1a49cf8697d13 ON public.memo_comments USING btree (comment_id);


--
-- TOC entry 3576 (class 1259 OID 48953)
-- Name: idx_dc7a16d18c03f15c; Type: INDEX; Schema: public; Owner: gcc40
--

CREATE INDEX idx_dc7a16d18c03f15c ON public.employee_job_info USING btree (employee_id);


--
-- TOC entry 3733 (class 2606 OID 49209)
-- Name: attendance_agreements_details fk_149c061e24890b2b; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreements_details
    ADD CONSTRAINT fk_149c061e24890b2b FOREIGN KEY (agreement_id) REFERENCES public.attendance_agreements(id);


--
-- TOC entry 3734 (class 2606 OID 49225)
-- Name: attendance_agreement_employee_actions fk_245a739224890b2b; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreement_employee_actions
    ADD CONSTRAINT fk_245a739224890b2b FOREIGN KEY (agreement_id) REFERENCES public.attendance_agreements(id);


--
-- TOC entry 3735 (class 2606 OID 49230)
-- Name: attendance_agreement_employee_actions fk_245a73928c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance_agreement_employee_actions
    ADD CONSTRAINT fk_245a73928c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3736 (class 2606 OID 49253)
-- Name: employee_os fk_598ad31d3dca04d1; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os
    ADD CONSTRAINT fk_598ad31d3dca04d1 FOREIGN KEY (os_id) REFERENCES public.os(id);


--
-- TOC entry 3737 (class 2606 OID 49248)
-- Name: employee_os fk_598ad31d8c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os
    ADD CONSTRAINT fk_598ad31d8c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3738 (class 2606 OID 49397)
-- Name: employee_os fk_598ad31dbe04ea9; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os
    ADD CONSTRAINT fk_598ad31dbe04ea9 FOREIGN KEY (job_id) REFERENCES public.jobs(id);


--
-- TOC entry 3739 (class 2606 OID 49258)
-- Name: employee_os fk_598ad31dd60322ac; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_os
    ADD CONSTRAINT fk_598ad31dd60322ac FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3724 (class 2606 OID 48914)
-- Name: permission_role fk_6a711cad60322ac; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT fk_6a711cad60322ac FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3725 (class 2606 OID 48909)
-- Name: permission_role fk_6a711cafed90cca; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT fk_6a711cafed90cca FOREIGN KEY (permission_id) REFERENCES public.permissions(id);


--
-- TOC entry 3742 (class 2606 OID 49442)
-- Name: attendance fk_6de30d915490be13; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT fk_6de30d915490be13 FOREIGN KEY (employee_no) REFERENCES public.employee_basic_info(employee_no);


--
-- TOC entry 3740 (class 2606 OID 49292)
-- Name: menu_items fk_70b2ca2accd7e912; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT fk_70b2ca2accd7e912 FOREIGN KEY (menu_id) REFERENCES public.menus(id);


--
-- TOC entry 3741 (class 2606 OID 49297)
-- Name: menu_items fk_70b2ca2afed90cca; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT fk_70b2ca2afed90cca FOREIGN KEY (permission_id) REFERENCES public.permissions(id);


--
-- TOC entry 3727 (class 2606 OID 48977)
-- Name: employee_addresses_info fk_7758f4e8c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_addresses_info
    ADD CONSTRAINT fk_7758f4e8c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3728 (class 2606 OID 48994)
-- Name: employee_education_info fk_7dd514968c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_education_info
    ADD CONSTRAINT fk_7dd514968c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3732 (class 2606 OID 49170)
-- Name: emp_vacation fk_8d3e0d6b8c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vacation
    ADD CONSTRAINT fk_8d3e0d6b8c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3730 (class 2606 OID 49126)
-- Name: emp_vac_balance fk_9994d5718c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.emp_vac_balance
    ADD CONSTRAINT fk_9994d5718c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3731 (class 2606 OID 49148)
-- Name: leave fk_9bb080d08c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.leave
    ADD CONSTRAINT fk_9bb080d08c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3729 (class 2606 OID 49016)
-- Name: employee_contacts_info fk_bd1ae0b58c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_contacts_info
    ADD CONSTRAINT fk_bd1ae0b58c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


--
-- TOC entry 3726 (class 2606 OID 48958)
-- Name: employee_job_info fk_dc7a16d18c03f15c; Type: FK CONSTRAINT; Schema: public; Owner: gcc40
--

ALTER TABLE ONLY public.employee_job_info
    ADD CONSTRAINT fk_dc7a16d18c03f15c FOREIGN KEY (employee_id) REFERENCES public.employee_basic_info(id);


-- Completed on 2023-11-29 10:49:39 UTC

--
-- PostgreSQL database dump complete
--

