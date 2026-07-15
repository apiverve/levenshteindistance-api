declare module '@apiverve/levenshteindistance' {
  export interface levenshteindistanceOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface levenshteindistanceResponse {
    status: string;
    error: string | null;
    data: LevenshteinDistanceData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface LevenshteinDistanceData {
      distance:      number | null;
      similarity:    number | null;
      matchLevel:    null | string;
      string1Length: number | null;
      string2Length: number | null;
      string1:       null | string;
      string2:       null | string;
  }

  export default class levenshteindistanceWrapper {
    constructor(options: levenshteindistanceOptions);

    execute(callback: (error: any, data: levenshteindistanceResponse | null) => void): Promise<levenshteindistanceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: levenshteindistanceResponse | null) => void): Promise<levenshteindistanceResponse>;
    execute(query?: Record<string, any>): Promise<levenshteindistanceResponse>;
  }
}
